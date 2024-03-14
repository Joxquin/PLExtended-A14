package com.android.quickstep.views;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.popup.ArrowPopup;
import com.android.launcher3.popup.RoundedArrowDrawable;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
import java.util.List;
/* loaded from: classes.dex */
public final class TaskMenuViewWithArrow extends ArrowPopup {
    public static final Companion Companion = new Companion(null);
    public static final String TAG = "TaskMenuViewWithArrow";
    private int alignedOptionIndex;
    private IconView iconView;
    private final int menuWidth;
    private LinearLayout optionLayout;
    private int optionMeasuredHeight;
    private View scrim;
    private final float scrimAlpha;
    private TaskView.TaskIdAttributeContainer taskContainer;
    private TaskView taskView;

    /* loaded from: classes.dex */
    public final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(kotlin.jvm.internal.f fVar) {
            this();
        }

        public static /* synthetic */ boolean showForTask$default(Companion companion, TaskView.TaskIdAttributeContainer taskIdAttributeContainer, int i4, int i5, Object obj) {
            if ((i5 & 2) != 0) {
                i4 = 0;
            }
            return companion.showForTask(taskIdAttributeContainer, i4);
        }

        public final boolean showForTask(TaskView.TaskIdAttributeContainer taskContainer, int i4) {
            kotlin.jvm.internal.h.e(taskContainer, "taskContainer");
            BaseDraggingActivity baseDraggingActivity = (BaseDraggingActivity) BaseActivity.fromContext(taskContainer.getTaskView().getContext());
            View inflate = baseDraggingActivity.getLayoutInflater().inflate(R.layout.task_menu_with_arrow, (ViewGroup) baseDraggingActivity.getDragLayer(), false);
            kotlin.jvm.internal.h.c(inflate, "null cannot be cast to non-null type com.android.quickstep.views.TaskMenuViewWithArrow<*>");
            return ((TaskMenuViewWithArrow) inflate).populateAndShowForTask(taskContainer, i4);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TaskMenuViewWithArrow(Context context) {
        super(context);
        kotlin.jvm.internal.h.e(context, "context");
        setClipToOutline(true);
        this.shouldScaleArrow = true;
        this.mIsArrowRotated = true;
        this.mOpenChildFadeStartDelay = this.mOpenFadeStartDelay;
        this.mOpenChildFadeDuration = this.mOpenFadeDuration;
        this.mCloseFadeStartDelay = this.mCloseChildFadeStartDelay;
        this.mCloseFadeDuration = this.mCloseChildFadeDuration;
        this.menuWidth = getContext().getResources().getDimensionPixelSize(R.dimen.task_menu_width_grid);
        this.scrimAlpha = 0.8f;
    }

    private final void addMenuOption(final SystemShortcut systemShortcut) {
        View inflate = ((BaseDraggingActivity) this.mActivityContext).getLayoutInflater().inflate(R.layout.task_view_menu_option, (ViewGroup) this, false);
        kotlin.jvm.internal.h.c(inflate, "null cannot be cast to non-null type android.widget.LinearLayout");
        LinearLayout linearLayout = (LinearLayout) inflate;
        systemShortcut.setIconAndLabelFor(linearLayout.findViewById(R.id.icon), (TextView) linearLayout.findViewById(R.id.text));
        ViewGroup.LayoutParams layoutParams = linearLayout.getLayoutParams();
        kotlin.jvm.internal.h.c(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        ((LinearLayout.LayoutParams) layoutParams).width = this.menuWidth;
        linearLayout.setOnClickListener(new View.OnClickListener() { // from class: com.android.quickstep.views.TaskMenuViewWithArrow$addMenuOption$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SystemShortcut.this.onClick(view);
            }
        });
        LinearLayout linearLayout2 = this.optionLayout;
        if (linearLayout2 != null) {
            linearLayout2.addView(linearLayout);
        } else {
            kotlin.jvm.internal.h.g("optionLayout");
            throw null;
        }
    }

    private final void addMenuOptions() {
        TaskView taskView = this.taskView;
        if (taskView == null) {
            kotlin.jvm.internal.h.g("taskView");
            throw null;
        }
        TaskView.TaskIdAttributeContainer taskIdAttributeContainer = this.taskContainer;
        if (taskIdAttributeContainer == null) {
            kotlin.jvm.internal.h.g("taskContainer");
            throw null;
        }
        List<SystemShortcut> enabledShortcuts = TaskOverlayFactory.getEnabledShortcuts(taskView, taskIdAttributeContainer);
        kotlin.jvm.internal.h.d(enabledShortcuts, "getEnabledShortcuts(taskView, taskContainer)");
        for (SystemShortcut it : enabledShortcuts) {
            kotlin.jvm.internal.h.d(it, "it");
            addMenuOption(it);
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RectShape());
        shapeDrawable.getPaint().setColor(getResources().getColor(17170445));
        int dimension = (int) getResources().getDimension(R.dimen.task_menu_spacing);
        LinearLayout linearLayout = this.optionLayout;
        if (linearLayout == null) {
            kotlin.jvm.internal.h.g("optionLayout");
            throw null;
        }
        linearLayout.setShowDividers(2);
        View overviewPanel = ((BaseDraggingActivity) this.mActivityContext).getOverviewPanel();
        kotlin.jvm.internal.h.d(overviewPanel, "mActivityContext.getOverviewPanel()");
        PagedOrientationHandler pagedOrientationHandler = ((RecentsView) overviewPanel).getPagedOrientationHandler();
        kotlin.jvm.internal.h.d(((BaseDraggingActivity) this.mActivityContext).getDeviceProfile(), "mActivityContext.deviceProfile");
        LinearLayout linearLayout2 = this.optionLayout;
        if (linearLayout2 == null) {
            kotlin.jvm.internal.h.g("optionLayout");
            throw null;
        }
        pagedOrientationHandler.setTaskOptionsMenuLayoutOrientation(linearLayout2, dimension, shapeDrawable);
    }

    private final void addScrim() {
        View view = new View(getContext());
        view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        view.setBackgroundColor(GraphicsUtils.getAttrColor(R.attr.overviewScrimColor, view.getContext()));
        view.setAlpha(0.0f);
        this.scrim = view;
        getPopupContainer().addView(this.scrim);
    }

    private final void copyIconToDragLayer(Rect rect) {
        IconView iconView = new IconView(getContext());
        TaskView.TaskIdAttributeContainer taskIdAttributeContainer = this.taskContainer;
        if (taskIdAttributeContainer == null) {
            kotlin.jvm.internal.h.g("taskContainer");
            throw null;
        }
        int width = taskIdAttributeContainer.getIconView().getWidth();
        TaskView.TaskIdAttributeContainer taskIdAttributeContainer2 = this.taskContainer;
        if (taskIdAttributeContainer2 == null) {
            kotlin.jvm.internal.h.g("taskContainer");
            throw null;
        }
        iconView.setLayoutParams(new FrameLayout.LayoutParams(width, taskIdAttributeContainer2.getIconView().getHeight()));
        iconView.setX(this.mTempRect.left - rect.left);
        iconView.setY(this.mTempRect.top - rect.top);
        TaskView.TaskIdAttributeContainer taskIdAttributeContainer3 = this.taskContainer;
        if (taskIdAttributeContainer3 == null) {
            kotlin.jvm.internal.h.g("taskContainer");
            throw null;
        }
        iconView.setDrawable(taskIdAttributeContainer3.getIconView().getDrawable());
        TaskView.TaskIdAttributeContainer taskIdAttributeContainer4 = this.taskContainer;
        if (taskIdAttributeContainer4 == null) {
            kotlin.jvm.internal.h.g("taskContainer");
            throw null;
        }
        int drawableWidth = taskIdAttributeContainer4.getIconView().getDrawableWidth();
        TaskView.TaskIdAttributeContainer taskIdAttributeContainer5 = this.taskContainer;
        if (taskIdAttributeContainer5 == null) {
            kotlin.jvm.internal.h.g("taskContainer");
            throw null;
        }
        iconView.setDrawableSize(drawableWidth, taskIdAttributeContainer5.getIconView().getDrawableHeight());
        this.iconView = iconView;
        getPopupContainer().addView(this.iconView);
    }

    private final int getArrowHorizontalPadding() {
        TaskView taskView = this.taskView;
        if (taskView == null) {
            kotlin.jvm.internal.h.g("taskView");
            throw null;
        } else if (taskView.isFocusedTask()) {
            return getResources().getDimensionPixelSize(R.dimen.task_menu_horizontal_padding);
        } else {
            return 0;
        }
    }

    private final float getArrowX() {
        return this.mIsLeftAligned ? getX() - this.mArrowHeight : getX() + getMeasuredWidth() + this.mArrowOffsetVertical;
    }

    private final int getExtraSpaceForRowAlignment() {
        return this.optionMeasuredHeight * this.alignedOptionIndex;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean populateAndShowForTask(TaskView.TaskIdAttributeContainer taskIdAttributeContainer, int i4) {
        if (isAttachedToWindow()) {
            return false;
        }
        TaskView taskView = taskIdAttributeContainer.getTaskView();
        kotlin.jvm.internal.h.d(taskView, "taskContainer.taskView");
        this.taskView = taskView;
        this.taskContainer = taskIdAttributeContainer;
        this.alignedOptionIndex = i4;
        if (populateMenu()) {
            addScrim();
            show();
            return true;
        }
        return false;
    }

    private final boolean populateMenu() {
        TaskView.TaskIdAttributeContainer taskIdAttributeContainer = this.taskContainer;
        if (taskIdAttributeContainer == null) {
            kotlin.jvm.internal.h.g("taskContainer");
            throw null;
        } else if (taskIdAttributeContainer.getTask().icon == null) {
            return false;
        } else {
            addMenuOptions();
            return true;
        }
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public void addArrow() {
        getPopupContainer().addView(this.mArrow);
        this.mArrow.setX(getArrowX());
        this.mArrow.setY(((getY() + (this.optionMeasuredHeight / 2)) - (this.mArrowHeight / 2)) + getExtraSpaceForRowAlignment());
        updateArrowColor();
        this.mArrow.setPivotX(this.mIsLeftAligned ? 0.0f : this.mArrowHeight);
        this.mArrow.setPivotY(0.0f);
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public void assignMarginsAndBackgrounds(ViewGroup viewGroup) {
        kotlin.jvm.internal.h.e(viewGroup, "viewGroup");
        assignMarginsAndBackgrounds(this, GraphicsUtils.getAttrColor(17956911, getContext()));
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public void closeComplete() {
        super.closeComplete();
        getPopupContainer().removeView(this.scrim);
        getPopupContainer().removeView(this.iconView);
    }

    @Override // com.android.launcher3.util.TouchController
    public /* bridge */ /* synthetic */ void dump(String str, PrintWriter printWriter) {
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public void getTargetObjectLocation(Rect rect) {
        BaseDragLayer popupContainer = getPopupContainer();
        TaskView.TaskIdAttributeContainer taskIdAttributeContainer = this.taskContainer;
        if (taskIdAttributeContainer != null) {
            popupContainer.getDescendantRectRelativeToSelf(taskIdAttributeContainer.getIconView(), rect);
        } else {
            kotlin.jvm.internal.h.g("taskContainer");
            throw null;
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i4) {
        return (i4 & 2048) != 0;
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (!(motionEvent != null && motionEvent.getAction() == 0) || getPopupContainer().isEventOverView(this, motionEvent)) {
            return false;
        }
        close(true);
        return true;
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public void onCreateCloseAnimation(AnimatorSet anim) {
        kotlin.jvm.internal.h.e(anim, "anim");
        View view = this.scrim;
        if (view != null) {
            anim.play(ObjectAnimator.ofFloat(view, View.ALPHA, this.scrimAlpha, 0.0f).setDuration(this.mCloseDuration));
        }
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public void onCreateOpenAnimation(AnimatorSet anim) {
        kotlin.jvm.internal.h.e(anim, "anim");
        View view = this.scrim;
        if (view != null) {
            anim.play(ObjectAnimator.ofFloat(view, View.ALPHA, 0.0f, this.scrimAlpha).setDuration(this.mOpenDuration));
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        View findViewById = findViewById(R.id.menu_option_layout);
        kotlin.jvm.internal.h.d(findViewById, "findViewById(R.id.menu_option_layout)");
        this.optionLayout = (LinearLayout) findViewById;
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public void orientAboutObject() {
        boolean z4 = false;
        measure(0, 0);
        LinearLayout linearLayout = this.optionLayout;
        if (linearLayout == null) {
            kotlin.jvm.internal.h.g("optionLayout");
            throw null;
        }
        this.optionMeasuredHeight = linearLayout.getChildAt(0).getMeasuredHeight();
        int arrowHorizontalPadding = this.mArrowHeight + this.mArrowOffsetVertical + getArrowHorizontalPadding();
        int paddingRight = getPaddingRight() + getPaddingLeft() + getMeasuredWidth() + arrowHorizontalPadding;
        getTargetObjectLocation(this.mTempRect);
        BaseDragLayer popupContainer = getPopupContainer();
        kotlin.jvm.internal.h.d(popupContainer, "popupContainer");
        Rect insets = popupContainer.getInsets();
        kotlin.jvm.internal.h.d(insets, "insets");
        copyIconToDragLayer(insets);
        Rect rect = this.mTempRect;
        int i4 = rect.left - paddingRight;
        int i5 = rect.right + arrowHorizontalPadding;
        if (!this.mIsRtl ? (paddingRight - arrowHorizontalPadding) + i5 + insets.left < popupContainer.getWidth() - insets.right : insets.left + i4 < 0) {
            z4 = true;
        }
        this.mIsLeftAligned = z4;
        if (z4) {
            i4 = i5;
        }
        int height = (this.mTempRect.top - ((this.optionMeasuredHeight - this.mTempRect.height()) / 2)) - getExtraSpaceForRowAlignment();
        int i6 = i4 - insets.left;
        int i7 = height - insets.top;
        setX(i6);
        setY(i7);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        kotlin.jvm.internal.h.c(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        ViewGroup.LayoutParams layoutParams2 = this.mArrow.getLayoutParams();
        kotlin.jvm.internal.h.c(layoutParams2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        ((FrameLayout.LayoutParams) layoutParams).gravity = 48;
        ((FrameLayout.LayoutParams) layoutParams2).gravity = 48;
    }

    @Override // com.android.launcher3.popup.ArrowPopup
    public void updateArrowColor() {
        this.mArrow.setBackground(new RoundedArrowDrawable(this.mArrowWidth, this.mArrowHeight, this.mArrowPointRadius, this.mIsLeftAligned, this.mArrowColor));
        setElevation(this.mElevation);
        this.mArrow.setElevation(this.mElevation);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TaskMenuViewWithArrow(Context context, AttributeSet attrs) {
        super(context, attrs);
        kotlin.jvm.internal.h.e(context, "context");
        kotlin.jvm.internal.h.e(attrs, "attrs");
        setClipToOutline(true);
        this.shouldScaleArrow = true;
        this.mIsArrowRotated = true;
        this.mOpenChildFadeStartDelay = this.mOpenFadeStartDelay;
        this.mOpenChildFadeDuration = this.mOpenFadeDuration;
        this.mCloseFadeStartDelay = this.mCloseChildFadeStartDelay;
        this.mCloseFadeDuration = this.mCloseChildFadeDuration;
        this.menuWidth = getContext().getResources().getDimensionPixelSize(R.dimen.task_menu_width_grid);
        this.scrimAlpha = 0.8f;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TaskMenuViewWithArrow(Context context, AttributeSet attrs, int i4) {
        super(context, attrs, i4);
        kotlin.jvm.internal.h.e(context, "context");
        kotlin.jvm.internal.h.e(attrs, "attrs");
        setClipToOutline(true);
        this.shouldScaleArrow = true;
        this.mIsArrowRotated = true;
        this.mOpenChildFadeStartDelay = this.mOpenFadeStartDelay;
        this.mOpenChildFadeDuration = this.mOpenFadeDuration;
        this.mCloseFadeStartDelay = this.mCloseChildFadeStartDelay;
        this.mCloseFadeDuration = this.mCloseChildFadeDuration;
        this.menuWidth = getContext().getResources().getDimensionPixelSize(R.dimen.task_menu_width_grid);
        this.scrimAlpha = 0.8f;
    }
}
