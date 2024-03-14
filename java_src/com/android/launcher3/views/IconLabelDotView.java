package com.android.launcher3.views;

import android.view.View;
/* loaded from: classes.dex */
public interface IconLabelDotView {
    static void setIconAndDotVisible(View view, boolean z4) {
        if (!(view instanceof IconLabelDotView)) {
            view.setVisibility(z4 ? 0 : 4);
            return;
        }
        IconLabelDotView iconLabelDotView = (IconLabelDotView) view;
        iconLabelDotView.setIconVisible(z4);
        iconLabelDotView.setForceHideDot(!z4);
    }

    void setForceHideDot(boolean z4);

    void setIconVisible(boolean z4);
}
