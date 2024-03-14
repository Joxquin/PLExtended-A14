package com.android.launcher3.workprofile;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import com.android.launcher3.PagedView;
/* loaded from: classes.dex */
public class PersonalWorkPagedView extends PagedView {
    public PersonalWorkPagedView(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.PagedView
    public final boolean canScroll(float f4, float f5) {
        return f5 > f4 && super.canScroll(f4, f5);
    }

    @Override // com.android.launcher3.PagedView
    public final void determineScrollingStart(MotionEvent motionEvent) {
        float abs = Math.abs(motionEvent.getX() - getDownMotionX());
        float abs2 = Math.abs(motionEvent.getY() - getDownMotionY());
        if (Float.compare(abs, 0.0f) == 0) {
            return;
        }
        float atan = (float) Math.atan(abs2 / abs);
        int i4 = this.mTouchSlop;
        if (abs > i4 || abs2 > i4) {
            cancelCurrentPageLongPress();
        }
        if (atan > 1.0471976f) {
            return;
        }
        if (atan > 0.5235988f) {
            super.determineScrollingStart(motionEvent, (((float) Math.sqrt((atan - 0.5235988f) / 0.5235988f)) * 4.0f) + 1.0f);
        } else {
            super.determineScrollingStart(motionEvent);
        }
    }

    @Override // com.android.launcher3.PagedView
    public final String getCurrentPageDescription() {
        return "";
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // com.android.launcher3.PagedView, android.view.View
    public final void onScrollChanged(int i4, int i5, int i6, int i7) {
        super.onScrollChanged(i4, i5, i6, i7);
        ((PersonalWorkSlidingTabStrip) this.mPageIndicator).getClass();
    }

    public PersonalWorkPagedView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PersonalWorkPagedView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
