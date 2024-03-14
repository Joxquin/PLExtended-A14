package com.android.launcher3;
/* renamed from: com.android.launcher3.b  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0329b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4571d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AppWidgetResizeFrame f4572e;

    public /* synthetic */ RunnableC0329b(AppWidgetResizeFrame appWidgetResizeFrame, int i4) {
        this.f4571d = i4;
        this.f4572e = appWidgetResizeFrame;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4571d) {
            case 0:
                AppWidgetResizeFrame.a(this.f4572e);
                return;
            case 1:
                AppWidgetResizeFrame.d(this.f4572e);
                return;
            default:
                AppWidgetResizeFrame.c(this.f4572e);
                return;
        }
    }
}
