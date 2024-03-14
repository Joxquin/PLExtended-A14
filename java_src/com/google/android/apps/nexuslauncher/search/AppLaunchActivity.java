package com.google.android.apps.nexuslauncher.search;

import Y1.A;
import Y1.z;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.LauncherApps;
import android.net.Uri;
import android.os.Bundle;
import android.os.Process;
import android.os.UserHandle;
import android.text.TextUtils;
import android.widget.Toast;
import c2.C0325a;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.PackageManagerHelper;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import java.net.URISyntaxException;
/* loaded from: classes.dex */
public class AppLaunchActivity extends BaseActivity {
    @Override // com.android.launcher3.views.ActivityContext
    public final BaseDragLayer getDragLayer() {
        throw new UnsupportedOperationException();
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mDeviceProfile = LauncherAppState.getIDP(this).getDeviceProfile(this);
        Uri data = getIntent().getData();
        if (data != null) {
            try {
                ComponentKey a4 = C0325a.a(data);
                if (a4 != null) {
                    UserHandle userHandle = a4.user;
                    ComponentName componentName = a4.componentName;
                    if ("deepshortcut".equals(data.getQueryParameter("iconType"))) {
                        String queryParameter = data.getQueryParameter("deepshortcut_id");
                        ((LauncherApps) getSystemService(LauncherApps.class)).startShortcut(componentName.getPackageName(), queryParameter, getIntent().getSourceBounds(), null, a4.user);
                    } else {
                        int i4 = A.f2273e;
                        z zVar = new z(a4, "true".equals(data.getQueryParameter("isDisabled")), data);
                        if (!getPackageManager().isSafeMode() || PackageManagerHelper.isSystemApp(this, zVar.intent)) {
                            if (userHandle.equals(Process.myUserHandle())) {
                                startActivity(zVar.intent);
                            } else {
                                ((LauncherApps) getSystemService(LauncherApps.class)).startMainActivity(componentName, userHandle, getIntent().getSourceBounds(), null);
                            }
                            getStatsLogManager().logger().withItemInfo(zVar).log(StatsLogManager.LauncherEvent.LAUNCHER_APP_LAUNCH_TAP);
                        } else {
                            Toast.makeText(this, (int) R.string.safemode_shortcut_error, 0).show();
                        }
                    }
                }
            } catch (Exception unused) {
                Toast.makeText(this, (int) R.string.activity_not_found, 0).show();
            }
        } else {
            String stringExtra = getIntent().getStringExtra("query");
            if (!TextUtils.isEmpty(stringExtra)) {
                try {
                    Intent parseUri = Intent.parseUri(getString(R.string.market_search_intent), 0);
                    if (!TextUtils.isEmpty(stringExtra)) {
                        parseUri.setData(parseUri.getData().buildUpon().appendQueryParameter("q", stringExtra).build());
                    }
                    startActivity(parseUri);
                } catch (URISyntaxException e4) {
                    throw new RuntimeException(e4);
                }
            }
        }
        finish();
    }
}
