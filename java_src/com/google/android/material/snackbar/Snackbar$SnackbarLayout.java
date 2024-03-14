package com.google.android.material.snackbar;

import D2.d;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.android.systemui.shared.system.QuickStepContract;
/* loaded from: classes.dex */
public final class Snackbar$SnackbarLayout extends d {
    public Snackbar$SnackbarLayout(Context context) {
        super(context);
    }

    @Override // D2.d, android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        int childCount = getChildCount();
        int measuredWidth = (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getLayoutParams().width == -1) {
                childAt.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(childAt.getMeasuredHeight(), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
            }
        }
    }

    public Snackbar$SnackbarLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
