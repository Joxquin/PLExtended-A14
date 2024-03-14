package com.android.launcher3.pm;

import R0.a;
import android.content.Context;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInstaller;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.SessionCommitReceiver;
import com.android.launcher3.Utilities;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.ItemInstallQueue;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.IntSet;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.util.PackageUserKey;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
/* loaded from: classes.dex */
public final class InstallSessionHelper {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new a());
    private final Context mAppContext;
    private final PackageInstaller mInstaller;
    private final LauncherApps mLauncherApps;
    private IntSet mPromiseIconIds;
    private final HashMap mSessionVerifiedMap = new HashMap();

    public InstallSessionHelper(Context context) {
        this.mInstaller = context.getPackageManager().getPackageInstaller();
        this.mAppContext = context.getApplicationContext();
        this.mLauncherApps = (LauncherApps) context.getSystemService(LauncherApps.class);
    }

    private IntSet getPromiseIconIds() {
        IntSet intSet = this.mPromiseIconIds;
        if (intSet != null) {
            return intSet;
        }
        this.mPromiseIconIds = IntSet.wrap(IntArray.fromConcatString((String) LauncherPrefs.get(this.mAppContext).get(LauncherPrefs.PROMISE_ICON_IDS)));
        IntArray intArray = new IntArray();
        for (PackageInstaller.SessionInfo sessionInfo : getActiveSessions().values()) {
            intArray.add(sessionInfo.getSessionId());
        }
        IntArray intArray2 = new IntArray();
        for (int size = this.mPromiseIconIds.size() - 1; size >= 0; size--) {
            if (!intArray.contains(this.mPromiseIconIds.getArray().get(size))) {
                intArray2.add(this.mPromiseIconIds.getArray().get(size));
            }
        }
        for (int size2 = intArray2.size() - 1; size2 >= 0; size2--) {
            this.mPromiseIconIds.getArray().removeValue(intArray2.get(size2));
        }
        return this.mPromiseIconIds;
    }

    public static UserHandle getUserHandle(PackageInstaller.SessionInfo sessionInfo) {
        return Utilities.ATLEAST_Q ? sessionInfo.getUser() : Process.myUserHandle();
    }

    private PackageInstaller.SessionInfo verify(PackageInstaller.SessionInfo sessionInfo) {
        if (sessionInfo == null || sessionInfo.getInstallerPackageName() == null || TextUtils.isEmpty(sessionInfo.getAppPackageName()) || !isTrustedPackage(sessionInfo.getInstallerPackageName(), getUserHandle(sessionInfo))) {
            return null;
        }
        return sessionInfo;
    }

    public final PackageInstaller.SessionInfo getActiveSessionInfo(String str, UserHandle userHandle) {
        Iterator it = ((ArrayList) getAllVerifiedSessions()).iterator();
        while (it.hasNext()) {
            PackageInstaller.SessionInfo sessionInfo = (PackageInstaller.SessionInfo) it.next();
            boolean equals = str.equals(sessionInfo.getAppPackageName());
            if (Utilities.ATLEAST_Q && !userHandle.equals(getUserHandle(sessionInfo))) {
                equals = false;
                continue;
            }
            if (equals) {
                return sessionInfo;
            }
        }
        return null;
    }

    public final HashMap getActiveSessions() {
        HashMap hashMap = new HashMap();
        Iterator it = ((ArrayList) getAllVerifiedSessions()).iterator();
        while (it.hasNext()) {
            PackageInstaller.SessionInfo sessionInfo = (PackageInstaller.SessionInfo) it.next();
            hashMap.put(new PackageUserKey(sessionInfo.getAppPackageName(), getUserHandle(sessionInfo)), sessionInfo);
        }
        return hashMap;
    }

    public final List getAllVerifiedSessions() {
        List<PackageInstaller.SessionInfo> allSessions;
        if (Utilities.ATLEAST_Q) {
            LauncherApps launcherApps = this.mLauncherApps;
            Objects.requireNonNull(launcherApps);
            allSessions = launcherApps.getAllPackageInstallerSessions();
        } else {
            allSessions = this.mInstaller.getAllSessions();
        }
        ArrayList arrayList = new ArrayList(allSessions);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (verify((PackageInstaller.SessionInfo) it.next()) == null) {
                it.remove();
            }
        }
        return arrayList;
    }

    public final PackageInstaller.SessionInfo getVerifiedSessionInfo(int i4) {
        return verify(this.mInstaller.getSessionInfo(i4));
    }

    public final boolean isTrustedPackage(String str, UserHandle userHandle) {
        synchronized (this.mSessionVerifiedMap) {
            if (!this.mSessionVerifiedMap.containsKey(str)) {
                boolean z4 = true;
                if (!this.mAppContext.getPackageName().equals(str) && new PackageManagerHelper(this.mAppContext).getApplicationInfo(1, userHandle, str) == null) {
                    z4 = false;
                }
                this.mSessionVerifiedMap.put(str, Boolean.valueOf(z4));
            }
        }
        return ((Boolean) this.mSessionVerifiedMap.get(str)).booleanValue();
    }

    public final boolean promiseIconAddedForId(int i4) {
        return getPromiseIconIds().contains(i4);
    }

    public final InstallSessionTracker registerInstallTracker(LauncherModel launcherModel) {
        InstallSessionTracker installSessionTracker = new InstallSessionTracker(this, launcherModel, this.mInstaller, this.mLauncherApps);
        installSessionTracker.register();
        return installSessionTracker;
    }

    public final void removePromiseIconId(int i4) {
        if (promiseIconAddedForId(i4)) {
            getPromiseIconIds().getArray().removeValue(i4);
            LauncherPrefs.Companion companion = LauncherPrefs.Companion;
            LauncherPrefs.Companion.get(this.mAppContext).put(LauncherPrefs.PROMISE_ICON_IDS, getPromiseIconIds().getArray().toConcatString());
        }
    }

    public final void tryQueuePromiseAppIcon(PackageInstaller.SessionInfo sessionInfo) {
        int i4 = SessionCommitReceiver.f4494a;
        Context context = this.mAppContext;
        if (LauncherPrefs.getPrefs(context).getBoolean("pref_add_icon_to_home", true) && verifySessionInfo(sessionInfo) && !promiseIconAddedForId(sessionInfo.getSessionId())) {
            FileLog.d("InstallSessionHelper", "Adding package name to install queue: " + sessionInfo.getAppPackageName());
            ((ItemInstallQueue) ItemInstallQueue.INSTANCE.get(context)).queueItem(sessionInfo.getAppPackageName(), getUserHandle(sessionInfo));
            getPromiseIconIds().add(sessionInfo.getSessionId());
            LauncherPrefs.Companion.get(context).put(LauncherPrefs.PROMISE_ICON_IDS, getPromiseIconIds().getArray().toConcatString());
        }
    }

    public final boolean verifySessionInfo(PackageInstaller.SessionInfo sessionInfo) {
        if (verify(sessionInfo) == null || sessionInfo.getInstallReason() != 4 || sessionInfo.getAppIcon() == null || TextUtils.isEmpty(sessionInfo.getAppLabel())) {
            return false;
        }
        return !(new PackageManagerHelper(this.mAppContext).getApplicationInfo(0, getUserHandle(sessionInfo), sessionInfo.getAppPackageName()) != null);
    }
}
