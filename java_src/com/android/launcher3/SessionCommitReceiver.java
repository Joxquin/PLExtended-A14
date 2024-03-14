package com.android.launcher3;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInstaller;
import android.os.UserHandle;
import android.text.TextUtils;
import com.android.launcher3.logging.FileLog;
import com.android.launcher3.model.ItemInstallQueue;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.util.Executors;
import java.util.Locale;
/* loaded from: classes.dex */
public class SessionCommitReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    public static final /* synthetic */ int f4494a = 0;

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, final Intent intent) {
        Executors.MODEL_EXECUTOR.execute(new Runnable() { // from class: com.android.launcher3.M0
            @Override // java.lang.Runnable
            public final void run() {
                Context context2 = context;
                Intent intent2 = intent;
                int i4 = SessionCommitReceiver.f4494a;
                if (LauncherPrefs.getPrefs(context2).getBoolean("pref_add_icon_to_home", true)) {
                    PackageInstaller.SessionInfo sessionInfo = (PackageInstaller.SessionInfo) intent2.getParcelableExtra("android.content.pm.extra.SESSION");
                    UserHandle userHandle = (UserHandle) intent2.getParcelableExtra("android.intent.extra.USER");
                    if (!"android.content.pm.action.SESSION_COMMITTED".equals(intent2.getAction()) || sessionInfo == null || userHandle == null) {
                        return;
                    }
                    InstallSessionHelper installSessionHelper = (InstallSessionHelper) InstallSessionHelper.INSTANCE.get(context2);
                    boolean promiseIconAddedForId = installSessionHelper.promiseIconAddedForId(sessionInfo.getSessionId());
                    if (TextUtils.isEmpty(sessionInfo.getAppPackageName()) || sessionInfo.getInstallReason() != 4 || promiseIconAddedForId) {
                        FileLog.d("SessionCommitReceiver", String.format(Locale.ENGLISH, "Removing PromiseIcon for package: %s, install reason: %d, alreadyAddedPromiseIcon: %s", sessionInfo.getAppPackageName(), Integer.valueOf(sessionInfo.getInstallReason()), Boolean.valueOf(promiseIconAddedForId)));
                        installSessionHelper.removePromiseIconId(sessionInfo.getSessionId());
                        return;
                    }
                    StringBuilder sb = new StringBuilder("Adding package name to install queue. Package name: ");
                    sb.append(sessionInfo.getAppPackageName());
                    sb.append(", has app icon: ");
                    sb.append(sessionInfo.getAppIcon() != null);
                    sb.append(", has app label: ");
                    sb.append(true ^ TextUtils.isEmpty(sessionInfo.getAppLabel()));
                    FileLog.d("SessionCommitReceiver", sb.toString());
                    ((ItemInstallQueue) ItemInstallQueue.INSTANCE.get(context2)).queueItem(sessionInfo.getAppPackageName(), userHandle);
                }
            }
        });
    }
}
