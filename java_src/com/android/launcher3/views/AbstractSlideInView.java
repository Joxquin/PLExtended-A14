package com.android.launcher3.views;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.window.BackEvent;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.LauncherAnimUtils;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.touch.BaseSwipeDetector;
import com.android.launcher3.touch.SingleAxisSwipeDetector;
import com.android.launcher3.views.BaseDragLayer;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public abstract class AbstractSlideInView extends AbstractFloatingView implements SingleAxisSwipeDetector.Listener {
    protected static final FloatProperty TRANSLATION_SHIFT = new FloatProperty() { // from class: com.android.launcher3.views.AbstractSlideInView.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((AbstractSlideInView) obj).mTranslationShift);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            ((AbstractSlideInView) obj).setTranslationShift(f4);
        }
    };
    protected final Context mActivityContext;
    protected final View mColorScrim;
    protected ViewGroup mContent;
    private Drawable mContentBackground;
    private View mContentBackgroundParentView;
    private float mDragStartProgress;
    protected float mFromTranslationShift;
    protected boolean mIsBackProgressing;
    protected boolean mNoIntercept;
    protected OnCloseListener mOnCloseBeginListener;
    protected List mOnCloseListeners;
    protected AnimatorPlaybackController mOpenCloseAnimation;
    private long mScrollDuration;
    private float mScrollEndProgress;
    private y0.d mScrollInterpolator;
    protected final AnimatedFloat mSlideInViewScale;
    protected final SingleAxisSwipeDetector mSwipeDetector;
    protected float mToTranslationShift;
    protected float mTranslationShift;
    protected final ViewOutlineProvider mViewOutlineProvider;

    /* loaded from: classes.dex */
    public interface OnCloseListener {
        void onSlideInViewClosed();
    }

    public AbstractSlideInView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        View view;
        this.mTranslationShift = 1.0f;
        this.mOnCloseListeners = new ArrayList();
        AnimatedFloat animatedFloat = new AnimatedFloat(new b(this, 1));
        animatedFloat.value = 1.0f;
        this.mSlideInViewScale = animatedFloat;
        this.mViewOutlineProvider = new ViewOutlineProvider() { // from class: com.android.launcher3.views.AbstractSlideInView.2
            @Override // android.view.ViewOutlineProvider
            public final void getOutline(View view2, Outline outline) {
                int measuredWidth = view2.getMeasuredWidth();
                int measuredHeight = view2.getMeasuredHeight();
                float measuredHeight2 = AbstractSlideInView.this.getMeasuredHeight();
                outline.setRect(0, 0, measuredWidth, ((int) (((measuredHeight2 / 0.9f) - measuredHeight2) / 2.0f)) + measuredHeight);
            }
        };
        this.mActivityContext = ActivityContext.lookupContext(context);
        this.mScrollInterpolator = y0.e.f12936J;
        this.mScrollDuration = 300L;
        this.mSwipeDetector = new SingleAxisSwipeDetector(context, this, SingleAxisSwipeDetector.VERTICAL);
        this.mOpenCloseAnimation = new PendingAnimation(0L).createPlaybackController();
        int scrimColor = getScrimColor(context);
        if (scrimColor != -1) {
            view = new View(context);
            view.forceHasOverlappingRendering(false);
            view.setBackgroundColor(scrimColor);
            BaseDragLayer.LayoutParams layoutParams = new BaseDragLayer.LayoutParams(-1, -1);
            layoutParams.ignoreInsets = true;
            view.setLayoutParams(layoutParams);
        } else {
            view = null;
        }
        this.mColorScrim = view;
    }

    private AnimatorPlaybackController setUpOpenCloseAnimation(float f4, float f5, long j4) {
        this.mFromTranslationShift = f4;
        this.mToTranslationShift = f5;
        PendingAnimation pendingAnimation = new PendingAnimation(j4);
        pendingAnimation.addEndListener(new Consumer() { // from class: com.android.launcher3.views.c
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AbstractSlideInView abstractSlideInView = AbstractSlideInView.this;
                Boolean bool = (Boolean) obj;
                abstractSlideInView.mSwipeDetector.finishedScrolling();
                abstractSlideInView.announceAccessibilityChanges();
            }
        });
        pendingAnimation.addFloat(this, TRANSLATION_SHIFT, f4, f5, y0.e.f12949m);
        onOpenCloseAnimationPending(pendingAnimation);
        AnimatorPlaybackController createPlaybackController = pendingAnimation.createPlaybackController();
        this.mOpenCloseAnimation = createPlaybackController;
        return createPlaybackController;
    }

    public final void addOnCloseListener(OnCloseListener onCloseListener) {
        ((ArrayList) this.mOnCloseListeners).add(onCloseListener);
    }

    public final void animateSlideInViewToNoScale() {
        this.mSlideInViewScale.animateToValue(1.0f).setDuration(200L).start();
    }

    public final void attachToContainer() {
        if (this.mColorScrim != null) {
            getPopupContainer().addView(this.mColorScrim);
        }
        getPopupContainer().addView(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        View view;
        int i4;
        Drawable drawable = this.mContentBackground;
        if (drawable != null && (view = this.mContentBackgroundParentView) != null) {
            int left = view.getLeft();
            int top = this.mContentBackgroundParentView.getTop() + ((int) this.mContent.getTranslationY());
            int right = this.mContentBackgroundParentView.getRight();
            int bottom = this.mContentBackgroundParentView.getBottom();
            if (this.mIsBackProgressing) {
                float measuredHeight = getMeasuredHeight();
                i4 = (int) (((measuredHeight / 0.9f) - measuredHeight) / 2.0f);
            } else {
                i4 = 0;
            }
            drawable.setBounds(left, top, right, bottom + i4);
            this.mContentBackground.draw(canvas);
        }
        super.dispatchDraw(canvas);
    }

    public Interpolator getIdleInterpolator() {
        return y0.e.f12957u;
    }

    public final BaseDragLayer getPopupContainer() {
        return ((ActivityContext) this.mActivityContext).getDragLayer();
    }

    public int getScrimColor(Context context) {
        return -1;
    }

    public float getShiftRange() {
        return this.mContent.getHeight();
    }

    public final void handleClose(long j4, boolean z4) {
        ValueAnimator animationPlayer;
        if (this.mIsOpen) {
            Optional.ofNullable(this.mOnCloseBeginListener).ifPresent(new a(0));
            if (!z4) {
                this.mOpenCloseAnimation.pause();
                setTranslationShift(1.0f);
                onCloseComplete();
                return;
            }
            if (this.mSwipeDetector.isIdleState()) {
                setUpOpenCloseAnimation(0.0f, 1.0f, j4);
                animationPlayer = this.mOpenCloseAnimation.getAnimationPlayer();
                animationPlayer.setInterpolator(getIdleInterpolator());
            } else {
                animationPlayer = this.mOpenCloseAnimation.getAnimationPlayer();
                animationPlayer.setInterpolator(this.mScrollInterpolator);
                animationPlayer.setDuration(this.mScrollDuration);
                this.mOpenCloseAnimation.getAnimationPlayer().setFloatValues(this.mOpenCloseAnimation.getProgressFraction(), this.mScrollEndProgress);
            }
            animationPlayer.addListener(AnimatorListeners.forEndCallback(new b(this, 0)));
            animationPlayer.start();
        }
    }

    public boolean isEventOverContent(MotionEvent motionEvent) {
        return getPopupContainer().isEventOverView(this.mContent, motionEvent);
    }

    public final void onBackCancelled() {
        super.onBackCancelled();
        animateSlideInViewToNoScale();
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public void onBackInvoked() {
        super.onBackInvoked();
        animateSlideInViewToNoScale();
    }

    public void onBackProgressed(BackEvent backEvent) {
        float progress = backEvent.getProgress();
        float interpolation = ((PathInterpolator) y0.e.f12956t).getInterpolation(progress);
        this.mIsBackProgressing = progress > 0.0f;
        this.mSlideInViewScale.updateValue(((1.0f - interpolation) * 0.100000024f) + 0.9f);
    }

    public void onCloseComplete() {
        this.mIsOpen = false;
        getPopupContainer().removeView(this);
        if (this.mColorScrim != null) {
            getPopupContainer().removeView(this.mColorScrim);
        }
        ((ArrayList) this.mOnCloseListeners).forEach(new a(1));
    }

    public boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.mNoIntercept) {
            return false;
        }
        this.mSwipeDetector.setDetectableScrollConditions(this.mSwipeDetector.isIdleState() ? 2 : 0, false);
        this.mSwipeDetector.onTouchEvent(motionEvent);
        return this.mSwipeDetector.isDraggingOrSettling() || !isEventOverContent(motionEvent);
    }

    @Override // com.android.launcher3.AbstractFloatingView, com.android.launcher3.util.TouchController
    public final boolean onControllerTouchEvent(MotionEvent motionEvent) {
        this.mSwipeDetector.onTouchEvent(motionEvent);
        if (motionEvent.getAction() == 1 && this.mSwipeDetector.isIdleState()) {
            if (!(this.mIsOpen && this.mOpenCloseAnimation.getAnimationPlayer().isRunning()) && !isEventOverContent(motionEvent)) {
                close(true);
            }
        }
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public final boolean onDrag(float f4) {
        this.mOpenCloseAnimation.setPlayFraction(Utilities.boundToRange(((f4 / getShiftRange()) * Math.signum(this.mToTranslationShift - this.mFromTranslationShift)) + this.mDragStartProgress, 0.0f, 1.0f));
        return true;
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public final void onDragEnd(float f4) {
        float f5 = ((ActivityContext) this.mActivityContext).getDeviceProfile().isTablet ? 0.3f : 0.5f;
        if ((this.mSwipeDetector.isFling(f4) && f4 > 0.0f) || this.mTranslationShift > f5) {
            this.mScrollInterpolator = y0.e.c(f4);
            this.mScrollDuration = BaseSwipeDetector.calculateDuration(f4, 1.0f - this.mTranslationShift);
            this.mScrollEndProgress = this.mToTranslationShift == 0.0f ? 0.0f : 1.0f;
            close(true);
            return;
        }
        ValueAnimator animationPlayer = this.mOpenCloseAnimation.getAnimationPlayer();
        animationPlayer.setInterpolator(y0.e.f12962z);
        float[] fArr = new float[2];
        fArr[0] = this.mOpenCloseAnimation.getProgressFraction();
        fArr[1] = this.mToTranslationShift != 0.0f ? 0.0f : 1.0f;
        animationPlayer.setFloatValues(fArr);
        animationPlayer.setDuration(BaseSwipeDetector.calculateDuration(f4, this.mTranslationShift)).start();
    }

    @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Listener
    public void onDragStart(boolean z4, float f4) {
        if (this.mOpenCloseAnimation.getAnimationPlayer().isRunning()) {
            this.mOpenCloseAnimation.pause();
            this.mDragStartProgress = this.mOpenCloseAnimation.getProgressFraction();
            return;
        }
        setUpOpenCloseAnimation(0.0f, 1.0f, 300L);
        this.mDragStartProgress = 0.0f;
    }

    public void onOpenCloseAnimationPending(PendingAnimation pendingAnimation) {
    }

    public void onScaleProgressChanged() {
        LauncherAnimUtils.SCALE_PROPERTY.set((FloatProperty) this, Float.valueOf(this.mSlideInViewScale.value));
        setClipChildren(!this.mIsBackProgressing);
        this.mContent.setClipChildren(!this.mIsBackProgressing);
        invalidate();
    }

    public final void setContentBackgroundWithParent(View view, Drawable drawable) {
        this.mContentBackground = drawable;
        this.mContentBackgroundParentView = view;
    }

    public final void setOnCloseBeginListener(com.android.launcher3.taskbar.allapps.d dVar) {
        this.mOnCloseBeginListener = dVar;
    }

    public void setTranslationShift(float f4) {
        this.mTranslationShift = f4;
        this.mContent.setTranslationY(getShiftRange() * f4);
        View view = this.mColorScrim;
        if (view != null) {
            view.setAlpha(1.0f - this.mTranslationShift);
        }
        invalidate();
    }

    public final AnimatorPlaybackController setUpDefaultOpenAnimation() {
        AnimatorPlaybackController upOpenCloseAnimation = setUpOpenCloseAnimation(1.0f, 0.0f, 300L);
        upOpenCloseAnimation.getAnimationPlayer().setInterpolator(y0.e.f12950n);
        return upOpenCloseAnimation;
    }

    public final void setUpOpenAnimation(long j4) {
        setUpOpenCloseAnimation(1.0f, 0.0f, j4);
    }
}
