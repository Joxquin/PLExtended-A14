package com.android.quickstep.util;

import android.view.View;
import com.android.launcher3.Reorderable;
import com.android.systemui.shared.animation.UnfoldMoveFromCenterAnimator;
/* loaded from: classes.dex */
public class LauncherViewsMoveFromCenterTranslationApplier implements UnfoldMoveFromCenterAnimator.TranslationApplier {
    @Override // com.android.systemui.shared.animation.UnfoldMoveFromCenterAnimator.TranslationApplier
    public void apply(View view, float f4, float f5) {
        if (view instanceof Reorderable) {
            ((Reorderable) view).getTranslateDelegate().setTranslation(f4, f5, 2);
            return;
        }
        view.setTranslationX(f4);
        view.setTranslationY(f5);
    }
}
