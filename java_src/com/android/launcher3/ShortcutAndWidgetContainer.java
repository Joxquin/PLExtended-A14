package com.android.launcher3;

import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.os.Trace;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.celllayout.CellLayoutLayoutParams;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.folder.PreviewBackground;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.util.MultiTranslateDelegate;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.widget.NavigableAppWidgetHostView;
import com.android.systemui.shared.system.QuickStepContract;
/* loaded from: classes.dex */
public final class ShortcutAndWidgetContainer extends ViewGroup implements FolderIcon.FolderIconParent {
    private final ActivityContext mActivity;
    private Point mBorderSpace;
    private int mCellHeight;
    private int mCellWidth;
    private final int mContainerType;
    private int mCountX;
    private int mCountY;
    private boolean mInvertIfRtl;
    private final int[] mTmpCellXY;
    private final WallpaperManager mWallpaperManager;

    public ShortcutAndWidgetContainer(int i4, Context context) {
        super(context);
        this.mTmpCellXY = new int[2];
        this.mInvertIfRtl = false;
        this.mActivity = (ActivityContext) ActivityContext.lookupContext(context);
        this.mWallpaperManager = WallpaperManager.getInstance(context);
        this.mContainerType = i4;
        setClipChildren(false);
    }

    public final void addViewInLayout(View view, CellLayoutLayoutParams cellLayoutLayoutParams) {
        addViewInLayout(view, -1, cellLayoutLayoutParams, true);
    }

