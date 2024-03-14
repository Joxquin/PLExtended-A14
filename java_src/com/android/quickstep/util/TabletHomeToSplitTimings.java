package com.android.quickstep.util;

import android.view.animation.Interpolator;
/* loaded from: classes.dex */
public class TabletHomeToSplitTimings extends TabletOverviewToSplitTimings {
    public int getScrimFadeInEnd() {
        return 167;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getScrimFadeInEndOffset() {
        return getScrimFadeInEnd() / getDuration();
    }

    public int getScrimFadeInStart() {
        return 0;
    }

    @Override // com.android.quickstep.util.SplitAnimationTimings
    public float getScrimFadeInStartOffset() {
        return getScrimFadeInStart() / getDuration();
    }

    @Override // com.android.quickstep.util.TabletOverviewToSplitTimings, com.android.quickstep.util.OverviewToSplitTimings, com.android.quickstep.util.SplitAnimationTimings
    public Interpolator getStagedRectScaleXInterpolator() {
        return y0.e.f12949m;
    }

    @Override // com.android.quickstep.util.TabletOverviewToSplitTimings, com.android.quickstep.util.OverviewToSplitTimings, com.android.quickstep.util.SplitAnimationTimings
    public Interpolator getStagedRectScaleYInterpolator() {
        return y0.e.f12949m;
    }

    @Override // com.android.quickstep.util.TabletOverviewToSplitTimings, com.android.quickstep.util.OverviewToSplitTimings, com.android.quickstep.util.SplitAnimationTimings
    public Interpolator getStagedRectXInterpolator() {
        return y0.e.f12949m;
    }
}
