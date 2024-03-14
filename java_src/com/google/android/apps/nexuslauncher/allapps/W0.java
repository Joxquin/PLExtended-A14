package com.google.android.apps.nexuslauncher.allapps;

import android.text.TextUtils;
import java.util.Locale;
/* loaded from: classes.dex */
public final class W0 {
    public static boolean a(String str, String str2) {
        return (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && str2.matches("^[\\x00-\\x7F]*$")) && str2.startsWith(str.toLowerCase(Locale.getDefault()));
    }

    public static String b(String str) {
        return str == null ? "" : str.toLowerCase(Locale.getDefault());
    }
}
