package com.android.launcher3.taskbar;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Insettable;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.model.data.FolderInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.taskbar.TaskbarViewController;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.IconButtonView;
import com.android.systemui.shared.R;
import java.util.Objects;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public class TaskbarView extends FrameLayout implements FolderIcon.FolderIconParent, Insettable, DeviceProfile.OnDeviceProfileChangeListener {
    private static final Rect sTmpRect = new Rect();
    private final TaskbarActivityContext mActivityContext;
    private IconButtonView mAllAppsButton;
    private TaskbarViewController.TaskbarViewCallbacks mControllerCallbacks;
    private final int mFolderLeaveBehindColor;
    private G mIconClickListener;
    private final Rect mIconLayoutBounds;
    private W0 mIconLongClickListener;
    private final int mIconTouchSize;
    private final boolean mIsRtl;
    private final int mItemMarginLeftRight;
    private final int mItemPadding;
    private FolderIcon mLeaveBehindFolderIcon;
    private View mQsb;
    private boolean mShouldTryStartAlign;
    private IconButtonView mTaskbarDivider;
    private final int[] mTempOutLocation;
    private float mTransientTaskbarAllAppsButtonTranslationXOffset;
    private float mTransientTaskbarMinWidth;

    public TaskbarView(Context context) {
        this(context, null);
    }

    private void removeAndRecycle(View view) {
        removeView(view);
        view.setOnClickListener(null);
        view.setOnLongClickListener(null);
        if (!(view.getTag() instanceof FolderInfo)) {
            this.mActivityContext.getViewCache().recycleView(view, view.getSourceLayoutResId());
        }
        view.setTag(null);
    }

    @Override // com.android.launcher3.folder.FolderIcon.FolderIconParent
    public final void clearFolderLeaveBehind(FolderIcon folderIcon) {
        this.mLeaveBehindFolderIcon = null;
        invalidate();
    }

    @Override // com.android.launcher3.folder.FolderIcon.FolderIconParent
    public final void drawFolderLeaveBehindForIcon(FolderIcon folderIcon) {
        this.mLeaveBehindFolderIcon = folderIcon;
        invalidate();
    }

    public final IconButtonView getAllAppsButtonView() {
        return this.mAllAppsButton;
    }

    public final View getFirstMatch(Predicate... predicateArr) {
        for (Predicate predicate : predicateArr) {
            for (int i4 = 0; i4 < getChildCount(); i4++) {
                View childAt = getChildAt(i4);
                if ((childAt.getTag() instanceof ItemInfo) && predicate.test((ItemInfo) childAt.getTag())) {
                    return childAt;
                }
            }
        }
        return this.mAllAppsButton;
    }

    public final Rect getIconLayoutBounds() {
        return this.mIconLayoutBounds;
    }

    public final int getIconTouchSize() {
        return this.mIconTouchSize;
    }

    public final View getQsb() {
        return this.mQsb;
    }

    public final IconButtonView getTaskbarDividerView() {
        return this.mTaskbarDivider;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.android.launcher3.taskbar.W0] */
    public final void init(TaskbarViewController.TaskbarViewCallbacks taskbarViewCallbacks) {
        setAccessibilityPaneTitle(getContext().getString(R.string.taskbar_a11y_title));
        this.mControllerCallbacks = taskbarViewCallbacks;
        TaskbarActivityContext taskbarActivityContext = TaskbarViewController.this.mActivity;
        taskbarActivityContext.getClass();
        this.mIconClickListener = new G(taskbarActivityContext);
        final TaskbarDragController taskbarDragController = TaskbarViewController.this.mControllers.taskbarDragController;
        Objects.requireNonNull(taskbarDragController);
        this.mIconLongClickListener = new View.OnLongClickListener() { // from class: com.android.launcher3.taskbar.W0
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                switch (r1) {
                    case 0:
                        TaskbarViewController.this.mControllers.taskbarPinningController.showPinningView(view);
                        return true;
                    case 1:
                        return TaskbarViewController.this.mControllers.taskbarStashController.updateAndAnimateIsManuallyStashedInApp(true);
                    default:
                        return ((TaskbarDragController) taskbarDragController).startDragOnLongClick(view);
                }
            }
        };
        final TaskbarViewController.TaskbarViewCallbacks taskbarViewCallbacks2 = this.mControllerCallbacks;
        taskbarViewCallbacks2.getClass();
        setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.launcher3.taskbar.W0
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                switch (r1) {
                    case 0:
                        TaskbarViewController.this.mControllers.taskbarPinningController.showPinningView(view);
                        return true;
                    case 1:
                        return TaskbarViewController.this.mControllers.taskbarStashController.updateAndAnimateIsManuallyStashedInApp(true);
                    default:
                        return ((TaskbarDragController) taskbarViewCallbacks2).startDragOnLongClick(view);
                }
            }
        });
        IconButtonView iconButtonView = this.mAllAppsButton;
        if (iconButtonView != null) {
            final TaskbarViewController.TaskbarViewCallbacks taskbarViewCallbacks3 = this.mControllerCallbacks;
            taskbarViewCallbacks3.getClass();
            iconButtonView.setOnClickListener(new View.OnClickListener() { // from class: com.android.launcher3.taskbar.X0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    TaskbarViewController taskbarViewController = TaskbarViewController.this;
                    taskbarViewController.mActivity.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_TASKBAR_ALLAPPS_BUTTON_TAP);
                    taskbarViewController.mControllers.taskbarAllAppsController.toggle();
                }
            });
        }
        IconButtonView iconButtonView2 = this.mTaskbarDivider;
        if (iconButtonView2 != null) {
            final TaskbarViewController.TaskbarViewCallbacks taskbarViewCallbacks4 = this.mControllerCallbacks;
            taskbarViewCallbacks4.getClass();
            iconButtonView2.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.android.launcher3.taskbar.W0
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    switch (r1) {
                        case 0:
                            TaskbarViewController.this.mControllers.taskbarPinningController.showPinningView(view);
                            return true;
                        case 1:
                            return TaskbarViewController.this.mControllers.taskbarStashController.updateAndAnimateIsManuallyStashedInApp(true);
                        default:
                            return ((TaskbarDragController) taskbarViewCallbacks4).startDragOnLongClick(view);
                    }
                }
            });
        }
    }

    public final boolean isEventOverAnyItem(MotionEvent motionEvent) {
        getLocationOnScreen(this.mTempOutLocation);
        return isShown() && this.mIconLayoutBounds.contains(((int) motionEvent.getX()) - this.mTempOutLocation[0], ((int) motionEvent.getY()) - this.mTempOutLocation[1]);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mActivityContext.addOnDeviceProfileChangeListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mActivityContext.removeOnDeviceProfileChangeListener(this);
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        this.mShouldTryStartAlign = this.mActivityContext.isThreeButtonNav() && deviceProfile.startAlignTaskbar;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.mLeaveBehindFolderIcon != null) {
            canvas.save();
            canvas.translate(this.mLeaveBehindFolderIcon.getLeft(), this.mLeaveBehindFolderIcon.getTop());
            this.mLeaveBehindFolderIcon.getFolderBackground().drawLeaveBehind(this.mFolderLeaveBehindColor, canvas);
            canvas.restore();
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        int i8;
        int i9;
        int i10;
        int i11;
        DeviceProfile deviceProfile = this.mActivityContext.getDeviceProfile();
        int childCount = getChildCount();
        if (this.mActivityContext.getDeviceProfile().isQsbInline) {
            childCount--;
        }
        int i12 = ((this.mItemMarginLeftRight * 2) + this.mIconTouchSize) * childCount;
        boolean z5 = true;
        if (FeatureFlags.ENABLE_TASKBAR_PINNING.get() && childCount > 1) {
            i12 -= this.mItemMarginLeftRight * 4;
        }
        int i13 = deviceProfile.hotseatBarEndOffset;
        boolean isLayoutRtl = isLayoutRtl();
        int i14 = i6 - (((i6 - i4) - i12) / 2);
        if (this.mShouldTryStartAlign) {
            int i15 = deviceProfile.inlineNavButtonsEndSpacingPx;
            i8 = isLayoutRtl ? i6 - i15 : i15 + i12;
        } else {
            i8 = i14;
        }
        if (!isLayoutRtl ? i8 <= i6 - i13 : i13 <= i8 - i12) {
            z5 = false;
        }
        if (z5) {
            i8 = i14 + (isLayoutRtl ? i13 - (i14 - i12) : (i6 - i13) - i14);
        }
        sTmpRect.set(this.mIconLayoutBounds);
        Rect rect = this.mIconLayoutBounds;
        rect.right = i8;
        int i16 = i7 - i5;
        int i17 = this.mIconTouchSize;
        int i18 = (i16 - i17) / 2;
        rect.top = i18;
        rect.bottom = i18 + i17;
        for (int childCount2 = getChildCount(); childCount2 > 0; childCount2--) {
            View childAt = getChildAt(childCount2 - 1);
            if (childAt == this.mQsb) {
                if (isLayoutRtl) {
                    i11 = this.mItemMarginLeftRight + i8;
                    i10 = deviceProfile.hotseatQsbWidth + i11;
                } else {
                    i10 = i8 - this.mItemMarginLeftRight;
                    i11 = i10 - deviceProfile.hotseatQsbWidth;
                }
                int i19 = deviceProfile.hotseatQsbHeight;
                int i20 = (i16 - i19) / 2;
                childAt.layout(i11, i20, i10, i19 + i20);
            } else {
                if (childAt == this.mTaskbarDivider) {
                    int i21 = i8 + this.mItemMarginLeftRight;
                    int i22 = i21 - this.mIconTouchSize;
                    Rect rect2 = this.mIconLayoutBounds;
                    childAt.layout(i22, rect2.top, i21, rect2.bottom);
                    i9 = i22 + this.mItemMarginLeftRight;
                } else {
                    int i23 = i8 - this.mItemMarginLeftRight;
                    int i24 = i23 - this.mIconTouchSize;
                    Rect rect3 = this.mIconLayoutBounds;
                    childAt.layout(i24, rect3.top, i23, rect3.bottom);
                    i9 = i24 - this.mItemMarginLeftRight;
                }
                i8 = i9;
            }
        }
        Rect rect4 = this.mIconLayoutBounds;
        rect4.left = i8;
        if (rect4.right - i8 < this.mTransientTaskbarMinWidth) {
            int centerX = rect4.centerX();
            int i25 = ((int) this.mTransientTaskbarMinWidth) / 2;
            Rect rect5 = this.mIconLayoutBounds;
            rect5.right = centerX + i25;
            rect5.left = centerX - i25;
        }
        if (sTmpRect.equals(this.mIconLayoutBounds)) {
            return;
        }
        TaskbarViewController.this.mControllers.uiController.onIconLayoutBoundsChanged();
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.mIconLayoutBounds.left > motionEvent.getX() || motionEvent.getX() > this.mIconLayoutBounds.right) {
            if (this.mControllerCallbacks.onTouchEvent(motionEvent)) {
                int action = motionEvent.getAction();
                try {
                    motionEvent.setAction(3);
                    return super.onTouchEvent(motionEvent);
                } finally {
                    motionEvent.setAction(action);
                }
            }
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    public final boolean performAccessibilityActionInternal(int i4, Bundle bundle) {
        if (i4 == 64) {
            announceForAccessibility(((FrameLayout) this).mContext.getString(R.string.taskbar_a11y_shown_title));
        } else if (i4 == 128) {
            announceForAccessibility(((FrameLayout) this).mContext.getString(R.string.taskbar_a11y_hidden_title));
        }
        return super.performAccessibilityActionInternal(i4, bundle);
    }

    public final void setClickAndLongClickListenersForIcon(View view) {
        view.setOnClickListener(this.mIconClickListener);
        view.setOnLongClickListener(this.mIconLongClickListener);
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0054 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void updateHotseatItems(com.android.launcher3.model.data.ItemInfo[] r10) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.taskbar.TaskbarView.updateHotseatItems(com.android.launcher3.model.data.ItemInfo[]):void");
    }

    public TaskbarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TaskbarView(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public TaskbarView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mTempOutLocation = new int[2];
        TaskbarActivityContext taskbarActivityContext = (TaskbarActivityContext) ActivityContext.lookupContext(context);
        this.mActivityContext = taskbarActivityContext;
        this.mIconLayoutBounds = taskbarActivityContext.getTransientTaskbarBounds();
        Resources resources = getResources();
        boolean z4 = DisplayController.isTransientTaskbar(taskbarActivityContext) && !TaskbarManager.isPhoneMode(taskbarActivityContext.getDeviceProfile());
        boolean isRtl = Utilities.isRtl(resources);
        this.mIsRtl = isRtl;
        this.mTransientTaskbarMinWidth = ((FrameLayout) this).mContext.getResources().getDimension(R.dimen.transient_taskbar_min_width);
        this.mTransientTaskbarAllAppsButtonTranslationXOffset = resources.getDimension(z4 ? R.dimen.transient_taskbar_all_apps_button_translation_x_offset : R.dimen.taskbar_all_apps_button_translation_x_offset);
        onDeviceProfileChanged(taskbarActivityContext.getDeviceProfile());
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.taskbar_icon_spacing);
        int i6 = taskbarActivityContext.getDeviceProfile().taskbarIconSize;
        int max = Math.max(i6, resources.getDimensionPixelSize(R.dimen.taskbar_icon_min_touch_size));
        this.mIconTouchSize = max;
        this.mItemMarginLeftRight = dimensionPixelSize - ((max - ((int) (i6 * 0.92f))) / 2);
        int i7 = (max - i6) / 2;
        this.mItemPadding = i7;
        this.mFolderLeaveBehindColor = GraphicsUtils.getAttrColor(16843282, taskbarActivityContext);
        setWillNotDraw(false);
        if (!taskbarActivityContext.getPackageManager().hasSystemFeature("android.hardware.type.pc")) {
            IconButtonView iconButtonView = (IconButtonView) LayoutInflater.from(context).inflate(R.layout.taskbar_all_apps_button, (ViewGroup) this, false);
            this.mAllAppsButton = iconButtonView;
            iconButtonView.setIconDrawable(resources.getDrawable(z4 ? R.drawable.ic_transient_taskbar_all_apps_button : R.drawable.ic_taskbar_all_apps_button));
            this.mAllAppsButton.setScaleX(isRtl ? -1.0f : 1.0f);
            this.mAllAppsButton.setPadding(i7, i7, i7, i7);
            this.mAllAppsButton.setForegroundTint(taskbarActivityContext.getColor(R.color.all_apps_button_color));
            if (FeatureFlags.ENABLE_TASKBAR_PINNING.get()) {
                IconButtonView iconButtonView2 = (IconButtonView) LayoutInflater.from(context).inflate(R.layout.taskbar_divider, (ViewGroup) this, false);
                this.mTaskbarDivider = iconButtonView2;
                iconButtonView2.setIconDrawable(resources.getDrawable(R.drawable.taskbar_divider_button));
                this.mTaskbarDivider.setPadding(i7, i7, i7, i7);
            }
        }
        this.mQsb = LayoutInflater.from(context).inflate(R.layout.search_container_hotseat, (ViewGroup) this, false);
    }
}
