package com.android.quickstep;

import com.android.quickstep.FallbackSwipeHandler;
/* loaded from: classes.dex */
public final /* synthetic */ class G implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5463d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ FallbackSwipeHandler.FallbackHomeAnimationFactory f5464e;

    public /* synthetic */ G(FallbackSwipeHandler.FallbackHomeAnimationFactory fallbackHomeAnimationFactory, int i4) {
        this.f5463d = i4;
        this.f5464e = fallbackHomeAnimationFactory;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5463d) {
            case 0:
                FallbackSwipeHandler.FallbackHomeAnimationFactory.d(this.f5464e);
                return;
            default:
                FallbackSwipeHandler.FallbackHomeAnimationFactory.c(this.f5464e);
                return;
        }
    }
}
