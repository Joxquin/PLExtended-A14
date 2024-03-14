package com.android.quickstep.util;
/* renamed from: com.android.quickstep.util.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0563i implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5871d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AsyncClockEventDelegate f5872e;

    public /* synthetic */ RunnableC0563i(AsyncClockEventDelegate asyncClockEventDelegate, int i4) {
        this.f5871d = i4;
        this.f5872e = asyncClockEventDelegate;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5871d) {
            case 0:
                this.f5872e.lambda$new$0();
                return;
            default:
                this.f5872e.lambda$onDestroy$4();
                return;
        }
    }
}
