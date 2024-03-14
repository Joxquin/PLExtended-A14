package com.android.launcher3.widget.picker;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5385d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ WidgetsFullSheet f5386e;

    public /* synthetic */ b(WidgetsFullSheet widgetsFullSheet, int i4) {
        this.f5385d = i4;
        this.f5386e = widgetsFullSheet;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5385d) {
            case 0:
                WidgetsFullSheet.b(this.f5386e);
                return;
            case 1:
                WidgetsFullSheet widgetsFullSheet = this.f5386e;
                int i4 = WidgetsFullSheet.f5382d;
                widgetsFullSheet.announceAccessibilityChanges();
                return;
            default:
                WidgetsFullSheet.e(this.f5386e);
                return;
        }
    }
}
