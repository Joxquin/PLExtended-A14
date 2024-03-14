package com.android.quickstep.util;

import android.view.animation.Interpolator;
/* loaded from: classes.dex */
public class PhoneSplitToConfirmTimings extends SplitToConfirmTimings {
    @Override // com.android.quickstep.util.SplitToConfirmTimings, com.android.quickstep.util.SplitAnimationTimings
    public int getDuration() {
        return SplitAnimationTimings.PHONE_CONFIRM_DURATION;
    }

    @Override // com.android.quickstep.util.SplitToConfirmTimings
    public /* bridge */ /* synthetic */ int getInstructionsFadeEnd() {
        return super.getInstructionsFadeEnd();
    }

    @Override // com.android.quickstep.util.SplitToConfirmTimings, com.android.quickstep.util.SplitAnimationTimings
    public /* bridge */ /* synthetic */ float getInstructionsFadeEndOffset() {
        return super.getInstructionsFadeEndOffset();
    }

    @Override // com.android.quickstep.util.SplitToConfirmTimings
    public /* bridge */ /* synthetic */ int getInstructionsFadeStart() {
        return super.getInstructionsFadeStart();
    }

    @Override // com.android.quickstep.util.SplitToConfirmTimings, com.android.quickstep.util.SplitAnimationTimings
    public /* bridge */ /* synthetic */ float getInstructionsFadeStartOffset() {
        return super.getInstructionsFadeStartOffset();
    }

    @Override // com.android.quickstep.util.SplitToConfirmTimings, com.android.quickstep.util.SplitAnimationTimings
    public int getPlaceholderFadeInEnd() {
        return 133;
    }

    @Override // com.android.quickstep.util.SplitToConfirmTimings, com.android.quickstep.util.SplitAnimationTimings
    public int getPlaceholderFadeInStart() {
        return 0;
    }

    @Override // com.android.quickstep.util.SplitToConfirmTimings, com.android.quickstep.util.SplitAnimationTimings
    public int getPlaceholderIconFadeInEnd() {
        return 133;
    }

    @Override // com.android.quickstep.util.SplitToConfirmTimings, com.android.quickstep.util.SplitAnimationTimings
    public int getPlaceholderIconFadeInStart() {
        return 50;
    }

    @Override // com.android.quickstep.util.SplitToConfirmTimings, com.android.quickstep.util.SplitAnimationTimings
    public /* bridge */ /* synthetic */ Interpolator getStagedRectScaleXInterpolator() {
        return super.getStagedRectScaleXInterpolator();
    }

    @Override // com.android.quickstep.util.SplitToConfirmTimings, com.android.quickstep.util.SplitAnimationTimings
    public /* bridge */ /* synthetic */ Interpolator getStagedRectScaleYInterpolator() {
        return super.getStagedRectScaleYInterpolator();
    }

    @Override // com.android.quickstep.util.SplitToConfirmTimings, com.android.quickstep.util.SplitAnimationTimings
    public int getStagedRectSlideEnd() {
        return SplitAnimationTimings.PHONE_CONFIRM_DURATION;
    }

    @Override // com.android.quickstep.util.SplitToConfirmTimings, com.android.quickstep.util.SplitAnimationTimings
    public int getStagedRectSlideStart() {
        return 0;
    }

    @Override // com.android.quickstep.util.SplitToConfirmTimings, com.android.quickstep.util.SplitAnimationTimings
    public /* bridge */ /* synthetic */ Interpolator getStagedRectXInterpolator() {
        return super.getStagedRectXInterpolator();
    }

    @Override // com.android.quickstep.util.SplitToConfirmTimings, com.android.quickstep.util.SplitAnimationTimings
    public /* bridge */ /* synthetic */ Interpolator getStagedRectYInterpolator() {
        return super.getStagedRectYInterpolator();
    }
}
