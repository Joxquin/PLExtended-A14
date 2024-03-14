package a2;

import android.content.Intent;
import android.net.Uri;
/* renamed from: a2.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0163f {

    /* renamed from: a  reason: collision with root package name */
    public static final Intent f2401a;

    /* renamed from: b  reason: collision with root package name */
    public static final Intent f2402b;

    static {
        new Intent("android.intent.action.VIEW").setData(Uri.parse("https://g.co/pixeltips/tips_onesearch")).setPackage("com.google.android.apps.tips");
        f2401a = new Intent("android.intent.action.MAIN").setClassName("com.google.android.googlequicksearchbox", "com.google.android.googlequicksearchbox.SearchActivity").setFlags(268468224).putExtra("open_account_menu_on_start", true);
        f2402b = new Intent("android.settings.ASI_SEARCH_SETTINGS").setPackage("com.google.android.as").setFlags(268468224);
    }
}
