package com.android.launcher3.taskbar.allapps;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import android.window.OnBackInvokedDispatcher;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.Insettable;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.taskbar.allapps.TaskbarAllAppsContainerView;
import com.android.launcher3.taskbar.allapps.TaskbarAllAppsSlideInView;
import com.android.launcher3.taskbar.allapps.TaskbarAllAppsViewController;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayContext;
import com.android.launcher3.views.AbstractSlideInView;
import com.android.systemui.shared.R;
import y0.e;
/* loaded from: classes.dex */
public class TaskbarAllAppsSlideInView extends AbstractSlideInView implements Insettable, DeviceProfile.OnDeviceProfileChangeListener {
    private TaskbarAllAppsViewController.TaskbarAllAppsCallbacks mAllAppsCallbacks;
    private TaskbarAllAppsContainerView mAppsView;
    private final Handler mHandler;
    private float mShiftRange;
    private Runnable mShowOnFullyAttachedToWindowRunnable;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.taskbar.allapps.TaskbarAllAppsSlideInView$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements View.OnAttachStateChangeListener {
        final /* synthetic */ boolean val$animate;

        public AnonymousClass1(boolean z4) {
            this.val$animate = z4;
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [com.android.launcher3.taskbar.allapps.c] */
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            TaskbarAllAppsSlideInView.this.removeOnAttachStateChangeListener(this);
            TaskbarAllAppsSlideInView taskbarAllAppsSlideInView = TaskbarAllAppsSlideInView.this;
            final boolean z4 = this.val$animate;
            taskbarAllAppsSlideInView.mShowOnFullyAttachedToWindowRunnable = new Runnable() { // from class: com.android.launcher3.taskbar.allapps.c
                @Override // java.lang.Runnable
                public final void run() {
                    TaskbarAllAppsSlideInView.AnonymousClass1 anonymousClass1 = TaskbarAllAppsSlideInView.AnonymousClass1.this;
                    TaskbarAllAppsSlideInView.e(TaskbarAllAppsSlideInView.this, z4);
                }
            };
            TaskbarAllAppsSlideInView.this.mHandler.post(TaskbarAllAppsSlideInView.this.mShowOnFullyAttachedToWindowRunnable);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
            TaskbarAllAppsSlideInView.this.removeOnAttachStateChangeListener(this);
        }
    }

    public TaskbarAllAppsSlideInView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public static /* synthetic */ void a(TaskbarAllAppsSlideInView taskbarAllAppsSlideInView) {
        if (taskbarAllAppsSlideInView.mIsOpen) {
            taskbarAllAppsSlideInView.mAllAppsCallbacks.onAllAppsTransitionEnd(true);
        }
    }

    public static void e(final TaskbarAllAppsSlideInView taskbarAllAppsSlideInView, boolean z4) {
        taskbarAllAppsSlideInView.mAllAppsCallbacks.onAllAppsTransitionStart(true);
        if (!z4) {
            taskbarAllAppsSlideInView.mAllAppsCallbacks.onAllAppsTransitionEnd(true);
            taskbarAllAppsSlideInView.mTranslationShift = 0.0f;
            return;
        }
        taskbarAllAppsSlideInView.setUpOpenAnimation(TaskbarAllAppsViewController.b(TaskbarAllAppsViewController.this).getOpenDuration());
        ValueAnimator animationPlayer = taskbarAllAppsSlideInView.mOpenCloseAnimation.getAnimationPlayer();
        animationPlayer.setInterpolator(e.f12937a);
        animationPlayer.addListener(AnimatorListeners.forEndCallback(new Runnable() { // from class: Y0.b
            @Override // java.lang.Runnable
            public final void run() {
                TaskbarAllAppsSlideInView.a(TaskbarAllAppsSlideInView.this);
            }
        }));
        animationPlayer.start();
    }

