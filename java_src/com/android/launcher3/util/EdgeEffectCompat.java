package com.android.launcher3.util;

import android.widget.EdgeEffect;
import com.android.launcher3.Utilities;
/* loaded from: classes.dex */
public class EdgeEffectCompat extends EdgeEffect {
    @Override // android.widget.EdgeEffect
    public float getDistance() {
        if (Utilities.ATLEAST_S) {
            return super.getDistance();
        }
        return 0.0f;
    }

    @Override // android.widget.EdgeEffect
    public float onPullDistance(float f4, float f5) {
        if (Utilities.ATLEAST_S) {
            return super.onPullDistance(f4, f5);
        }
        onPull(f4, f5);
        return f4;
    }
}
