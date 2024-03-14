package com.android.launcher3.widget.picker;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TableLayout;
/* loaded from: classes.dex */
public class WidgetsListTableView extends TableLayout {
    private WidgetsListDrawableState mListDrawableState;

    public WidgetsListTableView(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i4) {
        WidgetsListDrawableState widgetsListDrawableState = this.mListDrawableState;
        if (widgetsListDrawableState == null) {
            return super.onCreateDrawableState(i4);
        }
        int[] onCreateDrawableState = super.onCreateDrawableState(i4 + widgetsListDrawableState.mStateSet.length);
        TableLayout.mergeDrawableStates(onCreateDrawableState, this.mListDrawableState.mStateSet);
        return onCreateDrawableState;
    }

    public final void setListDrawableState(WidgetsListDrawableState widgetsListDrawableState) {
        if (widgetsListDrawableState == this.mListDrawableState) {
            return;
        }
        this.mListDrawableState = widgetsListDrawableState;
        refreshDrawableState();
    }

    public WidgetsListTableView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
