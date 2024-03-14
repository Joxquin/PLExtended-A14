package com.android.launcher3.model;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.os.LocaleList;
import android.os.UserHandle;
import android.util.Log;
import com.android.launcher3.AppFilter;
import com.android.launcher3.compat.AlphabeticIndexCompat;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.pm.PackageInstallInfo;
import com.android.launcher3.util.FlagOp;
import com.android.launcher3.util.PackageManagerHelper;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final class AllAppsList {
    private static final C0355b NO_OP_CONSUMER = new C0355b();

    /* renamed from: a */
    public static final /* synthetic */ int f4705a = 0;
    private AppFilter mAppFilter;
    private int mFlags;
    private IconCache mIconCache;
    public final ArrayList data = new ArrayList(42);
    private boolean mDataChanged = false;
    private Consumer mRemoveListener = NO_OP_CONSUMER;
    private AlphabeticIndexCompat mIndex = new AlphabeticIndexCompat(LocaleList.getDefault());

    public AllAppsList(IconCache iconCache, AppFilter appFilter) {
        this.mIconCache = iconCache;
        this.mAppFilter = appFilter;
    }

    private void removeApp(int i4) {
        AppInfo appInfo = (AppInfo) this.data.remove(i4);
        if (appInfo != null) {
            this.mDataChanged = true;
            this.mRemoveListener.accept(appInfo);
        }
    }

    public final void add(AppInfo appInfo, LauncherActivityInfo launcherActivityInfo, boolean z4) {
        if (this.mAppFilter.shouldShowApp(appInfo.componentName) && findAppInfo(appInfo.componentName, appInfo.user) == null) {
            if (z4) {
                this.mIconCache.getTitleAndIcon(appInfo, launcherActivityInfo, false);
                appInfo.sectionName = this.mIndex.computeSectionName(appInfo.title);
            } else {
                appInfo.title = "";
            }
            this.data.add(appInfo);
            this.mDataChanged = true;
        }
    }

    public final AppInfo addPromiseApp(Context context, PackageInstallInfo packageInstallInfo, boolean z4) {
        if (new PackageManagerHelper(context).getApplicationInfo(0, packageInstallInfo.user, packageInstallInfo.packageName) != null) {
            return null;
        }
        AppInfo appInfo = new AppInfo(packageInstallInfo);
        if (z4) {
            this.mIconCache.getTitleAndIcon(appInfo, appInfo.usingLowResIcon());
            appInfo.sectionName = this.mIndex.computeSectionName(appInfo.title);
        } else {
            appInfo.title = "";
        }
        this.data.add(appInfo);
        this.mDataChanged = true;
        return appInfo;
    }

    public final void clear() {
        this.data.clear();
        this.mDataChanged = false;
        this.mIndex = new AlphabeticIndexCompat(LocaleList.getDefault());
    }

    public final AppInfo findAppInfo(ComponentName componentName, UserHandle userHandle) {
        Iterator it = this.data.iterator();
        while (it.hasNext()) {
            AppInfo appInfo = (AppInfo) it.next();
            if (componentName.equals(appInfo.componentName) && userHandle.equals(appInfo.user)) {
                return appInfo;
            }
        }
        return null;
    }

    public final boolean getAndResetChangeFlag() {
        boolean z4 = this.mDataChanged;
        this.mDataChanged = false;
        return z4;
    }

    public final int getFlags() {
        return this.mFlags;
    }

    public final boolean hasShortcutHostPermission() {
        return (this.mFlags & 1) != 0;
    }

    public final void removePackage(String str, UserHandle userHandle) {
        ArrayList arrayList = this.data;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            AppInfo appInfo = (AppInfo) arrayList.get(size);
            if (appInfo.user.equals(userHandle) && str.equals(appInfo.componentName.getPackageName())) {
                removeApp(size);
            }
        }
    }

    public final void setFlags(int i4, boolean z4) {
        if (z4) {
            this.mFlags = i4 | this.mFlags;
        } else {
            this.mFlags = (~i4) & this.mFlags;
        }
        this.mDataChanged = true;
    }

    public final C0353a trackRemoves(F0 f02) {
        this.mRemoveListener = f02;
        return new C0353a(this);
    }

    public final void updateDisabledFlags(Predicate predicate, FlagOp flagOp) {
        ArrayList arrayList = this.data;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            AppInfo appInfo = (AppInfo) arrayList.get(size);
            if (predicate.test(appInfo)) {
                appInfo.runtimeStatusFlags = flagOp.apply(appInfo.runtimeStatusFlags);
                this.mDataChanged = true;
            }
        }
    }

    public final void updateIconsAndLabels(UserHandle userHandle, HashSet hashSet) {
        Iterator it = this.data.iterator();
        while (it.hasNext()) {
            AppInfo appInfo = (AppInfo) it.next();
            if (appInfo.user.equals(userHandle) && hashSet.contains(appInfo.componentName.getPackageName())) {
                this.mIconCache.updateTitleAndIcon(appInfo);
                appInfo.sectionName = this.mIndex.computeSectionName(appInfo.title);
                this.mDataChanged = true;
            }
        }
    }

    public final List updatePackage(Context context, UserHandle userHandle, String str) {
        List<LauncherActivityInfo> activityList = ((LauncherApps) context.getSystemService(LauncherApps.class)).getActivityList(str, userHandle);
        int size = activityList.size();
        ArrayList arrayList = this.data;
        if (size > 0) {
            int size2 = arrayList.size() - 1;
            while (true) {
                boolean z4 = false;
                if (size2 < 0) {
                    break;
                }
                AppInfo appInfo = (AppInfo) arrayList.get(size2);
                if (userHandle.equals(appInfo.user) && str.equals(appInfo.componentName.getPackageName())) {
                    ComponentName componentName = appInfo.componentName;
                    Iterator<LauncherActivityInfo> it = activityList.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            if (it.next().getComponentName().equals(componentName)) {
                                z4 = true;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    if (!z4) {
                        Log.w("AllAppsList", "Changing shortcut target due to app component name change.");
                        removeApp(size2);
                    }
                }
                size2--;
            }
            for (LauncherActivityInfo launcherActivityInfo : activityList) {
                AppInfo findAppInfo = findAppInfo(launcherActivityInfo.getComponentName(), userHandle);
                if (findAppInfo == null) {
                    add(new AppInfo(context, launcherActivityInfo, userHandle), launcherActivityInfo, true);
                } else {
                    AppInfo[] appInfoArr = AppInfo.EMPTY_ARRAY;
                    Intent makeLaunchIntent = AppInfo.makeLaunchIntent(launcherActivityInfo.getComponentName());
                    this.mIconCache.getTitleAndIcon(findAppInfo, launcherActivityInfo, false);
                    findAppInfo.sectionName = this.mIndex.computeSectionName(findAppInfo.title);
                    findAppInfo.setProgressLevel(PackageManagerHelper.getLoadingProgress(launcherActivityInfo), 2);
                    findAppInfo.intent = makeLaunchIntent;
                    this.mDataChanged = true;
                }
            }
        } else {
            for (int size3 = arrayList.size() - 1; size3 >= 0; size3--) {
                AppInfo appInfo2 = (AppInfo) arrayList.get(size3);
                if (userHandle.equals(appInfo2.user) && str.equals(appInfo2.componentName.getPackageName())) {
                    this.mIconCache.remove(appInfo2.componentName, userHandle);
                    removeApp(size3);
                }
            }
        }
        return activityList;
    }

    public final List updatePromiseInstallInfo(PackageInstallInfo packageInstallInfo) {
        ArrayList arrayList = new ArrayList();
        UserHandle userHandle = packageInstallInfo.user;
        ArrayList arrayList2 = this.data;
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            AppInfo appInfo = (AppInfo) arrayList2.get(size);
            ComponentName targetComponent = appInfo.getTargetComponent();
            if (targetComponent != null && targetComponent.getPackageName().equals(packageInstallInfo.packageName) && appInfo.user.equals(userHandle)) {
                int i4 = packageInstallInfo.state;
                if (i4 == 2 || i4 == 1) {
                    if (!appInfo.isAppStartable() || i4 != 1) {
                        appInfo.setProgressLevel(packageInstallInfo);
                        arrayList.add(appInfo);
                    }
                } else if (i4 == 3 && !appInfo.isAppStartable()) {
                    removeApp(size);
                }
            }
        }
        return arrayList;
    }

    public final void updateSectionName(AppInfo appInfo) {
        appInfo.sectionName = this.mIndex.computeSectionName(appInfo.title);
    }
}
