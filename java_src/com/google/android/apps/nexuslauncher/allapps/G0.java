package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.Query;
/* loaded from: classes.dex */
public final /* synthetic */ class G0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6561d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ T0 f6562e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Query f6563f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ AbstractC0683p f6564g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ boolean f6565h;

    public /* synthetic */ G0(T0 t02, Query query, AbstractC0683p abstractC0683p, boolean z4, int i4) {
        this.f6561d = i4;
        this.f6562e = t02;
        this.f6563f = query;
        this.f6564g = abstractC0683p;
        this.f6565h = z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6561d) {
            case 0:
                this.f6562e.c(this.f6563f, this.f6564g, this.f6565h);
                return;
            default:
                this.f6562e.c(this.f6563f, this.f6564g, this.f6565h);
                return;
        }
    }
}
