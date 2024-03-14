package j;

import android.view.MenuItem;
/* renamed from: j.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1088f implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C1090h f10515d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ MenuItem f10516e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C1097o f10517f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ C1089g f10518g;

    public RunnableC1088f(C1089g c1089g, C1090h c1090h, r rVar, C1097o c1097o) {
        this.f10518g = c1089g;
        this.f10515d = c1090h;
        this.f10516e = rVar;
        this.f10517f = c1097o;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1090h c1090h = this.f10515d;
        if (c1090h != null) {
            this.f10518g.f10519d.f10526D = true;
            c1090h.f10521b.c(false);
            this.f10518g.f10519d.f10526D = false;
        }
        if (this.f10516e.isEnabled() && this.f10516e.hasSubMenu()) {
            this.f10517f.q(this.f10516e, null, 4);
        }
    }
}
