package com.android.launcher3.anim;
/* loaded from: classes.dex */
public final class SpringProperty {
    public static final SpringProperty DEFAULT = new SpringProperty(0);
    public final int flags;
    float mDampingRatio = 0.5f;
    float mStiffness = 1500.0f;

    public SpringProperty(int i4) {
        this.flags = i4;
    }

    public final void setDampingRatio(float f4) {
        this.mDampingRatio = f4;
    }

    public final void setStiffness(float f4) {
        this.mStiffness = f4;
    }
}
