package com.android.quickstep.util;

import android.view.animation.Interpolator;
/* loaded from: classes.dex */
abstract class SplitToConfirmTimings implements SplitAnimationTimings {
    @Override // com.android.quickstep.util.SplitAnimationTimings
    public abstract int getDuration();

    public int getInstructionsFadeEnd() {
        return 67;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getInstructionsFadeEndOffset() {
        return getInstructionsFadeEnd() / getDuration();
    }

    public int getInstructionsFadeStart() {
        return 0;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getInstructionsFadeStartOffset() {
        return getInstructionsFadeStart() / getDuration();
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public abstract int getPlaceholderFadeInEnd();

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public abstract int getPlaceholderFadeInStart();

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public abstract int getPlaceholderIconFadeInEnd();

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public abstract int getPlaceholderIconFadeInStart();

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public Interpolator getStagedRectScaleXInterpolator() {
        return y0.e.f12937a;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public Interpolator getStagedRectScaleYInterpolator() {
        return y0.e.f12937a;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public abstract int getStagedRectSlideEnd();

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public abstract int getStagedRectSlideStart();

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public Interpolator getStagedRectXInterpolator() {
        return y0.e.f12937a;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public Interpolator getStagedRectYInterpolator() {
        return y0.e.f12937a;
    }
}
