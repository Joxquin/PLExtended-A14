package com.android.launcher3.widget.picker;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import com.android.launcher3.workprofile.PersonalWorkPagedView;
/* loaded from: classes.dex */
public class WidgetPagedView extends PersonalWorkPagedView {
    public WidgetPagedView(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public final void getDrawingRect(Rect rect) {
        super.getDrawingRect(rect);
        rect.left = getPaddingLeft() + rect.left;
        rect.right -= getPaddingRight();
    }

    public WidgetPagedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WidgetPagedView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        setPageSpacing(getPaddingLeft());
    }
}
