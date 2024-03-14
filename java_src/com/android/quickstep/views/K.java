package com.android.quickstep.views;

import com.android.quickstep.views.RecentsView;
/* loaded from: classes.dex */
public final /* synthetic */ class K implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5932d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RecentsView.PinnedStackAnimationListener f5933e;

    public /* synthetic */ K(RecentsView.PinnedStackAnimationListener pinnedStackAnimationListener, int i4) {
        this.f5932d = i4;
        this.f5933e = pinnedStackAnimationListener;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5932d) {
            case 0:
                RecentsView.PinnedStackAnimationListener.b(this.f5933e);
                return;
            default:
                RecentsView.PinnedStackAnimationListener.a(this.f5933e);
                return;
        }
    }
}
