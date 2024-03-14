package com.android.launcher3;
/* loaded from: classes.dex */
public final /* synthetic */ class z0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5418d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ PagedView f5419e;

    public /* synthetic */ z0(PagedView pagedView, int i4) {
        this.f5418d = i4;
        this.f5419e = pagedView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5418d) {
            case 0:
                this.f5419e.snapToDestination();
                return;
            case 1:
                this.f5419e.onNotSnappingToPageInFreeScroll();
                return;
            case 2:
                this.f5419e.snapToDestination();
                return;
            default:
                PagedView.c(this.f5419e);
                return;
        }
    }
}
