package com.android.launcher3.states;

import android.view.animation.Interpolator;
/* loaded from: classes.dex */
public class StateAnimationConfig {
    public long duration;
    public boolean userControlled;
    public int animFlags = 0;
    protected final Interpolator[] mInterpolators = new Interpolator[21];

    public final void copyTo(StateAnimationConfig stateAnimationConfig) {
        stateAnimationConfig.duration = this.duration;
        stateAnimationConfig.animFlags = this.animFlags;
        stateAnimationConfig.userControlled = this.userControlled;
        for (int i4 = 0; i4 < 21; i4++) {
            stateAnimationConfig.mInterpolators[i4] = this.mInterpolators[i4];
        }
    }

    public final Interpolator getInterpolator(int i4, Interpolator interpolator) {
        Interpolator interpolator2 = this.mInterpolators[i4];
        return interpolator2 == null ? interpolator : interpolator2;
    }

    public final boolean hasAnimationFlag(int i4) {
        return (this.animFlags & i4) != 0;
    }

    public final void setInterpolator(int i4, Interpolator interpolator) {
        this.mInterpolators[i4] = interpolator;
    }
}
