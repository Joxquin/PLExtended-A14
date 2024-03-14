package com.android.quickstep.views;
/* loaded from: classes.dex */
public final /* synthetic */ class B implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5912d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RecentsView f5913e;

    public /* synthetic */ B(RecentsView recentsView, int i4) {
        this.f5912d = i4;
        this.f5913e = recentsView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5912d) {
            case 0:
                RecentsView.r(this.f5913e);
                return;
            case 1:
                this.f5913e.updateCurveProperties();
                return;
            case 2:
                RecentsView.L(this.f5913e);
                return;
            case 3:
                RecentsView.X(this.f5913e);
                return;
            case 4:
                RecentsView.H(this.f5913e);
                return;
            default:
                this.f5913e.redrawLiveTile();
                return;
        }
    }
}
