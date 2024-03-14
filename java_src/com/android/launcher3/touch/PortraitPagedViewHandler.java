package com.android.launcher3.touch;

import android.content.res.Resources;
import android.graphics.Matrix;
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
import com.android.quickstep.C0616y1;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.views.FloatingTaskView;
import com.android.quickstep.views.IconView;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public final class PortraitPagedViewHandler implements PagedOrientationHandler {
    private final Matrix mTmpMatrix = new Matrix();
    private final RectF mTmpRectF = new RectF();

    private static int getPlaceholderSizeAdjustment(DeviceProfile deviceProfile, boolean z4) {
        int i4;
        if (deviceProfile.isLandscape) {
            Rect insets = deviceProfile.getInsets();
            i4 = z4 ? insets.right : insets.left;
        } else {
            i4 = deviceProfile.getInsets().top;
        }
        return Math.max(i4 - deviceProfile.splitPlaceholderInset, 0);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void adjustFloatingIconStartVelocity(PointF pointF) {
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void fixBoundsForHomeAnimStartRect(RectF rectF, DeviceProfile deviceProfile) {
        float f4 = rectF.left;
        int i4 = deviceProfile.widthPx;
        if (f4 > i4) {
            rectF.offsetTo(0.0f, rectF.top);
        } else if (f4 < (-i4)) {
            rectF.offsetTo(0.0f, rectF.top);
        }
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getCenterForPage(View view, Rect rect) {
        return ((((view.getMeasuredHeight() + view.getPaddingTop()) + rect.top) - rect.bottom) - view.getPaddingBottom()) / 2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final PagedOrientationHandler.ChildBounds getChildBounds(View view, int i4, int i5, boolean z4) {
        int measuredWidth = view.getMeasuredWidth();
        int i6 = i4 + measuredWidth;
        int measuredHeight = view.getMeasuredHeight();
        int i7 = i5 - (measuredHeight / 2);
        if (z4) {
            view.layout(i4, i7, i6, measuredHeight + i7);
        }
        return new PagedOrientationHandler.ChildBounds(measuredWidth, i6);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getChildStart(View view) {
        return view.getLeft();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getClearAllSidePadding(RecentsView recentsView, boolean z4) {
        return (z4 ? recentsView.getPaddingRight() : -recentsView.getPaddingLeft()) / 2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getDefaultSplitPosition(DeviceProfile deviceProfile) {
        if (deviceProfile.isTablet) {
            return deviceProfile.isLandscape ? 1 : 0;
        }
        throw new IllegalStateException("Default position available only for large screens");
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getDegreesRotated() {
        return 0.0f;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getDistanceToBottomOfRect(DeviceProfile deviceProfile, Rect rect) {
        return deviceProfile.heightPx - rect.bottom;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final Pair getDwbLayoutTranslations(int i4, int i5, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds, DeviceProfile deviceProfile, View[] viewArr, int i6, View view) {
        float f4;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        float f5 = 0.0f;
        Float valueOf = Float.valueOf(0.0f);
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setRotation(0.0f);
        if (splitConfigurationOptions$SplitBounds == null) {
            layoutParams.width = -1;
            layoutParams.gravity = 81;
            return new Pair(valueOf, valueOf);
        }
        layoutParams.gravity = (deviceProfile.isLandscape ? 8388611 : 1) | 80;
        int i7 = splitConfigurationOptions$SplitBounds.leftTopTaskId;
        if (i6 == i7) {
            layoutParams.width = viewArr[0].getMeasuredWidth();
        } else {
            layoutParams.width = viewArr[1].getMeasuredWidth();
        }
        boolean z4 = deviceProfile.isLandscape;
        float f6 = splitConfigurationOptions$SplitBounds.topTaskPercent;
        float f7 = splitConfigurationOptions$SplitBounds.leftTaskPercent;
        boolean z5 = splitConfigurationOptions$SplitBounds.appsStackedVertically;
        if (z4) {
            if (i6 == splitConfigurationOptions$SplitBounds.rightBottomTaskId) {
                if (!z5) {
                    f6 = f7;
                }
                float f8 = i4;
                f4 = 0.0f;
                f5 = (f8 * (z5 ? splitConfigurationOptions$SplitBounds.dividerHeightPercent : splitConfigurationOptions$SplitBounds.dividerWidthPercent)) + (f6 * f8);
            }
            f4 = 0.0f;
        } else {
            if (i6 == i7) {
                f4 = -((i5 - ((FrameLayout.LayoutParams) viewArr[0].getLayoutParams()).topMargin) * (z5 ? 1.0f - f6 : 1.0f - f7));
            }
            f4 = 0.0f;
        }
        return new Pair(Float.valueOf(f5), Float.valueOf(f4));
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getEnd(RectF rectF) {
        return rectF.right;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void getFinalSplitPlaceholderBounds(int i4, DeviceProfile deviceProfile, int i5, Rect rect, Rect rect2) {
        int i6 = deviceProfile.heightPx;
        int i7 = i6 / 2;
        int i8 = deviceProfile.widthPx;
        rect.set(0, 0, i8, i7 - i4);
        rect2.set(0, i7 + i4, i8, i6);
        if (deviceProfile.isLandscape) {
            boolean z4 = i5 == 1;
            float f4 = i6;
            float f5 = i8;
            float f6 = f4 / f5;
            Matrix matrix = this.mTmpMatrix;
            matrix.reset();
            matrix.postRotate(z4 ? 90.0f : 270.0f);
            if (!z4) {
                f4 = 0.0f;
            }
            if (z4) {
                f5 = 0.0f;
            }
            matrix.postTranslate(f4, f5);
            matrix.postScale(1.0f / f6, f6);
            RectF rectF = this.mTmpRectF;
            rectF.set(rect);
            matrix.mapRect(rectF);
            rectF.roundOut(rect);
            rectF.set(rect2);
            matrix.mapRect(rectF);
            rectF.roundOut(rect2);
        }
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getFloatingTaskOffscreenTranslationTarget(FloatingTaskView floatingTaskView, RectF rectF, int i4, DeviceProfile deviceProfile) {
        if (deviceProfile.isLandscape) {
            float translationX = floatingTaskView.getTranslationX();
            return i4 == 0 ? translationX - rectF.width() : translationX + rectF.width();
        }
        return floatingTaskView.getTranslationY() - rectF.height();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final Float getFloatingTaskPrimaryTranslation(View view, DeviceProfile deviceProfile) {
        return Float.valueOf(deviceProfile.isLandscape ? view.getTranslationX() : view.getTranslationY());
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void getInitialSplitPlaceholderBounds(int i4, int i5, DeviceProfile deviceProfile, int i6, Rect rect) {
        int i7 = deviceProfile.widthPx;
        boolean z4 = i6 == 1;
        rect.set(0, 0, i7, getPlaceholderSizeAdjustment(deviceProfile, z4) + i4);
        boolean z5 = deviceProfile.isLandscape;
        int i8 = deviceProfile.heightPx;
        if (!z5) {
            rect.inset(i5, 0);
            rect.top -= ((int) ((((i8 * 1.0f) / 2.0f) * (i7 - (i5 * 2))) / i7)) - i4;
            return;
        }
        float f4 = i8;
        float f5 = i7;
        float f6 = f4 / f5;
        Matrix matrix = this.mTmpMatrix;
        matrix.reset();
        matrix.postRotate(z4 ? 90.0f : 270.0f);
        matrix.postTranslate(z4 ? f5 : 0.0f, z4 ? 0.0f : f5);
        matrix.postScale(1.0f, f6);
        RectF rectF = this.mTmpRectF;
        rectF.set(rect);
        matrix.mapRect(rectF);
        rectF.inset(0.0f, i5);
        rectF.roundOut(rect);
        int i9 = (int) ((((f5 * 1.0f) / 2.0f) * (i8 - (i5 * 2))) / f4);
        int width = rect.width();
        if (z4) {
            rect.right = (i9 - width) + rect.right;
        } else {
            rect.left -= i9 - width;
        }
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getMeasuredSize(View view) {
        return view.getMeasuredWidth();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getPrimaryDirection(MotionEvent motionEvent, int i4) {
        return motionEvent.getX(i4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getPrimaryScale(View view) {
        return view.getScaleX();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getPrimaryScroll(View view) {
        return view.getScrollX();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getPrimarySize(View view) {
        return view.getWidth();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getPrimaryValue(float f4, float f5) {
        return f4;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getPrimaryVelocity(VelocityTracker velocityTracker, int i4) {
        return velocityTracker.getXVelocity(i4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final FloatProperty getPrimaryViewTranslate() {
        return LauncherAnimUtils.VIEW_TRANSLATE_X;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final boolean getRecentsRtlSetting(Resources resources) {
        return !Utilities.isRtl(resources);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getRotation() {
        return 0;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getScrollOffsetEnd(View view, Rect rect) {
        return (view.getWidth() - view.getPaddingRight()) - rect.right;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getScrollOffsetStart(View view, Rect rect) {
        return view.getPaddingLeft() + rect.left;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getSecondaryDimension(View view) {
        return view.getHeight();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getSecondaryTranslationDirectionFactor() {
        return -1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getSecondaryValue(float f4, float f5) {
        return f5;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final FloatProperty getSecondaryViewTranslate() {
        return LauncherAnimUtils.VIEW_TRANSLATE_Y;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final List getSplitPositionOptions(DeviceProfile deviceProfile) {
        boolean z4 = deviceProfile.isTablet;
        int i4 = R.drawable.ic_split_vertical;
        boolean z5 = deviceProfile.isLandscape;
        if (z4) {
            String[] strArr = Utilities.EMPTY_STRING_ARRAY;
            if (z5) {
                i4 = R.drawable.ic_split_horizontal;
            }
            return Collections.singletonList(new SplitConfigurationOptions$SplitPositionOption(i4, z5 ? 1 : 0));
        }
        ArrayList arrayList = new ArrayList();
        if (deviceProfile.isSeascape()) {
            arrayList.add(new SplitConfigurationOptions$SplitPositionOption(R.drawable.ic_split_horizontal, 1));
        } else if (z5) {
            arrayList.add(new SplitConfigurationOptions$SplitPositionOption(R.drawable.ic_split_horizontal, 0));
        } else {
            arrayList.add(new SplitConfigurationOptions$SplitPositionOption(R.drawable.ic_split_vertical, 0));
        }
        return arrayList;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final Pair getSplitSelectTaskOffset(FloatProperty floatProperty, FloatProperty floatProperty2, DeviceProfile deviceProfile) {
        return deviceProfile.isLandscape ? new Pair(floatProperty, floatProperty2) : new Pair(floatProperty2, floatProperty);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getSplitTranslationDirectionFactor(int i4, DeviceProfile deviceProfile) {
        return (deviceProfile.isLandscape && i4 == 1) ? -1 : 1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getStart(RectF rectF) {
        return rectF.left;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getTaskDragDisplacementFactor(boolean z4) {
        return 1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getTaskMenuWidth(TaskThumbnailView taskThumbnailView, DeviceProfile deviceProfile, int i4) {
        return (!deviceProfile.isLandscape || deviceProfile.isTablet) ? taskThumbnailView.getMeasuredWidth() : taskThumbnailView.getMeasuredHeight();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getTaskMenuX(float f4, TaskThumbnailView taskThumbnailView, DeviceProfile deviceProfile, float f5) {
        if (deviceProfile.isLandscape) {
            return ((taskThumbnailView.getMeasuredWidth() - taskThumbnailView.getMeasuredHeight()) / 2.0f) + f4 + f5;
        }
        return f4 + f5;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getTaskMenuY(float f4, TaskThumbnailView taskThumbnailView, int i4, View view, float f5) {
        return f4 + f5;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getUpDirection(boolean z4) {
        return 1;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final SingleAxisSwipeDetector.Direction getUpDownSwipeDirection() {
        return SingleAxisSwipeDetector.VERTICAL;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final boolean isGoingUp(float f4, boolean z4) {
        return f4 < 0.0f;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final boolean isLayoutNaturalToLauncher() {
        return true;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void measureGroupedTaskViewThumbnailBounds(TaskThumbnailView taskThumbnailView, TaskThumbnailView taskThumbnailView2, int i4, int i5, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds, DeviceProfile deviceProfile, boolean z4) {
        int i6;
        int i7;
        int i8;
        int i9 = deviceProfile.overviewTaskThumbnailTopMarginPx;
        int i10 = i5 - i9;
        boolean z5 = splitConfigurationOptions$SplitBounds.appsStackedVertically;
        float f4 = z5 ? splitConfigurationOptions$SplitBounds.dividerHeightPercent : splitConfigurationOptions$SplitBounds.dividerWidthPercent;
        float f5 = z5 ? splitConfigurationOptions$SplitBounds.topTaskPercent : splitConfigurationOptions$SplitBounds.leftTaskPercent;
        if (deviceProfile.isLandscape) {
            float f6 = i4;
            int round = Math.round(f4 * f6);
            int round2 = Math.round(f6 * f5);
            int i11 = (i4 - round2) - round;
            int i12 = round + round2;
            if (z4) {
                taskThumbnailView.setTranslationX(-i12);
                taskThumbnailView2.setTranslationX(0.0f);
            } else {
                taskThumbnailView2.setTranslationX(i12);
                taskThumbnailView.setTranslationX(0.0f);
            }
            taskThumbnailView2.setTranslationY(i9);
            taskThumbnailView.setTranslationY(0.0f);
            i7 = i11;
            i4 = round2;
            i8 = i10;
        } else {
            int i13 = deviceProfile.isTransientTaskbar ? 0 : deviceProfile.taskbarHeight;
            float f7 = i10;
            float f8 = f7 / (i6 - i13);
            float f9 = deviceProfile.availableHeightPx * f5;
            float round3 = Math.round(f7 * f4);
            int round4 = Math.round(f9 * f8);
            int round5 = Math.round((i10 - round4) - round3);
            taskThumbnailView2.setTranslationY(round4 + i9 + round3);
            ((FrameLayout.LayoutParams) taskThumbnailView2.getLayoutParams()).topMargin = 0;
            ((FrameLayout.LayoutParams) taskThumbnailView.getLayoutParams()).topMargin = i9;
            taskThumbnailView.setTranslationY(0.0f);
            taskThumbnailView2.setTranslationX(0.0f);
            taskThumbnailView.setTranslationX(0.0f);
            i7 = i4;
            i8 = round5;
            i10 = round4;
        }
        taskThumbnailView.measure(View.MeasureSpec.makeMeasureSpec(i4, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(i10, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        taskThumbnailView2.measure(View.MeasureSpec.makeMeasureSpec(i7, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE), View.MeasureSpec.makeMeasureSpec(i8, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        taskThumbnailView.setScaleX(1.0f);
        taskThumbnailView2.setScaleX(1.0f);
        taskThumbnailView.setScaleY(1.0f);
        taskThumbnailView2.setScaleY(1.0f);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void set(TaskViewSimulator taskViewSimulator, C0616y1 c0616y1, int i4, int i5) {
        c0616y1.a(i4, i5, taskViewSimulator);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setFloatingTaskPrimaryTranslation(View view, float f4, DeviceProfile deviceProfile) {
        if (deviceProfile.isLandscape) {
            view.setTranslationX(f4);
        } else {
            view.setTranslationY(f4);
        }
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setLayoutParamsForTaskMenuOptionItem(LinearLayout.LayoutParams layoutParams, LinearLayout linearLayout) {
        linearLayout.setOrientation(0);
        layoutParams.width = -1;
        layoutParams.height = -2;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setMaxScroll(AccessibilityEvent accessibilityEvent, int i4) {
        accessibilityEvent.setMaxScrollX(i4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setPrimary(Object obj, k kVar, int i4) {
        kVar.a(i4, 0, obj);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setPrimaryScale(IconView iconView, float f4) {
        iconView.setScaleX(f4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setSecondary(Object obj, k kVar, float f4) {
        kVar.b(obj, 0.0f, f4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setSecondaryScale(IconView iconView, float f4) {
        iconView.setScaleY(f4);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setSplitIconParams(IconView iconView, IconView iconView2, int i4, int i5, int i6, int i7, int i8, boolean z4, DeviceProfile deviceProfile, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds) {
        int i9;
        int i10;
        int i11;
        int i12;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) iconView.getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        if (deviceProfile.isLandscape) {
            int i13 = deviceProfile.isSeascape() ? deviceProfile.getInsets().right : deviceProfile.getInsets().left;
            float f4 = deviceProfile.widthPx;
            float f5 = ((i9 - i13) / 2) / f4;
            float f6 = i13 / f4;
            float f7 = i8 + 0;
            int i14 = (int) (f5 * f7);
            int i15 = (int) (f7 * f6);
            if (deviceProfile.isSeascape()) {
                layoutParams.gravity = (z4 ? 8388613 : 8388611) | 48;
                layoutParams2.gravity = (z4 ? 8388613 : 8388611) | 48;
                if (splitConfigurationOptions$SplitBounds.initiatedFromSeascape) {
                    iconView.setTranslationX(i14 - i4);
                    iconView2.setTranslationX(i14);
                } else {
                    iconView.setTranslationX(i12 - i4);
                    iconView2.setTranslationX(i14 + i15);
                }
            } else {
                layoutParams.gravity = (z4 ? 8388611 : 8388613) | 48;
                layoutParams2.gravity = (z4 ? 8388611 : 8388613) | 48;
                if (splitConfigurationOptions$SplitBounds.initiatedFromSeascape) {
                    iconView.setTranslationX((-i14) - i15);
                    iconView2.setTranslationX(i10 + i4);
                } else {
                    iconView.setTranslationX(-i14);
                    iconView2.setTranslationX(i11 + i4);
                }
            }
        } else {
            layoutParams.gravity = 49;
            float f8 = i4 / 2.0f;
            iconView.setTranslationX(-f8);
            layoutParams2.gravity = 49;
            iconView2.setTranslationX(f8);
        }
        iconView.setTranslationY(0.0f);
        iconView2.setTranslationY(0.0f);
        iconView.setLayoutParams(layoutParams);
        iconView2.setLayoutParams(layoutParams2);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setSplitInstructionsParams(View view, DeviceProfile deviceProfile, int i4, int i5) {
        view.setPivotX(0.0f);
        view.setPivotY(i4);
        view.setRotation(0.0f);
        int dimensionPixelSize = deviceProfile.isPhone ? deviceProfile.isLandscape ? view.getResources().getDimensionPixelSize(R.dimen.split_instructions_bottom_margin_phone_landscape) : view.getResources().getDimensionPixelSize(R.dimen.split_instructions_bottom_margin_phone_portrait) : deviceProfile.getOverviewActionsClaimedSpaceBelow();
        int i6 = deviceProfile.getInsets().bottom;
        view.setTranslationX((deviceProfile.getInsets().right - deviceProfile.getInsets().left) / 2);
        view.setTranslationY((-dimensionPixelSize) + i6);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        layoutParams.gravity = 81;
        view.setLayoutParams(layoutParams);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setSplitTaskSwipeRect(DeviceProfile deviceProfile, Rect rect, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds, int i4) {
        int i5;
        boolean z4 = splitConfigurationOptions$SplitBounds.appsStackedVertically;
        float f4 = z4 ? splitConfigurationOptions$SplitBounds.topTaskPercent : splitConfigurationOptions$SplitBounds.leftTaskPercent;
        float f5 = z4 ? splitConfigurationOptions$SplitBounds.dividerHeightPercent : splitConfigurationOptions$SplitBounds.dividerWidthPercent;
        int i6 = deviceProfile.isTransientTaskbar ? 0 : deviceProfile.taskbarHeight;
        float height = rect.height() / (i5 - i6);
        float f6 = deviceProfile.availableHeightPx;
        float f7 = f6 * f4 * height;
        float f8 = f6 * f5 * height;
        boolean z5 = deviceProfile.isLandscape;
        if (i4 == 0) {
            if (z5) {
                rect.right = Math.round(rect.width() * f4) + rect.left;
            } else {
                rect.bottom = Math.round(rect.top + f7);
            }
        } else if (z5) {
            rect.left = Math.round((f4 + f5) * rect.width()) + rect.left;
        } else {
            rect.top = Math.round(f7 + f8) + rect.top;
        }
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setTaskIconParams(FrameLayout.LayoutParams layoutParams, int i4, int i5, int i6, boolean z4) {
        layoutParams.gravity = 49;
        layoutParams.rightMargin = 0;
        layoutParams.leftMargin = 0;
        layoutParams.bottomMargin = 0;
        layoutParams.topMargin = 0;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setTaskOptionsMenuLayoutOrientation(LinearLayout linearLayout, int i4, ShapeDrawable shapeDrawable) {
        linearLayout.setOrientation(1);
        shapeDrawable.setIntrinsicHeight(i4);
        linearLayout.setDividerDrawable(shapeDrawable);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void updateSplitIconParams(View view, float f4, float f5, float f6, float f7, int i4, int i5, DeviceProfile deviceProfile, int i6) {
        boolean z4 = i6 == 1;
        float placeholderSizeAdjustment = getPlaceholderSizeAdjustment(deviceProfile, z4) / 2.0f;
        if (!deviceProfile.isLandscape) {
            view.setX((f4 / f6) - ((i4 * 1.0f) / 2.0f));
            view.setY(((f5 + placeholderSizeAdjustment) / f7) - ((i5 * 1.0f) / 2.0f));
            return;
        }
        if (z4) {
            view.setX(((f4 - placeholderSizeAdjustment) / f6) - ((i4 * 1.0f) / 2.0f));
        } else {
            view.setX(((f4 + placeholderSizeAdjustment) / f6) - ((i4 * 1.0f) / 2.0f));
        }
        view.setY((f5 / f7) - ((i5 * 1.0f) / 2.0f));
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final float getPrimarySize(RectF rectF) {
        return rectF.width();
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getPrimaryValue(int i4, int i5) {
        return i4;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final int getSecondaryValue(int i4, int i5) {
        return i5;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final void setPrimary(Object obj, k kVar, float f4) {
        kVar.b(obj, f4, 0.0f);
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final Object getPrimaryValue(Object obj, Object obj2) {
        return obj;
    }

    @Override // com.android.launcher3.touch.PagedOrientationHandler
    public final Object getSecondaryValue(Object obj, Object obj2) {
        return obj2;
    }
}
