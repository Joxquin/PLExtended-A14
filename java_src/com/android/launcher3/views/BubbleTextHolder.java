package com.android.launcher3.views;

import com.android.launcher3.BubbleTextView;
/* loaded from: classes.dex */
public interface BubbleTextHolder extends IconLabelDotView {
    BubbleTextView getBubbleText();

    @Override // com.android.launcher3.views.IconLabelDotView
    default void setForceHideDot(boolean z4) {
        getBubbleText().setForceHideDot(z4);
    }

    @Override // com.android.launcher3.views.IconLabelDotView
    default void setIconVisible(boolean z4) {
        getBubbleText().setIconVisible(z4);
    }
}
