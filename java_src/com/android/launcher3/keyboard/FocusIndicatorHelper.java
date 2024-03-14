package com.android.launcher3.keyboard;

import android.graphics.Rect;
import android.view.View;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public abstract class FocusIndicatorHelper extends ItemFocusIndicatorHelper implements View.OnFocusChangeListener {

    /* loaded from: classes.dex */
    public final class SimpleFocusIndicatorHelper extends FocusIndicatorHelper {
        @Override // com.android.launcher3.keyboard.ItemFocusIndicatorHelper
        public final void viewToRect(Object obj, Rect rect) {
            View view = (View) obj;
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    public FocusIndicatorHelper(View view) {
        super(view, view.getResources().getColor(R.color.focused_background));
    }

    @Override // com.android.launcher3.keyboard.ItemFocusIndicatorHelper
    public final boolean shouldDraw(Object obj) {
        return ((View) obj).isAttachedToWindow();
    }
}
