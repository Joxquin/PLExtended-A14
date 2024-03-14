package com.android.quickstep;

import android.animation.ValueAnimator;
/* renamed from: com.android.quickstep.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0520j implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5706d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ AbsSwipeUpHandler f5707e;

    public /* synthetic */ C0520j(AbsSwipeUpHandler absSwipeUpHandler, int i4) {
        this.f5706d = i4;
        this.f5707e = absSwipeUpHandler;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f5706d) {
            case 0:
                AbsSwipeUpHandler.I(this.f5707e, valueAnimator);
                return;
            default:
                AbsSwipeUpHandler.s(this.f5707e, valueAnimator);
                return;
        }
    }
}
