package com.android.launcher3.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.FrameLayout;
/* loaded from: classes.dex */
public class WidgetCellPreview extends FrameLayout {
    public WidgetCellPreview(Context context) {
        this(context, null);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        super.onInterceptTouchEvent(motionEvent);
        return true;
    }

    public WidgetCellPreview(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WidgetCellPreview(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
