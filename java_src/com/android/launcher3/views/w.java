package com.android.launcher3.views;
/* loaded from: classes.dex */
public final /* synthetic */ class w implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5376d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ StickyHeaderLayout f5377e;

    public /* synthetic */ w(StickyHeaderLayout stickyHeaderLayout, int i4) {
        this.f5376d = i4;
        this.f5377e = stickyHeaderLayout;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5376d) {
            case 0:
                StickyHeaderLayout.b(this.f5377e);
                return;
            default:
                StickyHeaderLayout.a(this.f5377e);
                return;
        }
    }
}
