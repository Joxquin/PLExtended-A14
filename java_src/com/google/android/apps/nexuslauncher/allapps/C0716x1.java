package com.google.android.apps.nexuslauncher.allapps;

import a2.C0163f;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.x1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0716x1 {
    public static boolean a(PackageManager packageManager) {
        if (com.google.android.apps.nexuslauncher.c.f7331t.get()) {
            Intent intent = C0163f.f2402b;
            ComponentName resolveActivity = intent.resolveActivity(packageManager);
            if (intent.resolveActivity(packageManager) == null) {
                return false;
            }
            return TextUtils.equals(resolveActivity.getPackageName(), "com.google.android.as");
        }
        return false;
    }

    public static void b(Context context, boolean z4) {
        context.startActivity(new Intent("android.intent.action.APPLICATION_PREFERENCES").setPackage(context.getPackageName()).putExtra(":settings:fragment_args_key", "search_settings").putExtra(":settings:from_qsb_key", z4).addFlags(268468224));
    }
}