    @Override // android.view.View
    public final void cancelLongPress() {
        super.cancelLongPress();
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            getChildAt(i4).cancelLongPress();
        }
    }

    @Override // com.android.launcher3.folder.FolderIcon.FolderIconParent
    public final void clearFolderLeaveBehind(FolderIcon folderIcon) {
        ((CellLayoutLayoutParams) folderIcon.getLayoutParams()).canReorder = true;
        if (this.mContainerType == 1) {
            CellLayout cellLayout = (CellLayout) getParent();
            PreviewBackground previewBackground = cellLayout.mFolderLeaveBehind;
            previewBackground.mDelegateCellX = -1;
            previewBackground.mDelegateCellY = -1;
            cellLayout.invalidate();
        }
    }

    @Override // com.android.launcher3.folder.FolderIcon.FolderIconParent
    public final void drawFolderLeaveBehindForIcon(FolderIcon folderIcon) {
        CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) folderIcon.getLayoutParams();
        cellLayoutLayoutParams.canReorder = false;
        if (this.mContainerType == 1) {
            CellLayout cellLayout = (CellLayout) getParent();
            int cellX = cellLayoutLayoutParams.getCellX();
            int cellY = cellLayoutLayoutParams.getCellY();
            View childAt = cellLayout.getChildAt(cellX, cellY);
            cellLayout.mFolderLeaveBehind.setup(cellLayout.getContext(), cellLayout.mActivity, null, childAt.getMeasuredWidth(), childAt.getPaddingTop());
            PreviewBackground previewBackground = cellLayout.mFolderLeaveBehind;
            previewBackground.mDelegateCellX = cellX;
            previewBackground.mDelegateCellY = cellY;
            cellLayout.invalidate();
        }
    }

    public final View getChildAt(int i4, int i5) {
        int childCount = getChildCount();
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) childAt.getLayoutParams();
            if (cellLayoutLayoutParams.getCellX() <= i4 && i4 < cellLayoutLayoutParams.getCellX() + cellLayoutLayoutParams.cellHSpan && cellLayoutLayoutParams.getCellY() <= i5 && i5 < cellLayoutLayoutParams.getCellY() + cellLayoutLayoutParams.cellVSpan) {
                return childAt;
            }
        }
        return null;
    }

    public final boolean invertLayoutHorizontally() {
        return this.mInvertIfRtl && Utilities.isRtl(getResources());
    }

    public final void layoutChild(View view) {
        CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) view.getLayoutParams();
        if (view instanceof NavigableAppWidgetHostView) {
            NavigableAppWidgetHostView navigableAppWidgetHostView = (NavigableAppWidgetHostView) view;
            PointF appWidgetScale = this.mActivity.getDeviceProfile().getAppWidgetScale((ItemInfo) view.getTag());
            float f4 = appWidgetScale.x;
            float f5 = appWidgetScale.y;
            navigableAppWidgetHostView.setScaleToFit(Math.min(f4, f5));
            MultiTranslateDelegate translateDelegate = navigableAppWidgetHostView.getTranslateDelegate();
            int i4 = ((ViewGroup.MarginLayoutParams) cellLayoutLayoutParams).width;
            int i5 = ((ViewGroup.MarginLayoutParams) cellLayoutLayoutParams).height;
            translateDelegate.setTranslation((-(i4 - (i4 * f4))) / 2.0f, (-(i5 - (i5 * f5))) / 2.0f, 3);
        }
        int i6 = cellLayoutLayoutParams.f4575x;
        int i7 = cellLayoutLayoutParams.f4576y;
        view.layout(i6, i7, ((ViewGroup.MarginLayoutParams) cellLayoutLayoutParams).width + i6, ((ViewGroup.MarginLayoutParams) cellLayoutLayoutParams).height + i7);
        if (cellLayoutLayoutParams.dropped) {
            cellLayoutLayoutParams.dropped = false;
            int[] iArr = this.mTmpCellXY;
            getLocationOnScreen(iArr);
            this.mWallpaperManager.sendWallpaperCommand(getWindowToken(), "android.home.drop", (((ViewGroup.MarginLayoutParams) cellLayoutLayoutParams).width / 2) + iArr[0] + i6, (((ViewGroup.MarginLayoutParams) cellLayoutLayoutParams).height / 2) + iArr[1] + i7, 0, null);
        }
    }

    public final void measureChild(View view) {
        int i4;
        CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) view.getLayoutParams();
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        if (view instanceof NavigableAppWidgetHostView) {
            PointF appWidgetScale = deviceProfile.getAppWidgetScale((ItemInfo) view.getTag());
            cellLayoutLayoutParams.setup(this.mCellWidth, this.mCellHeight, invertLayoutHorizontally(), this.mCountX, appWidgetScale.x, appWidgetScale.y, this.mBorderSpace, deviceProfile.widgetPadding);
        } else {
            cellLayoutLayoutParams.setup(this.mCellWidth, this.mCellHeight, invertLayoutHorizontally(), this.mCountX, 1.0f, 1.0f, this.mBorderSpace, null);
            int measuredHeight = getMeasuredHeight();
            DeviceProfile deviceProfile2 = this.mActivity.getDeviceProfile();
            int i5 = this.mContainerType;
            boolean z4 = true;
            if (i5 == 0) {
                i4 = deviceProfile2.cellHeightPx;
            } else if (i5 == 1) {
                i4 = deviceProfile2.iconSizePx;
            } else if (i5 != 2) {
                deviceProfile2.getClass();
                i4 = 0;
            } else {
                i4 = deviceProfile2.folderCellHeightPx;
            }
            int min = Math.min(measuredHeight, i4);
            int i6 = deviceProfile.cellYPaddingPx;
            if (i6 < 0 || this.mContainerType != 0) {
                i6 = (int) Math.max(0.0f, (((ViewGroup.MarginLayoutParams) cellLayoutLayoutParams).height - min) / 2.0f);
            }
            if ((deviceProfile.cellLayoutBorderSpacePx.x <= 0 || this.mContainerType != 0) && ((deviceProfile.folderCellLayoutBorderSpacePx.x <= 0 || this.mContainerType != 2) && (deviceProfile.hotseatBorderSpace <= 0 || this.mContainerType != 1))) {
                z4 = false;
            }
            int i7 = z4 ? 0 : this.mContainerType == 0 ? deviceProfile.workspaceCellPaddingXPx : (int) (deviceProfile.edgeMarginPx / 2.0f);
            view.setPadding(i7, i6, i7, 0);
        }
        view.measure(View.MeasureSpec.makeMeasureSpec(((ViewGroup.MarginLayoutParams) cellLayoutLayoutParams).width, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(((ViewGroup.MarginLayoutParams) cellLayoutLayoutParams).height, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && getAlpha() == 0.0f) {
            return true;
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        Trace.beginSection("ShortcutAndWidgetConteiner#onLayout");
        int childCount = getChildCount();
        for (int i8 = 0; i8 < childCount; i8++) {
            View childAt = getChildAt(i8);
            if (childAt.getVisibility() != 8) {
                layoutChild(childAt);
            }
        }
        Trace.endSection();
    }

    @Override // android.view.View
    public final void onMeasure(int i4, int i5) {
        int childCount = getChildCount();
        setMeasuredDimension(View.MeasureSpec.getSize(i4), View.MeasureSpec.getSize(i5));
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = getChildAt(i6);
            if (childAt.getVisibility() != 8) {
                measureChild(childAt);
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
        if (view != null) {
            Rect rect = new Rect();
            view.getDrawingRect(rect);
            requestRectangleOnScreen(rect);
        }
    }

    public final void setCellDimensions(int i4, int i5, int i6, int i7, Point point) {
        this.mCellWidth = i4;
        this.mCellHeight = i5;
        this.mCountX = i6;
        this.mCountY = i7;
        this.mBorderSpace = point;
    }

    public final void setInvertIfRtl() {
        this.mInvertIfRtl = true;
    }

    public final void setupLp(View view) {
        CellLayoutLayoutParams cellLayoutLayoutParams = (CellLayoutLayoutParams) view.getLayoutParams();
        if (!(view instanceof NavigableAppWidgetHostView)) {
            cellLayoutLayoutParams.setup(this.mCellWidth, this.mCellHeight, invertLayoutHorizontally(), this.mCountX, 1.0f, 1.0f, this.mBorderSpace, null);
            return;
        }
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        PointF appWidgetScale = deviceProfile.getAppWidgetScale((ItemInfo) view.getTag());
        cellLayoutLayoutParams.setup(this.mCellWidth, this.mCellHeight, invertLayoutHorizontally(), this.mCountX, appWidgetScale.x, appWidgetScale.y, this.mBorderSpace, deviceProfile.widgetPadding);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
