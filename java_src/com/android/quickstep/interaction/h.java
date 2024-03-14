package com.android.quickstep.interaction;
/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5678d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ EdgeBackGesturePanel f5679e;

    public /* synthetic */ h(EdgeBackGesturePanel edgeBackGesturePanel, int i4) {
        this.f5678d = i4;
        this.f5679e = edgeBackGesturePanel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5678d) {
            case 0:
                EdgeBackGesturePanel.a(this.f5679e);
                return;
            default:
                EdgeBackGesturePanel.b(this.f5679e);
                return;
        }
    }
}
