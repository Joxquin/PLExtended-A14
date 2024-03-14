package com.android.launcher3.workprofile;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.R$styleable;
import com.android.launcher3.pageindicators.PageIndicator;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.system.QuickStepContract;
/* loaded from: classes.dex */
public class PersonalWorkSlidingTabStrip extends LinearLayout implements PageIndicator {
    private final boolean mIsAlignOnIcon;
    private int mLastActivePage;
    private OnActivePageChangedListener mOnActivePageChangedListener;

    /* loaded from: classes.dex */
    public interface OnActivePageChangedListener {
        void onActivePageChanged(int i4);
    }

    public PersonalWorkSlidingTabStrip(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mLastActivePage = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.PersonalWorkSlidingTabStrip);
        this.mIsAlignOnIcon = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
    }

    public static int getTabWidth(int i4, Context context) {
        DeviceProfile deviceProfile = ((ActivityContext) ActivityContext.lookupContext(context)).getDeviceProfile();
        return i4 - ((i4 / deviceProfile.numShownAllAppsColumns) - deviceProfile.allAppsIconSizePx);
    }

    @Override // android.view.View
    public final boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        if (this.mIsAlignOnIcon) {
            i4 = View.MeasureSpec.makeMeasureSpec(getTabWidth(View.MeasureSpec.getSize(i4), getContext()), QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE);
        }
        super.onMeasure(i4, i5);
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void setActiveMarker(int i4) {
        int i5 = 0;
        while (i5 < getChildCount()) {
            ((Button) getChildAt(i5)).setSelected(i5 == i4);
            i5++;
        }
        OnActivePageChangedListener onActivePageChangedListener = this.mOnActivePageChangedListener;
        if (onActivePageChangedListener != null && this.mLastActivePage != i4) {
            onActivePageChangedListener.onActivePageChanged(i4);
        }
        this.mLastActivePage = i4;
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void setMarkersCount(int i4) {
    }

    public final void setOnActivePageChangedListener(OnActivePageChangedListener onActivePageChangedListener) {
        this.mOnActivePageChangedListener = onActivePageChangedListener;
    }

    @Override // com.android.launcher3.pageindicators.PageIndicator
    public final void setScroll(int i4, int i5) {
    }
}
