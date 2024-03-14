package com.android.launcher3.views;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5334d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AbstractSlideInView f5335e;

    public /* synthetic */ b(AbstractSlideInView abstractSlideInView, int i4) {
        this.f5334d = i4;
        this.f5335e = abstractSlideInView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5334d) {
            case 0:
                this.f5335e.onCloseComplete();
                return;
            default:
                this.f5335e.onScaleProgressChanged();
                return;
        }
    }
}
