package com.android.launcher3.touch;

import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.util.Pair;
import android.view.View;
import android.widget.FrameLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Utilities;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.util.SplitConfigurationOptions$SplitBounds;
import com.android.launcher3.util.SplitConfigurationOptions$SplitPositionOption;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.views.IconView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class SeascapePagedViewHandler extends LandscapePagedViewHandler {
    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final void adjustFloatingIconStartVelocity(PointF pointF) {
        pointF.set(pointF.y, -pointF.x);
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final float getDegreesRotated() {
        return 270.0f;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final int getDistanceToBottomOfRect(DeviceProfile deviceProfile, Rect rect) {
        return deviceProfile.widthPx - rect.right;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final Pair getDwbLayoutTranslations(int i4, int i5, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds, DeviceProfile deviceProfile, View[] viewArr, int i6, View view) {
        boolean z4 = view.getLayoutDirection() == 1;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setRotation(270.0f);
        float height = i4 - view.getHeight();
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) viewArr[0].getLayoutParams();
        layoutParams.gravity = (z4 ? 8388613 : 8388611) | 80;
        if (splitConfigurationOptions$SplitBounds == null) {
            layoutParams.width = i5 - layoutParams2.topMargin;
            return new Pair(Float.valueOf(height), Float.valueOf(view.getHeight()));
        }
        int i7 = splitConfigurationOptions$SplitBounds.leftTopTaskId;
        if (i6 == i7) {
            layoutParams.width = viewArr[0].getMeasuredHeight();
        } else {
            layoutParams.width = viewArr[1].getMeasuredHeight();
        }
        float height2 = i6 == splitConfigurationOptions$SplitBounds.rightBottomTaskId ? view.getHeight() : 0.0f;
        if (i6 == i7) {
            height2 = view.getHeight() - ((i5 - layoutParams2.topMargin) * (1.0f - (splitConfigurationOptions$SplitBounds.appsStackedVertically ? splitConfigurationOptions$SplitBounds.topTaskPercent : splitConfigurationOptions$SplitBounds.leftTaskPercent)));
        }
        return new Pair(Float.valueOf(height), Float.valueOf(height2));
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final boolean getRecentsRtlSetting(Resources resources) {
        return Utilities.isRtl(resources);
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final int getRotation() {
        return 3;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final int getSecondaryTranslationDirectionFactor() {
        return -1;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final List getSplitPositionOptions(DeviceProfile deviceProfile) {
        return Collections.singletonList(new SplitConfigurationOptions$SplitPositionOption(R.drawable.ic_split_horizontal, 1));
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final int getSplitTranslationDirectionFactor(int i4, DeviceProfile deviceProfile) {
        return i4 == 1 ? -1 : 1;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final int getTaskDragDisplacementFactor(boolean z4) {
        return z4 ? -1 : 1;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final float getTaskMenuX(float f4, TaskThumbnailView taskThumbnailView, DeviceProfile deviceProfile, float f5) {
        return f4 + f5;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final float getTaskMenuY(float f4, TaskThumbnailView taskThumbnailView, int i4, View view, float f5) {
        int i5 = ((FrameLayout.LayoutParams) ((BaseDragLayer.LayoutParams) view.getLayoutParams())).width;
        if (i4 == -1) {
            return ((taskThumbnailView.getMeasuredHeight() + i5) / 2.0f) + f4 + f5;
        }
        return f4 + i5 + f5;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final int getUpDirection(boolean z4) {
        return z4 ? 1 : 2;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final SingleAxisSwipeDetector.Direction getUpDownSwipeDirection() {
        return SingleAxisSwipeDetector.HORIZONTAL;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final boolean isGoingUp(float f4, boolean z4) {
        return !z4 ? f4 >= 0.0f : f4 <= 0.0f;
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final void measureGroupedTaskViewThumbnailBounds(TaskThumbnailView taskThumbnailView, TaskThumbnailView taskThumbnailView2, int i4, int i5, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds, DeviceProfile deviceProfile, boolean z4) {
        int i6;
        int i7 = deviceProfile.overviewTaskThumbnailTopMarginPx;
        ((FrameLayout.LayoutParams) taskThumbnailView2.getLayoutParams()).topMargin = i7;
        ((FrameLayout.LayoutParams) taskThumbnailView.getLayoutParams()).topMargin = 0;
        int i8 = i5 - i7;
        float f4 = i8;
        int round = Math.round((splitConfigurationOptions$SplitBounds.appsStackedVertically ? splitConfigurationOptions$SplitBounds.dividerHeightPercent : splitConfigurationOptions$SplitBounds.dividerWidthPercent) * f4);
        int i9 = (int) (f4 * (splitConfigurationOptions$SplitBounds.appsStackedVertically ? splitConfigurationOptions$SplitBounds.topTaskPercent : splitConfigurationOptions$SplitBounds.leftTaskPercent));
        taskThumbnailView2.setTranslationY(0.0f);
        taskThumbnailView.setTranslationY(i7 + i6 + round);
        taskThumbnailView.measure(View.MeasureSpec.makeMeasureSpec(i4, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(i9, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        taskThumbnailView2.measure(View.MeasureSpec.makeMeasureSpec(i4, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec((i8 - i9) - round, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final void setSplitIconParams(IconView iconView, IconView iconView2, int i4, int i5, int i6, int i7, int i8, boolean z4, DeviceProfile deviceProfile, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds) {
        int i9;
        int i10;
        int i11;
        super.setSplitIconParams(iconView, iconView2, i4, i5, i6, i7, i8, z4, deviceProfile, splitConfigurationOptions$SplitBounds);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) iconView.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) iconView2.getLayoutParams();
        int i12 = deviceProfile.getInsets().top - deviceProfile.getInsets().bottom;
        float f4 = deviceProfile.heightPx;
        float f5 = ((i9 - i12) / 2) / f4;
        float f6 = i12 / f4;
        float f7 = i7 - deviceProfile.overviewTaskThumbnailTopMarginPx;
        int i13 = (int) (f5 * f7);
        int i14 = (int) (f7 * f6);
        layoutParams.gravity = (z4 ? 8388613 : 8388611) | 80;
        layoutParams2.gravity = (z4 ? 8388613 : 8388611) | 80;
        iconView.setTranslationX(0.0f);
        iconView2.setTranslationX(0.0f);
        if (splitConfigurationOptions$SplitBounds.initiatedFromSeascape) {
            iconView.setTranslationY(i4 + i11);
            iconView2.setTranslationY((-i13) - i14);
        } else {
            iconView.setTranslationY(i4 + i10);
            iconView2.setTranslationY(-i13);
        }
        iconView.setLayoutParams(layoutParams);
        iconView2.setLayoutParams(layoutParams2);
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final void setSplitInstructionsParams(View view, DeviceProfile deviceProfile, int i4, int i5) {
        view.setPivotX(0.0f);
        view.setPivotY(i4);
        view.setRotation(270.0f);
        int dimensionPixelSize = view.getResources().getDimensionPixelSize(R.dimen.split_instructions_bottom_margin_phone_landscape);
        view.setTranslationX((i5 - dimensionPixelSize) + deviceProfile.getInsets().right);
        view.setTranslationY((((-i4) + i5) / 2.0f) + ((deviceProfile.getInsets().bottom - deviceProfile.getInsets().top) / 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.gravity = 21;
        view.setLayoutParams(layoutParams);
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final void setSplitTaskSwipeRect(DeviceProfile deviceProfile, Rect rect, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds, int i4) {
        boolean z4 = splitConfigurationOptions$SplitBounds.appsStackedVertically;
        float f4 = z4 ? splitConfigurationOptions$SplitBounds.topTaskPercent : splitConfigurationOptions$SplitBounds.leftTaskPercent;
        float f5 = z4 ? splitConfigurationOptions$SplitBounds.dividerHeightPercent : splitConfigurationOptions$SplitBounds.dividerWidthPercent;
        if (i4 == 0) {
            rect.top += (int) ((1.0f - f4) * rect.height());
        } else {
            rect.bottom -= (int) ((f4 + f5) * rect.height());
        }
    }

    @Override // com.android.launcher3.touch.LandscapePagedViewHandler, com.android.launcher3.touch.PagedOrientationHandler
    public final void setTaskIconParams(FrameLayout.LayoutParams layoutParams, int i4, int i5, int i6, boolean z4) {
        layoutParams.gravity = (z4 ? 8388613 : 8388611) | 16;
        layoutParams.leftMargin = (-i5) - (i4 / 2);
        layoutParams.rightMargin = 0;
        layoutParams.topMargin = i6 / 2;
        layoutParams.bottomMargin = 0;
    }
}
