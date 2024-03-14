package com.google.android.apps.nexuslauncher.allapps;

import android.content.Intent;
/* loaded from: classes.dex */
public final /* synthetic */ class J0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6596d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ T0 f6597e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Intent f6598f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ String f6599g;

    public /* synthetic */ J0(T0 t02, Intent intent, String str, int i4) {
        this.f6596d = i4;
        this.f6597e = t02;
        this.f6598f = intent;
        this.f6599g = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6596d) {
            case 0:
                T0 t02 = this.f6597e;
                Intent intent = this.f6598f;
                String str = this.f6599g;
                t02.getClass();
                t02.f6871d.startActivitySafely(null, intent, C0649g1.t(intent, str));
                return;
            default:
                T0 t03 = this.f6597e;
                Intent intent2 = this.f6598f;
                String str2 = this.f6599g;
                t03.getClass();
                t03.f6871d.startActivitySafely(null, intent2, C0649g1.t(intent2, str2));
                return;
        }
    }
}
