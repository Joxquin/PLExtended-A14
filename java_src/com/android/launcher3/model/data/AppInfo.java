package com.android.launcher3.model.data;

import O0.a;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.LauncherActivityInfo;
import android.os.Process;
import android.os.UserHandle;
import android.os.UserManager;
import com.android.launcher3.Utilities;
import com.android.launcher3.pm.PackageInstallInfo;
import com.android.launcher3.util.PackageManagerHelper;
/* loaded from: classes.dex */
public class AppInfo extends ItemInfoWithIcon implements WorkspaceItemFactory {
    public ComponentName componentName;
    public Intent intent;
    public String sectionName;
    public int uid;
    public static final AppInfo[] EMPTY_ARRAY = new AppInfo[0];
    public static final a COMPONENT_KEY_COMPARATOR = new a();

    public AppInfo() {
        this.sectionName = "";
        this.uid = -1;
        this.itemType = 0;
    }

    public static Intent makeLaunchIntent(ComponentName componentName) {
        return new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(componentName).setFlags(270532608);
    }

    public static void updateRuntimeFlagsForActivityTarget(ItemInfoWithIcon itemInfoWithIcon, LauncherActivityInfo launcherActivityInfo) {
        ApplicationInfo applicationInfo = launcherActivityInfo.getApplicationInfo();
        int i4 = applicationInfo.flags;
        if ((1073741824 & i4) != 0) {
            itemInfoWithIcon.runtimeStatusFlags |= 4;
        }
        itemInfoWithIcon.runtimeStatusFlags = ((i4 & 1) == 0 ? 128 : 64) | itemInfoWithIcon.runtimeStatusFlags;
        if (applicationInfo.targetSdkVersion >= 26 && Process.myUserHandle().equals(launcherActivityInfo.getUser())) {
            itemInfoWithIcon.runtimeStatusFlags |= 256;
        }
        itemInfoWithIcon.setProgressLevel(PackageManagerHelper.getLoadingProgress(launcherActivityInfo), 2);
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    public final ItemInfoWithIcon clone() {
        return new AppInfo(this);
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final String dumpProperties() {
        return super.dumpProperties() + " componentName=" + this.componentName;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public final Intent getIntent() {
        return this.intent;
    }

    @Override // com.android.launcher3.model.data.ItemInfo
    public ComponentName getTargetComponent() {
        return this.componentName;
    }

    public WorkspaceItemInfo makeWorkspaceItem(Context context) {
        WorkspaceItemInfo workspaceItemInfo = new WorkspaceItemInfo(this);
        int i4 = this.runtimeStatusFlags;
        if ((i4 & 1024) != 0) {
            workspaceItemInfo.status = workspaceItemInfo.status | 2 | 4 | 1024;
        }
        if ((i4 & 2048) != 0) {
            workspaceItemInfo.runtimeStatusFlags |= 2048;
        }
        return workspaceItemInfo;
    }

    @Override // com.android.launcher3.model.data.ItemInfoWithIcon
    /* renamed from: clone */
    public final Object mo1clone() {
        return new AppInfo(this);
    }

    public AppInfo(Context context, LauncherActivityInfo launcherActivityInfo, UserHandle userHandle) {
        this(launcherActivityInfo, userHandle, ((UserManager) context.getSystemService(UserManager.class)).isQuietModeEnabled(userHandle));
    }

    public AppInfo(LauncherActivityInfo launcherActivityInfo, UserHandle userHandle, boolean z4) {
        this.sectionName = "";
        this.uid = -1;
        this.componentName = launcherActivityInfo.getComponentName();
        this.container = -104;
        this.user = userHandle;
        this.intent = makeLaunchIntent(launcherActivityInfo.getComponentName());
        if (z4) {
            this.runtimeStatusFlags |= 8;
        }
        this.uid = launcherActivityInfo.getApplicationInfo().uid;
        updateRuntimeFlagsForActivityTarget(this, launcherActivityInfo);
    }

    public AppInfo(AppInfo appInfo) {
        super(appInfo);
        this.sectionName = "";
        this.uid = -1;
        this.componentName = appInfo.componentName;
        this.title = Utilities.trim(appInfo.title);
        this.intent = new Intent(appInfo.intent);
        this.uid = appInfo.uid;
    }

    public AppInfo(ComponentName componentName, CharSequence charSequence, UserHandle userHandle, Intent intent) {
        this.sectionName = "";
        this.uid = -1;
        this.componentName = componentName;
        this.title = charSequence;
        this.user = userHandle;
        this.intent = intent;
    }

    public AppInfo(PackageInstallInfo packageInstallInfo) {
        this.sectionName = "";
        this.uid = -1;
        this.componentName = packageInstallInfo.componentName;
        this.intent = new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER").setComponent(this.componentName).setFlags(270532608);
        setProgressLevel(packageInstallInfo);
        this.user = packageInstallInfo.user;
    }
}
