package com.google.android.apps.nexuslauncher.allapps;

import android.os.IBinder;
/* loaded from: classes.dex */
public final /* synthetic */ class R2 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6700d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TileLifeCycle f6701e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f6702f;

    public /* synthetic */ R2(TileLifeCycle tileLifeCycle, Object obj, int i4) {
        this.f6700d = i4;
        this.f6701e = tileLifeCycle;
        this.f6702f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6700d) {
            case 0:
                TileLifeCycle.c(this.f6701e, (J2.c) this.f6702f);
                return;
            default:
                TileLifeCycle.d(this.f6701e, (IBinder) this.f6702f);
                return;
        }
    }
}
