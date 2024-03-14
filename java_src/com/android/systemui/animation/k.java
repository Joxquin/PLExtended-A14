package com.android.systemui.animation;

import android.util.MathUtils;
/* loaded from: classes.dex */
public final class k {
    public static float a(o timings, float f4, long j4, long j5) {
        kotlin.jvm.internal.h.e(timings, "timings");
        return MathUtils.constrain(((f4 * ((float) timings.f6098a)) - ((float) j4)) / ((float) j5), 0.0f, 1.0f);
    }
}
