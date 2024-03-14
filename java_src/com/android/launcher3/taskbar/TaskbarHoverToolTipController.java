package com.android.launcher3.taskbar;

import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.os.Handler;
import android.os.Looper;
import android.util.IntProperty;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.Utilities;
import com.android.launcher3.compat.AccessibilityManagerCompat;
import com.android.launcher3.folder.FolderIcon;
import com.android.launcher3.views.ArrowTipView;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class TaskbarHoverToolTipController implements View.OnHoverListener {
    protected static final int HOVER_TOOL_TIP_REVEAL_START_DELAY = 400;
    private final TaskbarActivityContext mActivity;
    private final ArrowTipView mHoverToolTipView;
    private final View mHoverView;
    private final TaskbarView mTaskbarView;
    private final String mToolTipText;
    private final Handler mHoverToolTipHandler = new Handler(Looper.getMainLooper());
    private final RunnableC0430g0 mRevealHoverToolTipRunnable = new Runnable(this) { // from class: com.android.launcher3.taskbar.g0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarHoverToolTipController f5124e;

        {
            this.f5124e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    TaskbarHoverToolTipController.a(this.f5124e);
                    return;
                default:
                    TaskbarHoverToolTipController.b(this.f5124e);
                    return;
            }
        }
    };
    private final RunnableC0430g0 mHideHoverToolTipRunnable = new Runnable(this) { // from class: com.android.launcher3.taskbar.g0

        /* renamed from: e  reason: collision with root package name */
        public final /* synthetic */ TaskbarHoverToolTipController f5124e;

        {
            this.f5124e = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            switch (r2) {
                case 0:
                    TaskbarHoverToolTipController.a(this.f5124e);
                    return;
                default:
                    TaskbarHoverToolTipController.b(this.f5124e);
                    return;
            }
        }
    };

    /* JADX WARN: Type inference failed for: r0v1, types: [com.android.launcher3.taskbar.g0] */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.android.launcher3.taskbar.g0] */
    public TaskbarHoverToolTipController(TaskbarActivityContext taskbarActivityContext, TaskbarView taskbarView, View view) {
        CharSequence charSequence;
        this.mActivity = taskbarActivityContext;
        this.mTaskbarView = taskbarView;
        this.mHoverView = view;
        if (view instanceof BubbleTextView) {
            this.mToolTipText = ((BubbleTextView) view).getText().toString();
        } else if (!(view instanceof FolderIcon) || (charSequence = ((FolderIcon) view).mInfo.title) == null) {
            this.mToolTipText = null;
        } else {
            this.mToolTipText = charSequence.toString();
        }
        ArrowTipView arrowTipView = new ArrowTipView(new ContextThemeWrapper(taskbarActivityContext, (int) R.style.ArrowTipTaskbarStyle), false, 0);
        this.mHoverToolTipView = arrowTipView;
        AnimatorSet animatorSet = new AnimatorSet();
        IntProperty intProperty = ArrowTipView.TEXT_ALPHA;
        ObjectAnimator ofInt = ObjectAnimator.ofInt(arrowTipView, intProperty, 0);
        Interpolator interpolator = y0.e.f12949m;
        ofInt.setInterpolator(y0.e.b(0.0f, 0.33f, interpolator));
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(arrowTipView, View.ALPHA, 0.0f);
        ofFloat.setInterpolator(y0.e.b(0.33f, 0.66f, interpolator));
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(arrowTipView, View.SCALE_Y, 0.0f);
        ofFloat2.setInterpolator(y0.e.f12946j);
        animatorSet.playTogether(ofInt, ofFloat, ofFloat2);
        animatorSet.setStartDelay(0L);
        animatorSet.setDuration(150L);
        arrowTipView.setCustomCloseAnimation(animatorSet);
        AnimatorSet animatorSet2 = new AnimatorSet();
        ObjectAnimator ofInt2 = ObjectAnimator.ofInt(arrowTipView, intProperty, 255);
        ofInt2.setInterpolator(y0.e.b(0.33f, 1.0f, interpolator));
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(arrowTipView, View.SCALE_Y, 1.0f);
        ofFloat3.setInterpolator(y0.e.f12937a);
        ObjectAnimator ofFloat4 = ObjectAnimator.ofFloat(arrowTipView, View.ALPHA, 1.0f);
        ofFloat4.setInterpolator(y0.e.b(0.1f, 0.33f, interpolator));
        animatorSet2.playTogether(ofFloat3, ofInt2, ofFloat4);
        animatorSet2.setStartDelay(400L);
        animatorSet2.setDuration(300L);
        arrowTipView.setCustomOpenAnimation(animatorSet2);
        arrowTipView.addOnLayoutChangeListener(new View.OnLayoutChangeListener() { // from class: com.android.launcher3.taskbar.h0
            @Override // android.view.View.OnLayoutChangeListener
            public final void onLayoutChange(View view2, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11) {
                TaskbarHoverToolTipController.c(TaskbarHoverToolTipController.this, i5, i7);
            }
        });
        arrowTipView.setScaleY(0.0f);
        arrowTipView.setAlpha(0.0f);
    }

    public static void a(TaskbarHoverToolTipController taskbarHoverToolTipController) {
        View view = taskbarHoverToolTipController.mHoverView;
        if (view == null || taskbarHoverToolTipController.mToolTipText == null) {
            return;
        }
        if (!(view instanceof FolderIcon) || ((FolderIcon) view).getIconVisible()) {
            taskbarHoverToolTipController.mActivity.setTaskbarWindowFullscreen(true);
            taskbarHoverToolTipController.mHoverToolTipView.m4showAtLocation(taskbarHoverToolTipController.mToolTipText, Utilities.getViewBounds(taskbarHoverToolTipController.mHoverView).centerX(), taskbarHoverToolTipController.mTaskbarView.getTop());
        }
    }

    public static void b(TaskbarHoverToolTipController taskbarHoverToolTipController) {
        taskbarHoverToolTipController.mHoverToolTipView.close(true);
    }

    public static /* synthetic */ void c(TaskbarHoverToolTipController taskbarHoverToolTipController, int i4, int i5) {
        taskbarHoverToolTipController.mHoverToolTipView.setPivotY(i5);
        taskbarHoverToolTipController.mHoverToolTipView.setY(taskbarHoverToolTipController.mTaskbarView.getTop() - (i5 - i4));
    }

    @Override // android.view.View.OnHoverListener
    public final boolean onHover(View view, MotionEvent motionEvent) {
        boolean hasOpenView = AbstractFloatingView.hasOpenView(this.mActivity, AbstractFloatingView.TYPE_ALL_EXCEPT_ON_BOARD_POPUP);
        if (hasOpenView) {
            this.mHoverToolTipHandler.removeCallbacksAndMessages(null);
        }
        if (motionEvent.getAction() == 10) {
            this.mHoverToolTipHandler.removeCallbacks(this.mRevealHoverToolTipRunnable);
            this.mHoverToolTipHandler.postDelayed(this.mHideHoverToolTipRunnable, AccessibilityManagerCompat.getRecommendedTimeoutMillis(this.mActivity, 0, 2));
            this.mActivity.setAutohideSuspendFlag(64, false);
            return true;
        } else if (hasOpenView || motionEvent.getAction() != 9) {
            return false;
        } else {
            this.mHoverToolTipHandler.postDelayed(this.mRevealHoverToolTipRunnable, 400L);
            this.mActivity.setAutohideSuspendFlag(64, true);
            return true;
        }
    }
}
