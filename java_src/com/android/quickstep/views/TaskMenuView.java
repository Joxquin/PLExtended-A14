package com.android.quickstep.views;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Outline;
import android.graphics.Rect;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.util.AttributeSet;
import android.util.Property;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.anim.AnimationSuccessListener;
import com.android.launcher3.anim.RoundedRectRevealOutlineProvider;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.touch.PagedOrientationHandler;
import com.android.launcher3.views.BaseDragLayer;
import com.android.quickstep.TaskOverlayFactory;
import com.android.quickstep.TaskUtils;
import com.android.quickstep.util.TaskCornerRadius;
import com.android.quickstep.views.TaskView;
import com.android.systemui.shared.R;
import java.io.PrintWriter;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class TaskMenuView extends AbstractFloatingView {
    private static final int REVEAL_CLOSE_DURATION = 100;
    private static final int REVEAL_OPEN_DURATION = 150;
    private static final Rect sTempRect = new Rect();
    private BaseDraggingActivity mActivity;
    private AnimatorSet mOpenCloseAnimator;
    private LinearLayout mOptionLayout;
    private TaskView.TaskIdAttributeContainer mTaskContainer;
    private TextView mTaskName;
    private TaskView mTaskView;

    public TaskMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void addMenuOption(SystemShortcut systemShortcut) {
        LinearLayout linearLayout = (LinearLayout) this.mActivity.getLayoutInflater().inflate(R.layout.task_view_menu_option, (ViewGroup) this, false);
        systemShortcut.setIconAndLabelFor(linearLayout.findViewById(R.id.icon), (TextView) linearLayout.findViewById(R.id.text));
        PagedOrientationHandler pagedOrientationHandler = this.mTaskView.getPagedOrientationHandler();
        this.mActivity.getDeviceProfile();
        pagedOrientationHandler.setLayoutParamsForTaskMenuOptionItem((LinearLayout.LayoutParams) linearLayout.getLayoutParams(), linearLayout);
        linearLayout.setOnClickListener(new N(1, systemShortcut));
        this.mOptionLayout.addView(linearLayout);
    }

    private void addMenuOptions(TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
        this.mTaskName.setText(TaskUtils.getTitle(getContext(), taskIdAttributeContainer.getTask()));
        this.mTaskName.setOnClickListener(new N(0, this));
        TaskOverlayFactory.getEnabledShortcuts(this.mTaskView, taskIdAttributeContainer).forEach(new Consumer() { // from class: com.android.quickstep.views.O
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                TaskMenuView.this.addMenuOption((SystemShortcut) obj);
            }
        });
    }

    private void animateClose() {
        animateOpenOrClosed(true);
    }

    public void animateOpen() {
        animateOpenOrClosed(false);
        this.mIsOpen = true;
    }

    private void animateOpenOrClosed(final boolean z4) {
        AnimatorSet animatorSet = this.mOpenCloseAnimator;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.mOpenCloseAnimator.end();
        }
        this.mOpenCloseAnimator = new AnimatorSet();
        ValueAnimator b4 = createOpenCloseOutlineProvider().b(this, z4, 0.0f);
        b4.setInterpolator(y0.e.f12962z);
        AnimatorSet animatorSet2 = this.mOpenCloseAnimator;
        Animator[] animatorArr = new Animator[3];
        animatorArr[0] = b4;
        TaskThumbnailView thumbnailView = this.mTaskContainer.getThumbnailView();
        Property property = TaskThumbnailView.DIM_ALPHA;
        float[] fArr = new float[1];
        fArr[0] = z4 ? 0.0f : 0.4f;
        animatorArr[1] = ObjectAnimator.ofFloat(thumbnailView, property, fArr);
        Property property2 = LinearLayout.ALPHA;
        float[] fArr2 = new float[1];
        fArr2[0] = z4 ? 0.0f : 1.0f;
        animatorArr[2] = ObjectAnimator.ofFloat(this, property2, fArr2);
        animatorSet2.playTogether(animatorArr);
        this.mOpenCloseAnimator.addListener(new AnimationSuccessListener() { // from class: com.android.quickstep.views.TaskMenuView.2
            {
                TaskMenuView.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                TaskMenuView.this.setVisibility(0);
            }

            @Override // com.android.launcher3.anim.AnimationSuccessListener
            public void onAnimationSuccess(Animator animator) {
                if (z4) {
                    TaskMenuView.this.closeComplete();
                }
            }
        });
        this.mOpenCloseAnimator.setDuration(z4 ? 100L : 150L);
        this.mOpenCloseAnimator.start();
    }

    public void closeComplete() {
        this.mIsOpen = false;
        this.mActivity.getDragLayer().removeView(this);
    }

    private RoundedRectRevealOutlineProvider createOpenCloseOutlineProvider() {
        float f4 = TaskCornerRadius.get(((LinearLayout) this).mContext);
        return new RoundedRectRevealOutlineProvider(f4, f4, new Rect(0, 0, getWidth(), 0), new Rect(0, 0, getWidth(), getHeight()));
    }

    public /* synthetic */ void lambda$addMenuOptions$0(View view) {
        close(true);
    }

    private void orientAroundTaskView(TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
        PagedOrientationHandler pagedOrientationHandler = ((RecentsView) this.mActivity.getOverviewPanel()).getPagedOrientationHandler();
        measure(0, 0);
        DeviceProfile deviceProfile = this.mActivity.getDeviceProfile();
        BaseDragLayer dragLayer = this.mActivity.getDragLayer();
        TaskThumbnailView thumbnailView = taskIdAttributeContainer.getThumbnailView();
        Rect rect = sTempRect;
        dragLayer.getDescendantRectRelativeToSelf(thumbnailView, rect);
        Rect insets = this.mActivity.getDragLayer().getInsets();
        BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) getLayoutParams();
        ((FrameLayout.LayoutParams) layoutParams).width = pagedOrientationHandler.getTaskMenuWidth(taskIdAttributeContainer.getThumbnailView(), deviceProfile, taskIdAttributeContainer.getStagePosition()) - (getResources().getDimensionPixelSize(R.dimen.task_menu_vertical_padding) * 2);
        ((FrameLayout.LayoutParams) layoutParams).gravity = 3;
        setLayoutParams(layoutParams);
        setScaleX(this.mTaskView.getScaleX());
        setScaleY(this.mTaskView.getScaleY());
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RectShape());
        shapeDrawable.getPaint().setColor(getResources().getColor(17170445));
        this.mOptionLayout.setShowDividers(2);
        pagedOrientationHandler.setTaskOptionsMenuLayoutOrientation(this.mOptionLayout, (int) getResources().getDimension(R.dimen.task_menu_spacing), shapeDrawable);
        float f4 = rect.top - insets.top;
        setPivotX(0.0f);
        setPivotY(0.0f);
        setRotation(pagedOrientationHandler.getDegreesRotated());
        float dimension = getResources().getDimension(R.dimen.task_card_margin);
        setTranslationX(pagedOrientationHandler.getTaskMenuX(rect.left - insets.left, this.mTaskContainer.getThumbnailView(), deviceProfile, dimension));
        setTranslationY(pagedOrientationHandler.getTaskMenuY(f4, this.mTaskContainer.getThumbnailView(), this.mTaskContainer.getStagePosition(), this, dimension));
    }

    private boolean populateAndLayoutMenu() {
        if (this.mTaskContainer.getTask().icon == null) {
            return false;
        }
        addMenuOptions(this.mTaskContainer);
        orientAroundTaskView(this.mTaskContainer);
        return true;
    }

    private boolean populateAndShowForTask(TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
        if (isAttachedToWindow()) {
            return false;
        }
        this.mActivity.getDragLayer().addView(this);
        this.mTaskView = taskIdAttributeContainer.getTaskView();
        this.mTaskContainer = taskIdAttributeContainer;
        if (populateAndLayoutMenu()) {
            post(new Runnable() { // from class: com.android.quickstep.views.M
                @Override // java.lang.Runnable
                public final void run() {
                    TaskMenuView.this.animateOpen();
                }
            });
            return true;
        }
        return false;
    }

    public static boolean showForTask(TaskView.TaskIdAttributeContainer taskIdAttributeContainer) {
        BaseDraggingActivity baseDraggingActivity = (BaseDraggingActivity) BaseActivity.fromContext(taskIdAttributeContainer.getTaskView().getContext());
        return ((TaskMenuView) baseDraggingActivity.getLayoutInflater().inflate(R.layout.task_menu, (ViewGroup) baseDraggingActivity.getDragLayer(), false)).populateAndShowForTask(taskIdAttributeContainer);
    }

    @Override // com.android.launcher3.util.TouchController
    public /* bridge */ /* synthetic */ void dump(String str, PrintWriter printWriter) {
    }

    @Override // android.view.View
    public ViewOutlineProvider getOutlineProvider() {
        return new ViewOutlineProvider() { // from class: com.android.quickstep.views.TaskMenuView.1
            {
                TaskMenuView.this = this;
            }

            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), TaskCornerRadius.get(view.getContext()));
            }
        };
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z4) {
        if (z4) {
            animateClose();
        } else {
            closeComplete();
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public boolean isOfType(int i4) {
        return (i4 & 2048) != 0;
    }

    @Override // com.android.launcher3.util.TouchController
    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0 || this.mActivity.getDragLayer().isEventOverView(this, motionEvent)) {
            return false;
        }
        close(true);
        return true;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mTaskName = (TextView) findViewById(R.id.task_name);
        this.mOptionLayout = (LinearLayout) findViewById(R.id.menu_option_layout);
    }

    public void onRotationChanged() {
        AnimatorSet animatorSet = this.mOpenCloseAnimator;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.mOpenCloseAnimator.end();
        }
        if (this.mIsOpen) {
            this.mOptionLayout.removeAllViews();
            if (populateAndLayoutMenu()) {
                return;
            }
            close(false);
        }
    }

    public TaskMenuView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mActivity = (BaseDraggingActivity) BaseActivity.fromContext(context);
        setClipToOutline(true);
    }
}
