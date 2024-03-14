package com.android.quickstep;

import android.view.View;
import com.android.quickstep.AbsSwipeUpHandler;
import com.android.quickstep.util.SurfaceTransactionApplier;
/* renamed from: com.android.quickstep.u  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0552u implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5787d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5788e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f5789f;

    public /* synthetic */ RunnableC0552u(int i4, Object obj, Object obj2) {
        this.f5787d = i4;
        this.f5789f = obj;
        this.f5788e = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5787d) {
            case 0:
                ((AbsSwipeUpHandler.AnonymousClass2) this.f5789f).lambda$onDraw$0((View) this.f5788e);
                return;
            case 1:
                ((AbsSwipeUpHandler.AnonymousClass4) this.f5789f).lambda$onDraw$0((View) this.f5788e);
                return;
            case 2:
                ((AbsSwipeUpHandler) this.f5789f).lambda$linkRecentsViewScroll$30((SurfaceTransactionApplier) this.f5788e);
                return;
            default:
                ((AbsSwipeUpHandler) this.f5789f).lambda$switchToScreenshot$23((int[]) this.f5788e);
                return;
        }
    }
}
