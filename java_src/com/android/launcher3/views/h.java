package com.android.launcher3.views;
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5341d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ArrowTipView f5342e;

    public /* synthetic */ h(ArrowTipView arrowTipView, int i4) {
        this.f5341d = i4;
        this.f5342e = arrowTipView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5341d) {
            case 0:
                ArrowTipView.a(this.f5342e);
                return;
            case 1:
                this.f5342e.handleClose(true);
                return;
            default:
                this.f5342e.handleClose(true);
                return;
        }
    }
}
