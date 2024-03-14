package com.android.quickstep.views;

import com.android.quickstep.views.RecentsView;
/* loaded from: classes.dex */
public final /* synthetic */ class I implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5926d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f5927e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f5928f;

    public /* synthetic */ I(int i4, int i5, Object obj) {
        this.f5926d = i5;
        this.f5928f = obj;
        this.f5927e = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5926d) {
            case 0:
                RecentsView.AnonymousClass21.a((RecentsView.AnonymousClass21) this.f5928f, this.f5927e);
                return;
            default:
                RecentsView.P((RecentsView) this.f5928f, this.f5927e);
                return;
        }
    }
}
