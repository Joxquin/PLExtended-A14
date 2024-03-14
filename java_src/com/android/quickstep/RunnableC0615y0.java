package com.android.quickstep;

import com.android.launcher3.util.RunnableList;
/* renamed from: com.android.quickstep.y0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0615y0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6017d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f6018e;

    public /* synthetic */ RunnableC0615y0(int i4, Object obj) {
        this.f6017d = i4;
        this.f6018e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6017d) {
            case 0:
                ((RecentsAnimationController) this.f6018e).lambda$cleanupScreenshot$3();
                return;
            case 1:
                ((RecentsAnimationController) this.f6018e).lambda$enableInputConsumer$8();
                return;
            default:
                ((RunnableList) this.f6018e).executeAllAndDestroy();
                return;
        }
    }
}
