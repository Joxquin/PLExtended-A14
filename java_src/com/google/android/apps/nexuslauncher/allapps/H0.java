package com.google.android.apps.nexuslauncher.allapps;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import com.android.launcher3.model.data.ItemInfo;
/* loaded from: classes.dex */
public final /* synthetic */ class H0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6571d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ String f6572e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f6573f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Object f6574g;

    public /* synthetic */ H0(Object obj, Object obj2, String str, int i4) {
        this.f6571d = i4;
        this.f6573f = obj;
        this.f6574g = obj2;
        this.f6572e = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6571d) {
            case 0:
                T0 t02 = (T0) this.f6573f;
                View view = (View) this.f6574g;
                String str = this.f6572e;
                t02.getClass();
                t02.f6871d.startActivitySafely(view, new Intent("android.intent.action.VIEW", Uri.parse(str)).setFlags(268435456), (ItemInfo) view.getTag());
                return;
            case 1:
                Intent intent = (Intent) this.f6574g;
                ((Q0) this.f6573f).f6693h.f6871d.startActivitySafely(null, intent, C0649g1.t(intent, this.f6572e));
                return;
            case 2:
                View view2 = (View) this.f6574g;
                ((Q0) this.f6573f).f6693h.f6871d.startActivitySafely(view2, new Intent("android.intent.action.VIEW", Uri.parse(this.f6572e)).setFlags(268435456), (ItemInfo) view2.getTag());
                return;
            default:
                View view3 = (View) this.f6574g;
                ((Q0) this.f6573f).f6693h.f6871d.startActivitySafely(view3, new Intent("android.intent.action.VIEW", Uri.parse(this.f6572e)).setFlags(268435456), (ItemInfo) view3.getTag());
                return;
        }
    }
}
