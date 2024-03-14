package com.google.android.apps.nexuslauncher;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.android.launcher3.Launcher;
/* loaded from: classes.dex */
public class EduStarterActivity extends Activity {
    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        startActivity(new Intent().addCategory("android.intent.category.HOME").setPackage(getPackageName()).setFlags(268435456));
        Launcher.ACTIVITY_TRACKER.registerCallback(new a(getIntent().getAction()));
        finish();
    }
}
