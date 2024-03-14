package com.android.launcher3.pm;

import android.content.ComponentName;
import android.content.pm.PackageInstaller;
import android.os.UserHandle;
/* loaded from: classes.dex */
public final class PackageInstallInfo {
    public final ComponentName componentName;
    public final String packageName;
    public final int progress;
    public final int state;
    public final UserHandle user;

    private PackageInstallInfo(PackageInstaller.SessionInfo sessionInfo) {
        this.state = 1;
        String appPackageName = sessionInfo.getAppPackageName();
        this.packageName = appPackageName;
        this.componentName = new ComponentName(appPackageName, "");
        this.progress = (int) (sessionInfo.getProgress() * 100.0f);
        this.user = InstallSessionHelper.getUserHandle(sessionInfo);
    }

    public static PackageInstallInfo fromInstallingState(PackageInstaller.SessionInfo sessionInfo) {
        return new PackageInstallInfo(sessionInfo);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PackageInstallInfo(");
        StringBuilder sb2 = new StringBuilder("componentName=");
        sb2.append(this.componentName);
        sb2.append("packageName=");
        sb2.append(this.packageName);
        sb2.append(" state=");
        int i4 = this.state;
        sb2.append(i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? "INVALID STATE" : "STATUS_FAILED" : "STATUS_INSTALLED_DOWNLOADING" : "STATUS_INSTALLING" : "STATUS_INSTALLED");
        sb2.append(" progress=");
        sb2.append(this.progress);
        sb2.append(" user=");
        sb2.append(this.user);
        sb.append(sb2.toString());
        sb.append(")");
        return sb.toString();
    }

    public PackageInstallInfo(String str, int i4, int i5, UserHandle userHandle) {
        this.state = i4;
        this.packageName = str;
        this.componentName = new ComponentName(str, "");
        this.progress = i5;
        this.user = userHandle;
    }
}
