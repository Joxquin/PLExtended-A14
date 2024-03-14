package com.google.android.apps.nexuslauncher.allapps;
/* loaded from: classes.dex */
public final /* synthetic */ class D implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6517d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f6518e;

    public /* synthetic */ D(int i4, Object obj) {
        this.f6517d = i4;
        this.f6518e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6517d) {
            case 0:
                F.a((F) this.f6518e);
                return;
            case 1:
                F.a((F) this.f6518e);
                return;
            default:
                ((L) this.f6518e).a(3);
                return;
        }
    }
}
