package com.android.launcher3.util;

import android.view.View;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.anim.AlphaUpdateListener;
/* loaded from: classes.dex */
public final class MultiValueAlpha extends MultiPropertyFactory {
    private static final y ALPHA_AGGREGATOR = new y();
    private final int mHiddenVisibility;
    private boolean mUpdateVisibility;

    public MultiValueAlpha(int i4, View view, int i5) {
        super(view, LauncherAnimUtils.VIEW_ALPHA, i4, ALPHA_AGGREGATOR, 1.0f);
        this.mHiddenVisibility = i5;
    }

    @Override // com.android.launcher3.util.MultiPropertyFactory
    public final void apply(float f4) {
        super.apply(f4);
        if (this.mUpdateVisibility) {
            AlphaUpdateListener.updateVisibility((View) this.mTarget, this.mHiddenVisibility);
        }
    }

    public final void setUpdateVisibility() {
        this.mUpdateVisibility = true;
    }
}
