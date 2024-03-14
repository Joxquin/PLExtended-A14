package com.android.launcher3.pm;

import R0.b;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInstaller;
import android.os.UserHandle;
import android.util.SparseArray;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.PackageUserKey;
import java.lang.ref.WeakReference;
import java.util.Objects;
/* loaded from: classes.dex */
public final class InstallSessionTracker extends PackageInstaller.SessionCallback {
    private SparseArray mActiveSessions = null;
    private final LauncherApps mLauncherApps;
    private final WeakReference mWeakCallback;
    private final WeakReference mWeakHelper;

    /* loaded from: classes.dex */
    public interface Callback {
        void onInstallSessionCreated(PackageInstallInfo packageInstallInfo);

        void onPackageStateChanged(PackageInstallInfo packageInstallInfo);

        void onSessionFailure(String str, UserHandle userHandle);

        void onUpdateSessionDisplay(PackageUserKey packageUserKey, PackageInstaller.SessionInfo sessionInfo);
    }

    public InstallSessionTracker(InstallSessionHelper installSessionHelper, LauncherModel launcherModel, PackageInstaller packageInstaller, LauncherApps launcherApps) {
        this.mWeakHelper = new WeakReference(installSessionHelper);
        this.mWeakCallback = new WeakReference(launcherModel);
        this.mLauncherApps = launcherApps;
    }

    private PackageInstaller.SessionInfo pushSessionDisplayToLauncher(int i4, InstallSessionHelper installSessionHelper, Callback callback) {
        PackageInstaller.SessionInfo verifiedSessionInfo = installSessionHelper.getVerifiedSessionInfo(i4);
        if (verifiedSessionInfo == null || verifiedSessionInfo.getAppPackageName() == null) {
            return null;
        }
        PackageUserKey packageUserKey = new PackageUserKey(verifiedSessionInfo.getAppPackageName(), InstallSessionHelper.getUserHandle(verifiedSessionInfo));
        if (this.mActiveSessions == null) {
            this.mActiveSessions = new SparseArray();
            installSessionHelper.getActiveSessions().forEach(new b(this));
        }
        this.mActiveSessions.put(verifiedSessionInfo.getSessionId(), packageUserKey);
        callback.onUpdateSessionDisplay(packageUserKey, verifiedSessionInfo);
        return verifiedSessionInfo;
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onActiveChanged(int i4, boolean z4) {
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onBadgingChanged(int i4) {
        PackageInstaller.SessionInfo pushSessionDisplayToLauncher;
        InstallSessionHelper installSessionHelper = (InstallSessionHelper) this.mWeakHelper.get();
        Callback callback = (Callback) this.mWeakCallback.get();
        if (callback == null || installSessionHelper == null || (pushSessionDisplayToLauncher = pushSessionDisplayToLauncher(i4, installSessionHelper, callback)) == null) {
            return;
        }
        installSessionHelper.tryQueuePromiseAppIcon(pushSessionDisplayToLauncher);
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onCreated(int i4) {
        InstallSessionHelper installSessionHelper = (InstallSessionHelper) this.mWeakHelper.get();
        Callback callback = (Callback) this.mWeakCallback.get();
        if (callback == null || installSessionHelper == null) {
            return;
        }
        PackageInstaller.SessionInfo pushSessionDisplayToLauncher = pushSessionDisplayToLauncher(i4, installSessionHelper, callback);
        if (pushSessionDisplayToLauncher != null) {
            callback.onInstallSessionCreated(PackageInstallInfo.fromInstallingState(pushSessionDisplayToLauncher));
        }
        installSessionHelper.tryQueuePromiseAppIcon(pushSessionDisplayToLauncher);
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onFinished(int i4, boolean z4) {
        String str;
        InstallSessionHelper installSessionHelper = (InstallSessionHelper) this.mWeakHelper.get();
        Callback callback = (Callback) this.mWeakCallback.get();
        if (callback == null || installSessionHelper == null) {
            return;
        }
        if (this.mActiveSessions == null) {
            this.mActiveSessions = new SparseArray();
            installSessionHelper.getActiveSessions().forEach(new b(this));
        }
        SparseArray sparseArray = this.mActiveSessions;
        PackageUserKey packageUserKey = (PackageUserKey) sparseArray.get(i4);
        sparseArray.remove(i4);
        if (packageUserKey == null || (str = packageUserKey.mPackageName) == null) {
            return;
        }
        callback.onPackageStateChanged(new PackageInstallInfo(str, z4 ? 0 : 3, 0, packageUserKey.mUser));
        if (z4 || !installSessionHelper.promiseIconAddedForId(i4)) {
            return;
        }
        callback.onSessionFailure(str, packageUserKey.mUser);
        installSessionHelper.removePromiseIconId(i4);
    }

    @Override // android.content.pm.PackageInstaller.SessionCallback
    public final void onProgressChanged(int i4, float f4) {
        PackageInstaller.SessionInfo verifiedSessionInfo;
        InstallSessionHelper installSessionHelper = (InstallSessionHelper) this.mWeakHelper.get();
        Callback callback = (Callback) this.mWeakCallback.get();
        if (callback == null || installSessionHelper == null || (verifiedSessionInfo = installSessionHelper.getVerifiedSessionInfo(i4)) == null || verifiedSessionInfo.getAppPackageName() == null) {
            return;
        }
        callback.onPackageStateChanged(PackageInstallInfo.fromInstallingState(verifiedSessionInfo));
    }

    public final void register() {
        LauncherApps launcherApps = this.mLauncherApps;
        Objects.requireNonNull(launcherApps);
        launcherApps.registerPackageInstallerSessionCallback(Executors.MODEL_EXECUTOR, this);
    }

    public final void unregister() {
        LauncherApps launcherApps = this.mLauncherApps;
        Objects.requireNonNull(launcherApps);
        launcherApps.unregisterPackageInstallerSessionCallback(this);
    }
}
