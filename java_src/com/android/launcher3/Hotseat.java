package com.android.launcher3;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
/* loaded from: classes.dex */
public class Hotseat extends CellLayout implements Insettable {
    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mHasVerticalHotseat;
    private final View mQsb;
    private boolean mSendTouchToWorkspace;
    private Workspace mWorkspace;

    public Hotseat(Context context) {
        this(context, null);
    }

    public final int getCellXFromOrder(int i4) {
        if (this.mHasVerticalHotseat) {
            return 0;
        }
        return i4;
    }

    public final int getCellYFromOrder(int i4) {
        if (this.mHasVerticalHotseat) {
            return this.mCountY - (i4 + 1);
        }
        return 0;
    }

    public final float getIconsAlpha() {
        return this.mShortcutsAndWidgets.getAlpha();
    }

    public final View getQsb() {
        return this.mQsb;
    }

    @Override // com.android.launcher3.CellLayout, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int measuredHeight = getMeasuredHeight() - getPaddingBottom();
        if (this.mWorkspace == null || motionEvent.getY() > measuredHeight) {
            return false;
        }
        boolean onInterceptTouchEvent = this.mWorkspace.onInterceptTouchEvent(motionEvent);
        this.mSendTouchToWorkspace = onInterceptTouchEvent;
        return onInterceptTouchEvent;
    }

    @Override // com.android.launcher3.CellLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        int i8;
        super.onLayout(z4, i4, i5, i6, i7);
        int measuredWidth = this.mQsb.getMeasuredWidth();
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        if (deviceProfile.isQsbInline) {
            int i9 = deviceProfile.hotseatBorderSpace;
            i8 = Utilities.isRtl(getResources()) ? (i6 - getPaddingRight()) + i9 : ((getPaddingLeft() + i4) - measuredWidth) - i9;
        } else {
            i8 = ((i6 - i4) - measuredWidth) / 2;
        }
        int qsbOffsetY = (i7 - i5) - deviceProfile.getQsbOffsetY();
        this.mQsb.layout(i8, qsbOffsetY - deviceProfile.hotseatQsbHeight, measuredWidth + i8, qsbOffsetY);
    }

    @Override // com.android.launcher3.CellLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        this.mQsb.measure(View.MeasureSpec.makeMeasureSpec(deviceProfile.hotseatQsbWidth, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(deviceProfile.hotseatQsbHeight, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mSendTouchToWorkspace) {
            int action = motionEvent.getAction() & 255;
            if (action == 1 || action == 3) {
                this.mSendTouchToWorkspace = false;
            }
            return this.mWorkspace.onTouchEvent(motionEvent);
        }
        return false;
    }

    public final void resetLayout(boolean z4) {
        removeAllViewsInLayout();
        this.mHasVerticalHotseat = z4;
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        resetCellSize(deviceProfile);
        if (z4) {
            setGridSize(1, deviceProfile.numShownHotseatIcons);
        } else {
            setGridSize(deviceProfile.numShownHotseatIcons, 1);
        }
    }

    public final void setIconsAlpha(float f4) {
        this.mShortcutsAndWidgets.setAlpha(f4);
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        if (deviceProfile.isVerticalBarLayout()) {
            this.mQsb.setVisibility(8);
            layoutParams.height = -1;
            if (deviceProfile.isSeascape()) {
                layoutParams.gravity = 3;
                layoutParams.width = deviceProfile.hotseatBarSizePx + rect.left;
            } else {
                layoutParams.gravity = 5;
                layoutParams.width = deviceProfile.hotseatBarSizePx + rect.right;
            }
        } else {
            this.mQsb.setVisibility(0);
            layoutParams.gravity = 80;
            layoutParams.width = -1;
            layoutParams.height = deviceProfile.hotseatBarSizePx;
        }
        Rect hotseatLayoutPadding = deviceProfile.getHotseatLayoutPadding(getContext());
        setPadding(hotseatLayoutPadding.left, hotseatLayoutPadding.top, hotseatLayoutPadding.right, hotseatLayoutPadding.bottom);
        setLayoutParams(layoutParams);
        InsettableFrameLayout.dispatchInsets(this, rect);
    }

    public final void setQsbAlpha(float f4) {
        this.mQsb.setAlpha(f4);
    }

    public final void setWorkspace(Workspace workspace) {
        this.mWorkspace = workspace;
    }

    public Hotseat(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Hotseat(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        View inflate = LayoutInflater.from(context).inflate(R.layout.search_container_hotseat, (ViewGroup) this, false);
        this.mQsb = inflate;
        addView(inflate);
    }
}
