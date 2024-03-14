package com.android.quickstep.util;

import android.view.animation.Interpolator;
/* loaded from: classes.dex */
public interface SplitAnimationTimings {
    public static final int ABORT_DURATION = 500;
    public static final int PHONE_CONFIRM_DURATION = 333;
    public static final int PHONE_ENTER_DURATION = 517;
    public static final int TABLET_CONFIRM_DURATION = 500;
    public static final int TABLET_ENTER_DURATION = 866;
    public static final SplitAnimationTimings TABLET_OVERVIEW_TO_SPLIT = new TabletOverviewToSplitTimings();
    public static final SplitAnimationTimings TABLET_HOME_TO_SPLIT = new TabletHomeToSplitTimings();
    public static final SplitAnimationTimings TABLET_SPLIT_TO_CONFIRM = new TabletSplitToConfirmTimings();
    public static final SplitAnimationTimings PHONE_OVERVIEW_TO_SPLIT = new PhoneOverviewToSplitTimings();
    public static final SplitAnimationTimings PHONE_SPLIT_TO_CONFIRM = new PhoneSplitToConfirmTimings();

    default float getActionsFadeEndOffset() {
        return 0.0f;
    }

    default float getActionsFadeStartOffset() {
        return 0.0f;
    }

    int getDuration();

    default float getGridSlideDurationOffset() {
        return 0.0f;
    }

    default Interpolator getGridSlidePrimaryInterpolator() {
        return y0.e.f12949m;
    }

    default Interpolator getGridSlideSecondaryInterpolator() {
        return y0.e.f12949m;
    }

    default float getGridSlideStaggerOffset() {
        return 0.0f;
    }

    default float getGridSlideStartOffset() {
        return 0.0f;
    }

    default float getIconFadeEndOffset() {
        return 0.0f;
    }

    default float getIconFadeStartOffset() {
        return 0.0f;
    }

    default float getInstructionsContainerFadeInEndOffset() {
        return 0.0f;
    }

    default float getInstructionsContainerFadeInStartOffset() {
        return 0.0f;
    }

    default float getInstructionsFadeEndOffset() {
        return 0.0f;
    }

    default float getInstructionsFadeStartOffset() {
        return 0.0f;
    }

    default float getInstructionsTextFadeInEndOffset() {
        return 0.0f;
    }

    default float getInstructionsTextFadeInStartOffset() {
        return 0.0f;
    }

    default float getInstructionsUnfoldEndOffset() {
        return 0.0f;
    }

    default float getInstructionsUnfoldStartOffset() {
        return 0.0f;
    }

    int getPlaceholderFadeInEnd();

    default float getPlaceholderFadeInEndOffset() {
        return getPlaceholderFadeInEnd() / getDuration();
    }

    int getPlaceholderFadeInStart();

    default float getPlaceholderFadeInStartOffset() {
        return getPlaceholderFadeInStart() / getDuration();
    }

    int getPlaceholderIconFadeInEnd();

    default float getPlaceholderIconFadeInEndOffset() {
        return getPlaceholderIconFadeInEnd() / getDuration();
    }

    int getPlaceholderIconFadeInStart();

    default float getPlaceholderIconFadeInStartOffset() {
        return getPlaceholderIconFadeInStart() / getDuration();
    }

    default float getScrimFadeInEndOffset() {
        return 0.0f;
    }

    default float getScrimFadeInStartOffset() {
        return 0.0f;
    }

    Interpolator getStagedRectScaleXInterpolator();

    Interpolator getStagedRectScaleYInterpolator();

    int getStagedRectSlideEnd();

    default float getStagedRectSlideEndOffset() {
        return getStagedRectSlideEnd() / getDuration();
    }

    int getStagedRectSlideStart();

    default float getStagedRectSlideStartOffset() {
        return getStagedRectSlideStart() / getDuration();
    }

    Interpolator getStagedRectXInterpolator();

    Interpolator getStagedRectYInterpolator();
}
