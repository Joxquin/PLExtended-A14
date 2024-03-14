package com.android.quickstep;

import com.android.quickstep.TaskOverlayFactory;
/* renamed from: com.android.quickstep.p1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0540p1 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5765d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5766e;

    public /* synthetic */ RunnableC0540p1(int i4, Object obj) {
        this.f5765d = i4;
        this.f5766e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5765d) {
            case 0:
                TaskOverlayFactory.TaskOverlay.OverlayUICallbacksImpl.j((TaskOverlayFactory.TaskOverlay.OverlayUICallbacksImpl) this.f5766e);
                return;
            default:
                TaskOverlayFactory.TaskOverlay.b((TaskOverlayFactory.TaskOverlay) this.f5766e);
                return;
        }
    }
}