    @Override // com.android.launcher3.views.AbstractSlideInView, android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        this.mAppsView.drawOnScrimWithScale(this.mSlideInViewScale.value, canvas);
        super.dispatchDraw(canvas);
    }

    public final TaskbarAllAppsContainerView getAppsView() {
        return this.mAppsView;
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public final Interpolator getIdleInterpolator() {
        return e.f12937a;
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public final int getScrimColor(Context context) {
        return context.getColor(R.color.widgets_picker_scrim);
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public final float getShiftRange() {
        return this.mShiftRange;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        Runnable runnable = this.mShowOnFullyAttachedToWindowRunnable;
        if (runnable != null) {
            this.mHandler.removeCallbacks(runnable);
            this.mShowOnFullyAttachedToWindowRunnable = null;
        }
        if (this.mIsOpen) {
            this.mAllAppsCallbacks.onAllAppsTransitionStart(false);
        }
        handleClose(TaskbarAllAppsViewController.b(TaskbarAllAppsViewController.this).getCloseDuration(), z4);
    }

    public final void init(TaskbarAllAppsViewController.TaskbarAllAppsCallbacks taskbarAllAppsCallbacks) {
        this.mAllAppsCallbacks = taskbarAllAppsCallbacks;
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public final boolean isEventOverContent(MotionEvent motionEvent) {
        return getPopupContainer().isEventOverView(this.mAppsView.getVisibleContainerView(), motionEvent);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (262144 & i4) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((TaskbarOverlayContext) this.mActivityContext).addOnDeviceProfileChangeListener(this);
        if (FeatureFlags.ENABLE_BACK_SWIPE_LAUNCHER_ANIMATION.get()) {
            this.mAppsView.getAppsRecyclerViewContainer().setOutlineProvider(this.mViewOutlineProvider);
            this.mAppsView.getAppsRecyclerViewContainer().setClipToOutline(true);
            OnBackInvokedDispatcher findOnBackInvokedDispatcher = findOnBackInvokedDispatcher();
            if (findOnBackInvokedDispatcher != null) {
                findOnBackInvokedDispatcher.registerOnBackInvokedCallback(0, this);
            }
        }
    }

    @Override // com.android.launcher3.views.AbstractSlideInView, com.android.launcher3.AbstractFloatingView
    public final void onBackInvoked() {
        if (this.mAllAppsCallbacks.handleSearchBackInvoked()) {
            return;
        }
        super.onBackInvoked();
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public final void onCloseComplete() {
        this.mAllAppsCallbacks.onAllAppsTransitionEnd(false);
        super.onCloseComplete();
    }

    @Override // com.android.launcher3.views.AbstractSlideInView, com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            this.mNoIntercept = !this.mAppsView.shouldContainerScroll(motionEvent);
        }
        return super.onControllerInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((TaskbarOverlayContext) this.mActivityContext).removeOnDeviceProfileChangeListener(this);
        if (FeatureFlags.ENABLE_BACK_SWIPE_LAUNCHER_ANIMATION.get()) {
            this.mAppsView.getAppsRecyclerViewContainer().setOutlineProvider(null);
            this.mAppsView.getAppsRecyclerViewContainer().setClipToOutline(false);
            OnBackInvokedDispatcher findOnBackInvokedDispatcher = findOnBackInvokedDispatcher();
            if (findOnBackInvokedDispatcher != null) {
                findOnBackInvokedDispatcher.unregisterOnBackInvokedCallback(this);
            }
        }
    }

    @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
    public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
        this.mShiftRange = deviceProfile.allAppsShiftRange;
        setTranslationShift(0.0f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.android.launcher3.taskbar.allapps.b] */
    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        TaskbarAllAppsContainerView taskbarAllAppsContainerView = (TaskbarAllAppsContainerView) findViewById(R.id.apps_view);
        this.mAppsView = taskbarAllAppsContainerView;
        this.mContent = taskbarAllAppsContainerView;
        if (FeatureFlags.ENABLE_ALL_APPS_SEARCH_IN_TASKBAR.get()) {
            this.mAppsView.setOnInvalidateHeaderListener(new TaskbarAllAppsContainerView.OnInvalidateHeaderListener() { // from class: com.android.launcher3.taskbar.allapps.b
                @Override // com.android.launcher3.taskbar.allapps.TaskbarAllAppsContainerView.OnInvalidateHeaderListener
                public final void onInvalidateHeader() {
                    TaskbarAllAppsSlideInView.this.invalidate();
                }
            });
        }
        this.mShiftRange = ((TaskbarOverlayContext) this.mActivityContext).getDeviceProfile().allAppsShiftRange;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        setTranslationShift(this.mTranslationShift);
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public final void onOpenCloseAnimationPending(PendingAnimation pendingAnimation) {
        this.mAllAppsCallbacks.onAllAppsAnimationPending(pendingAnimation, this.mToTranslationShift == 0.0f);
    }

    @Override // com.android.launcher3.views.AbstractSlideInView
    public final void onScaleProgressChanged() {
        super.onScaleProgressChanged();
        this.mAppsView.setClipChildren(!this.mIsBackProgressing);
        this.mAppsView.getAppsRecyclerViewContainer().setClipChildren(!this.mIsBackProgressing);
    }

    @Override // com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        this.mAppsView.setInsets(rect);
    }

    public final void show(boolean z4) {
        if (this.mIsOpen || this.mOpenCloseAnimation.getAnimationPlayer().isRunning()) {
            return;
        }
        this.mIsOpen = true;
        addOnAttachStateChangeListener(new AnonymousClass1(z4));
        attachToContainer();
    }

    public TaskbarAllAppsSlideInView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mHandler = new Handler(Looper.myLooper());
    }
}
