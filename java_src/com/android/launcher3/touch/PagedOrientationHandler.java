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
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.util.SplitConfigurationOptions$SplitBounds;
import com.android.quickstep.C0616y1;
import com.android.quickstep.util.TaskViewSimulator;
import com.android.quickstep.views.FloatingTaskView;
import com.android.quickstep.views.IconView;
import com.android.quickstep.views.RecentsView;
import com.android.quickstep.views.TaskThumbnailView;
import java.util.List;
/* loaded from: classes.dex */
public interface PagedOrientationHandler {
    public static final PortraitPagedViewHandler PORTRAIT = new PortraitPagedViewHandler();
    public static final LandscapePagedViewHandler LANDSCAPE = new LandscapePagedViewHandler();
    public static final SeascapePagedViewHandler SEASCAPE = new SeascapePagedViewHandler();
    public static final k VIEW_SCROLL_BY = new k(0);
    public static final k VIEW_SCROLL_TO = new k(1);
    public static final k CANVAS_TRANSLATE = new k(2);
    public static final k MATRIX_POST_TRANSLATE = new k(3);

    /* loaded from: classes.dex */
    public final class ChildBounds {
        public final int childPrimaryEnd;
        public final int primaryDimension;

        public ChildBounds(int i4, int i5) {
            this.primaryDimension = i4;
            this.childPrimaryEnd = i5;
        }
    }

    void adjustFloatingIconStartVelocity(PointF pointF);

    void fixBoundsForHomeAnimStartRect(RectF rectF, DeviceProfile deviceProfile);

    int getCenterForPage(View view, Rect rect);

    ChildBounds getChildBounds(View view, int i4, int i5, boolean z4);

    int getChildStart(View view);

    int getClearAllSidePadding(RecentsView recentsView, boolean z4);

    int getDefaultSplitPosition(DeviceProfile deviceProfile);

    float getDegreesRotated();

    int getDistanceToBottomOfRect(DeviceProfile deviceProfile, Rect rect);

    Pair getDwbLayoutTranslations(int i4, int i5, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds, DeviceProfile deviceProfile, View[] viewArr, int i6, View view);

    float getEnd(RectF rectF);

    void getFinalSplitPlaceholderBounds(int i4, DeviceProfile deviceProfile, int i5, Rect rect, Rect rect2);

    float getFloatingTaskOffscreenTranslationTarget(FloatingTaskView floatingTaskView, RectF rectF, int i4, DeviceProfile deviceProfile);

    Float getFloatingTaskPrimaryTranslation(View view, DeviceProfile deviceProfile);

    void getInitialSplitPlaceholderBounds(int i4, int i5, DeviceProfile deviceProfile, int i6, Rect rect);

    int getMeasuredSize(View view);

    float getPrimaryDirection(MotionEvent motionEvent, int i4);

    float getPrimaryScale(View view);

    int getPrimaryScroll(View view);

    float getPrimarySize(RectF rectF);

    int getPrimarySize(View view);

    float getPrimaryValue(float f4, float f5);

    int getPrimaryValue(int i4, int i5);

    Object getPrimaryValue(Object obj, Object obj2);

    float getPrimaryVelocity(VelocityTracker velocityTracker, int i4);

    FloatProperty getPrimaryViewTranslate();

    boolean getRecentsRtlSetting(Resources resources);

    int getRotation();

    int getScrollOffsetEnd(View view, Rect rect);

    int getScrollOffsetStart(View view, Rect rect);

    int getSecondaryDimension(View view);

    int getSecondaryTranslationDirectionFactor();

    float getSecondaryValue(float f4, float f5);

    int getSecondaryValue(int i4, int i5);

    Object getSecondaryValue(Object obj, Object obj2);

    FloatProperty getSecondaryViewTranslate();

    List getSplitPositionOptions(DeviceProfile deviceProfile);

    Pair getSplitSelectTaskOffset(FloatProperty floatProperty, FloatProperty floatProperty2, DeviceProfile deviceProfile);

    int getSplitTranslationDirectionFactor(int i4, DeviceProfile deviceProfile);

    float getStart(RectF rectF);

    int getTaskDragDisplacementFactor(boolean z4);

    int getTaskMenuWidth(TaskThumbnailView taskThumbnailView, DeviceProfile deviceProfile, int i4);

    float getTaskMenuX(float f4, TaskThumbnailView taskThumbnailView, DeviceProfile deviceProfile, float f5);

    float getTaskMenuY(float f4, TaskThumbnailView taskThumbnailView, int i4, View view, float f5);

    int getUpDirection(boolean z4);

    SingleAxisSwipeDetector.Direction getUpDownSwipeDirection();

    boolean isGoingUp(float f4, boolean z4);

    boolean isLayoutNaturalToLauncher();

    void measureGroupedTaskViewThumbnailBounds(TaskThumbnailView taskThumbnailView, TaskThumbnailView taskThumbnailView2, int i4, int i5, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds, DeviceProfile deviceProfile, boolean z4);

    void set(TaskViewSimulator taskViewSimulator, C0616y1 c0616y1, int i4, int i5);

    void setFloatingTaskPrimaryTranslation(View view, float f4, DeviceProfile deviceProfile);

    void setLayoutParamsForTaskMenuOptionItem(LinearLayout.LayoutParams layoutParams, LinearLayout linearLayout);

    void setMaxScroll(AccessibilityEvent accessibilityEvent, int i4);

    void setPrimary(Object obj, k kVar, float f4);

    void setPrimary(Object obj, k kVar, int i4);

    void setPrimaryScale(IconView iconView, float f4);

    void setSecondary(Object obj, k kVar, float f4);

    void setSecondaryScale(IconView iconView, float f4);

    void setSplitIconParams(IconView iconView, IconView iconView2, int i4, int i5, int i6, int i7, int i8, boolean z4, DeviceProfile deviceProfile, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds);

    void setSplitInstructionsParams(View view, DeviceProfile deviceProfile, int i4, int i5);

    void setSplitTaskSwipeRect(DeviceProfile deviceProfile, Rect rect, SplitConfigurationOptions$SplitBounds splitConfigurationOptions$SplitBounds, int i4);

    void setTaskIconParams(FrameLayout.LayoutParams layoutParams, int i4, int i5, int i6, boolean z4);

    void setTaskOptionsMenuLayoutOrientation(LinearLayout linearLayout, int i4, ShapeDrawable shapeDrawable);

    void updateSplitIconParams(View view, float f4, float f5, float f6, float f7, int i4, int i5, DeviceProfile deviceProfile, int i6);
}
