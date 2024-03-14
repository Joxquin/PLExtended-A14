package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Outline;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes.dex */
public class RoundedRectRevealOutlineProvider extends ViewOutlineProvider {
    private final float mEndRadius;
    private final Rect mEndRect;
    protected Rect mOutline = new Rect();
    protected float mOutlineRadius;
    private final float mStartRadius;
    private final Rect mStartRect;

    public RoundedRectRevealOutlineProvider(float f4, float f5, Rect rect, Rect rect2) {
        this.mStartRadius = f4;
        this.mEndRadius = f5;
        this.mStartRect = rect;
        this.mEndRect = rect2;
    }

    public static void a(RoundedRectRevealOutlineProvider roundedRectRevealOutlineProvider, View view, ValueAnimator valueAnimator) {
        roundedRectRevealOutlineProvider.getClass();
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        float f4 = 1.0f - floatValue;
        roundedRectRevealOutlineProvider.mOutlineRadius = (roundedRectRevealOutlineProvider.mEndRadius * floatValue) + (roundedRectRevealOutlineProvider.mStartRadius * f4);
        Rect rect = roundedRectRevealOutlineProvider.mOutline;
        Rect rect2 = roundedRectRevealOutlineProvider.mStartRect;
        Rect rect3 = roundedRectRevealOutlineProvider.mEndRect;
        rect.left = (int) ((rect3.left * floatValue) + (rect2.left * f4));
        rect.top = (int) ((rect3.top * floatValue) + (rect2.top * f4));
        rect.right = (int) ((rect3.right * floatValue) + (rect2.right * f4));
        rect.bottom = (int) ((floatValue * rect3.bottom) + (f4 * rect2.bottom));
        view.invalidateOutline();
    }

    public final ValueAnimator b(final View view, boolean z4, float f4) {
        ValueAnimator ofFloat = z4 ? ValueAnimator.ofFloat(1.0f - f4, 0.0f) : ValueAnimator.ofFloat(f4, 1.0f);
        final float elevation = view.getElevation();
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.anim.RevealOutlineAnimation$1
            private boolean mIsClippedToOutline;
            private ViewOutlineProvider mOldOutlineProvider;

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                view.setOutlineProvider(this.mOldOutlineProvider);
                view.setClipToOutline(this.mIsClippedToOutline);
                if (RoundedRectRevealOutlineProvider.this.shouldRemoveElevationDuringAnimation()) {
                    view.setTranslationZ(0.0f);
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                this.mIsClippedToOutline = view.getClipToOutline();
                this.mOldOutlineProvider = view.getOutlineProvider();
                view.setOutlineProvider(RoundedRectRevealOutlineProvider.this);
                view.setClipToOutline(true);
                if (RoundedRectRevealOutlineProvider.this.shouldRemoveElevationDuringAnimation()) {
                    view.setTranslationZ(-elevation);
                }
            }
        });
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.anim.i
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                RoundedRectRevealOutlineProvider.a(RoundedRectRevealOutlineProvider.this, view, valueAnimator);
            }
        });
        return ofFloat;
    }

    @Override // android.view.ViewOutlineProvider
    public final void getOutline(View view, Outline outline) {
        outline.setRoundRect(this.mOutline, this.mOutlineRadius);
    }

    public boolean shouldRemoveElevationDuringAnimation() {
        return false;
    }
}
