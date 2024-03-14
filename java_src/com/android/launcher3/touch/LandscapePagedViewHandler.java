package com.android.launcher3.touch;

import android.content.res.Resources;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.ShapeDrawable;
import android.util.FloatProperty;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.util.SplitConfigurationOptions$SplitBounds;
import com.android.launcher3.util.SplitConfigurationOptions$SplitPositionOption;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.C0616y1;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.views.FloatingTaskView;
import com.android.quickstep.views.IconView;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class LandscapePagedViewHandler implements PagedOrientationHandler {
    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void adjustFloatingIconStartVelocity(PointF pointF) {
        pointF.set(-pointF.y, pointF.x);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void fixBoundsForHomeAnimStartRect(RectF rectF, DeviceProfile deviceProfile) {
        float f4 = rectF.left;
        int i4 = deviceProfile.heightPx;
        if (f4 > i4) {
            rectF.offsetTo(0.0f, rectF.top);
        } else if (f4 < (-i4)) {
            rectF.offsetTo(0.0f, rectF.top);
        }
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getCenterForPage(View view, Rect rect) {
        return ((((view.getMeasuredWidth() + view.getPaddingLeft()) + rect.left) - rect.right) - view.getPaddingRight()) / 2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final PagedOrientationHandler.ChildBounds getChildBounds(View view, int i4, int i5, boolean z4) {
        int measuredHeight = view.getMeasuredHeight();
        int i6 = i4 + measuredHeight;
        int measuredWidth = view.getMeasuredWidth();
        int i7 = i5 - (measuredWidth / 2);
        if (z4) {
            view.layout(i7, i4, measuredWidth + i7, i6);
        }
        return new PagedOrientationHandler.ChildBounds(measuredHeight, i6);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getChildStart(View view) {
        return view.getTop();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getClearAllSidePadding(RecentsView recentsView, boolean z4) {
        return (z4 ? recentsView.getPaddingBottom() : -recentsView.getPaddingTop()) / 2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getDefaultSplitPosition(DeviceProfile deviceProfile) {
        throw new IllegalStateException("Default position not available in fake landscape");
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getDegreesRotated() {
        return 90.0f;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getDistanceToBottomOfRect(DeviceProfile deviceProfile, Rect rect) {
        return rect.left;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public Pair getDwbLayoutTranslations(int i4, int i5, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds, DeviceProfile deviceProfile, View[] viewArr, int i6, View view) {
        float f4;
        float f5;
        int i7;
        boolean z4 = view.getLayoutDirection() == 1;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        float f6 = 0.0f;
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setRotation(getDegreesRotated());
        float height = view.getHeight();
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) viewArr[0].getLayoutParams();
        layoutParams.gravity = (z4 ? 8388613 : 8388611) | 48;
        if (splitConfigurationOptions$SplitBounds == null) {
            layoutParams.width = i5 - layoutParams2.topMargin;
            return new Pair(Float.valueOf(height), Float.valueOf(Integer.valueOf(layoutParams2.topMargin).floatValue()));
        }
        int i8 = splitConfigurationOptions$SplitBounds.leftTopTaskId;
        if (i6 == i8) {
            layoutParams.width = viewArr[0].getMeasuredHeight();
        } else {
            layoutParams.width = viewArr[1].getMeasuredHeight();
        }
        if (i6 == splitConfigurationOptions$SplitBounds.rightBottomTaskId) {
            if (splitConfigurationOptions$SplitBounds.appsStackedVertically) {
                f4 = splitConfigurationOptions$SplitBounds.topTaskPercent;
                f5 = splitConfigurationOptions$SplitBounds.dividerHeightPercent;
            } else {
                f4 = splitConfigurationOptions$SplitBounds.leftTaskPercent;
                f5 = splitConfigurationOptions$SplitBounds.dividerWidthPercent;
            }
            float f7 = f4 + f5;
            f6 = ((i5 - i7) * f7) + layoutParams2.topMargin;
        }
        if (i6 == i8) {
            f6 = layoutParams2.topMargin;
        }
        return new Pair(Float.valueOf(height), Float.valueOf(f6));
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getEnd(RectF rectF) {
        return rectF.bottom;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void getFinalSplitPlaceholderBounds(int i4, DeviceProfile deviceProfile, int i5, Rect rect, Rect rect2) {
        int i6 = deviceProfile.heightPx;
        int i7 = i6 / 2;
        int i8 = deviceProfile.widthPx;
        rect.set(0, 0, i8, i7 - i4);
        rect2.set(0, i7 + i4, i8, i6);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getFloatingTaskOffscreenTranslationTarget(FloatingTaskView floatingTaskView, RectF rectF, int i4, DeviceProfile deviceProfile) {
        return floatingTaskView.getTranslationY() - rectF.height();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final Float getFloatingTaskPrimaryTranslation(View view, DeviceProfile deviceProfile) {
        return Float.valueOf(view.getTranslationY());
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void getInitialSplitPlaceholderBounds(int i4, int i5, DeviceProfile deviceProfile, int i6, Rect rect) {
        int i7;
        rect.set(0, 0, deviceProfile.widthPx, Math.max(deviceProfile.getInsets().top - deviceProfile.splitPlaceholderInset, 0) + i4);
        rect.inset(i5, 0);
        rect.top -= ((int) ((((deviceProfile.heightPx * 1.0f) / 2.0f) * (i7 - (i5 * 2))) / deviceProfile.widthPx)) - i4;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getMeasuredSize(View view) {
        return view.getMeasuredHeight();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getPrimaryDirection(MotionEvent motionEvent, int i4) {
        return motionEvent.getY(i4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getPrimaryScale(View view) {
        return view.getScaleY();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getPrimaryScroll(View view) {
        return view.getScrollY();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getPrimarySize(View view) {
        return view.getHeight();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getPrimaryValue(float f4, float f5) {
        return f5;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getPrimaryVelocity(VelocityTracker velocityTracker, int i4) {
        return velocityTracker.getYVelocity(i4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final FloatProperty getPrimaryViewTranslate() {
        return LauncherAnimUtils.VIEW_TRANSLATE_Y;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public boolean getRecentsRtlSetting(Resources resources) {
        return !Utilities.isRtl(resources);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getRotation() {
        return 1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getScrollOffsetEnd(View view, Rect rect) {
        return (view.getHeight() - view.getPaddingBottom()) - rect.bottom;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getScrollOffsetStart(View view, Rect rect) {
        return view.getPaddingTop() + rect.top;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getSecondaryDimension(View view) {
        return view.getWidth();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getSecondaryTranslationDirectionFactor() {
        return 1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getSecondaryValue(float f4, float f5) {
        return f4;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final FloatProperty getSecondaryViewTranslate() {
        return LauncherAnimUtils.VIEW_TRANSLATE_X;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public List getSplitPositionOptions(DeviceProfile deviceProfile) {
        return Collections.singletonList(new SplitConfigurationOptions$SplitPositionOption(R.drawable.ic_split_horizontal, 0));
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final Pair getSplitSelectTaskOffset(FloatProperty floatProperty, FloatProperty floatProperty2, DeviceProfile deviceProfile) {
        return new Pair(floatProperty, floatProperty2);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getSplitTranslationDirectionFactor(int i4, DeviceProfile deviceProfile) {
        return i4 == 1 ? -1 : 1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getStart(RectF rectF) {
        return rectF.top;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getTaskDragDisplacementFactor(boolean z4) {
        return z4 ? 1 : -1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getTaskMenuWidth(TaskThumbnailView taskThumbnailView, DeviceProfile deviceProfile, int i4) {
        return i4 == -1 ? taskThumbnailView.getMeasuredWidth() : taskThumbnailView.getMeasuredHeight();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getTaskMenuX(float f4, TaskThumbnailView taskThumbnailView, DeviceProfile deviceProfile, float f5) {
        return (taskThumbnailView.getMeasuredWidth() + f4) - f5;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public float getTaskMenuY(float f4, TaskThumbnailView taskThumbnailView, int i4, View view, float f5) {
        int i5 = ((FrameLayout.LayoutParams) ((BaseDragLayer.LayoutParams) view.getLayoutParams())).width;
        if (i4 == -1) {
            return ((taskThumbnailView.getMeasuredHeight() - i5) / 2.0f) + f4 + f5;
        }
        return f4 + f5;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public int getUpDirection(boolean z4) {
        return z4 ? 2 : 1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public SingleAxisSwipeDetector.Direction getUpDownSwipeDirection() {
        return SingleAxisSwipeDetector.HORIZONTAL;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public boolean isGoingUp(float f4, boolean z4) {
        return !z4 ? f4 <= 0.0f : f4 >= 0.0f;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final boolean isLayoutNaturalToLauncher() {
        return false;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void measureGroupedTaskViewThumbnailBounds(TaskThumbnailView taskThumbnailView, TaskThumbnailView taskThumbnailView2, int i4, int i5, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds, DeviceProfile deviceProfile, boolean z4) {
        int i6;
        int i7 = i5 - deviceProfile.overviewTaskThumbnailTopMarginPx;
        float f4 = i7;
        int round = Math.round((splitConfigurationOptions$SplitBounds.appsStackedVertically ? splitConfigurationOptions$SplitBounds.dividerHeightPercent : splitConfigurationOptions$SplitBounds.dividerWidthPercent) * f4);
        int i8 = (int) (f4 * (splitConfigurationOptions$SplitBounds.appsStackedVertically ? splitConfigurationOptions$SplitBounds.topTaskPercent : splitConfigurationOptions$SplitBounds.leftTaskPercent));
        taskThumbnailView2.setTranslationY(i6 + i8 + round);
        taskThumbnailView.measure(View.MeasureSpec.makeMeasureSpec(i4, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(i8, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        taskThumbnailView2.measure(View.MeasureSpec.makeMeasureSpec(i4, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec((i7 - i8) - round, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void set(TaskViewSimulator taskViewSimulator, C0616y1 c0616y1, int i4, int i5) {
        c0616y1.a(i5, i4, taskViewSimulator);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setFloatingTaskPrimaryTranslation(View view, float f4, DeviceProfile deviceProfile) {
        view.setTranslationY(f4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setLayoutParamsForTaskMenuOptionItem(LinearLayout.LayoutParams layoutParams, LinearLayout linearLayout) {
        linearLayout.setOrientation(0);
        layoutParams.width = -1;
        layoutParams.height = -2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setMaxScroll(AccessibilityEvent accessibilityEvent, int i4) {
        accessibilityEvent.setMaxScrollY(i4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setPrimary(Object obj, k kVar, int i4) {
        kVar.a(0, i4, obj);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setPrimaryScale(IconView iconView, float f4) {
        iconView.setScaleY(f4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setSecondary(Object obj, k kVar, float f4) {
        kVar.b(obj, f4, 0.0f);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setSecondaryScale(IconView iconView, float f4) {
        iconView.setScaleX(f4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void setSplitIconParams(IconView iconView, IconView iconView2, int i4, int i5, int i6, int i7, int i8, boolean z4, DeviceProfile deviceProfile, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds) {
        int i9;
        int i10;
        int i11;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) iconView.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        int i12 = deviceProfile.getInsets().top - deviceProfile.getInsets().bottom;
        float f4 = deviceProfile.heightPx;
        float f5 = ((i9 - i12) / 2) / f4;
        float f6 = i12 / f4;
        float f7 = i7 - deviceProfile.overviewTaskThumbnailTopMarginPx;
        int i13 = (int) (f5 * f7);
        int i14 = (int) (f7 * f6);
        layoutParams.gravity = (z4 ? 8388611 : 8388613) | 80;
        layoutParams2.gravity = (z4 ? 8388611 : 8388613) | 80;
        iconView.setTranslationX(0.0f);
        iconView2.setTranslationX(0.0f);
        if (splitConfigurationOptions$SplitBounds.initiatedFromSeascape) {
            iconView.setTranslationY((-i13) - i14);
            iconView2.setTranslationY(i11 + i4);
        } else {
            iconView.setTranslationY(-i13);
            iconView2.setTranslationY(i10 + i4);
        }
        iconView.setLayoutParams(layoutParams);
        iconView2.setLayoutParams(layoutParams2);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void setSplitInstructionsParams(View view, DeviceProfile deviceProfile, int i4, int i5) {
        view.setPivotX(0.0f);
        view.setPivotY(i4);
        view.setRotation(getDegreesRotated());
        view.setTranslationX(view.getResources().getDimensionPixelSize(R.dimen.split_instructions_bottom_margin_phone_landscape) - deviceProfile.getInsets().left);
        view.setTranslationY((((-i4) - i5) / 2.0f) + ((deviceProfile.getInsets().bottom - deviceProfile.getInsets().top) / 2));
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.gravity = 19;
        view.setLayoutParams(layoutParams);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void setSplitTaskSwipeRect(DeviceProfile deviceProfile, Rect rect, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds, int i4) {
        boolean z4 = splitConfigurationOptions$SplitBounds.appsStackedVertically;
        float f4 = z4 ? splitConfigurationOptions$SplitBounds.topTaskPercent : splitConfigurationOptions$SplitBounds.leftTaskPercent;
        float f5 = z4 ? splitConfigurationOptions$SplitBounds.dividerHeightPercent : splitConfigurationOptions$SplitBounds.dividerWidthPercent;
        if (i4 == 0) {
            rect.bottom = rect.top + ((int) (rect.height() * f4));
        } else {
            rect.top += (int) ((f4 + f5) * rect.height());
        }
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public void setTaskIconParams(FrameLayout.LayoutParams layoutParams, int i4, int i5, int i6, boolean z4) {
        layoutParams.gravity = (z4 ? 8388611 : 8388613) | 16;
        layoutParams.rightMargin = (-i5) - (i4 / 2);
        layoutParams.leftMargin = 0;
        layoutParams.topMargin = i6 / 2;
        layoutParams.bottomMargin = 0;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setTaskOptionsMenuLayoutOrientation(LinearLayout linearLayout, int i4, ShapeDrawable shapeDrawable) {
        linearLayout.setOrientation(1);
        shapeDrawable.setIntrinsicHeight(i4);
        linearLayout.setDividerDrawable(shapeDrawable);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void updateSplitIconParams(View view, float f4, float f5, float f6, float f7, int i4, int i5, DeviceProfile deviceProfile, int i6) {
        view.setX((f4 / f6) - ((i4 * 1.0f) / 2.0f));
        view.setY(((f5 + (Math.max(deviceProfile.getInsets().top - deviceProfile.splitPlaceholderInset, 0) / 2.0f)) / f7) - ((i5 * 1.0f) / 2.0f));
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getPrimarySize(RectF rectF) {
        return rectF.height();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getPrimaryValue(int i4, int i5) {
        return i5;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getSecondaryValue(int i4, int i5) {
        return i4;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setPrimary(Object obj, k kVar, float f4) {
        kVar.b(obj, 0.0f, f4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final Object getPrimaryValue(Object obj, Object obj2) {
        return obj2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final Object getSecondaryValue(Object obj, Object obj2) {
        return obj;
    }
}
