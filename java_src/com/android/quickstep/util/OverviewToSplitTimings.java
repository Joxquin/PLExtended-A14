package com.android.quickstep.util;

import android.view.animation.Interpolator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class OverviewToSplitTimings implements SplitAnimationTimings {
    public int getActionsFadeEnd() {
        return 83;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getActionsFadeEndOffset() {
        return getActionsFadeEnd() / getDuration();
    }

    public int getActionsFadeStart() {
        return 0;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getActionsFadeStartOffset() {
        return getActionsFadeStart() / getDuration();
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public abstract int getDuration();

    public abstract int getGridSlideDuration();

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getGridSlideDurationOffset() {
        return getGridSlideDuration() / getDuration();
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public Interpolator getGridSlidePrimaryInterpolator() {
        return y0.e.f12937a;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public Interpolator getGridSlideSecondaryInterpolator() {
        return y0.e.f12941e;
    }

    public abstract int getGridSlideStagger();

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getGridSlideStaggerOffset() {
        return getGridSlideStagger() / getDuration();
    }

    public abstract int getGridSlideStart();

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getGridSlideStartOffset() {
        return getGridSlideStart() / getDuration();
    }

    public int getIconFadeEnd() {
        return 83;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getIconFadeEndOffset() {
        return getIconFadeEnd() / getDuration();
    }

    public int getIconFadeStart() {
        return 0;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getIconFadeStartOffset() {
        return getIconFadeStart() / getDuration();
    }

    public int getInstructionsContainerFadeInEnd() {
        return StaggeredWorkspaceAnim.DURATION_MS;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getInstructionsContainerFadeInEndOffset() {
        return getInstructionsContainerFadeInEnd() / getDuration();
    }

    public int getInstructionsContainerFadeInStart() {
        return 167;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getInstructionsContainerFadeInStartOffset() {
        return getInstructionsContainerFadeInStart() / getDuration();
    }

    public int getInstructionsTextFadeInEnd() {
        return 300;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getInstructionsTextFadeInEndOffset() {
        return getInstructionsTextFadeInEnd() / getDuration();
    }

    public int getInstructionsTextFadeInStart() {
        return 217;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getInstructionsTextFadeInStartOffset() {
        return getInstructionsTextFadeInStart() / getDuration();
    }

    public int getInstructionsUnfoldEnd() {
        return 500;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getInstructionsUnfoldEndOffset() {
        return getInstructionsUnfoldEnd() / getDuration();
    }

    public int getInstructionsUnfoldStart() {
        return 167;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getInstructionsUnfoldStartOffset() {
        return getInstructionsUnfoldStart() / getDuration();
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
    public abstract Interpolator getStagedRectScaleXInterpolator();

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public abstract Interpolator getStagedRectScaleYInterpolator();

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public abstract int getStagedRectSlideEnd();

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public abstract int getStagedRectSlideStart();

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public abstract Interpolator getStagedRectXInterpolator();

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public abstract Interpolator getStagedRectYInterpolator();
}
