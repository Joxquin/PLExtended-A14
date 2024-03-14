package com.android.launcher3;

import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewTreeObserver;
import com.android.launcher3.FirstFrameAnimatorHelper;
import com.android.launcher3.util.window.RefreshRateTracker;
/* loaded from: classes.dex */
public final class FirstFrameAnimatorHelper implements ViewTreeObserver.OnDrawListener, View.OnAttachStateChangeListener {
    private long mGlobalFrameCount;
    private View mRootView;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class MyListener implements ValueAnimator.AnimatorUpdateListener {
        private boolean mAdjustedSecondFrameTime;
        private boolean mHandlingOnAnimationUpdate;
        private long mStartFrame;
        private long mStartTime = -1;

        public MyListener() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(final ValueAnimator valueAnimator) {
            long currentTimeMillis = System.currentTimeMillis();
            if (this.mStartTime == -1) {
                this.mStartFrame = FirstFrameAnimatorHelper.this.mGlobalFrameCount;
                this.mStartTime = currentTimeMillis;
            }
            long currentPlayTime = valueAnimator.getCurrentPlayTime();
            boolean z4 = Float.compare(1.0f, valueAnimator.getAnimatedFraction()) == 0;
            if (this.mHandlingOnAnimationUpdate || FirstFrameAnimatorHelper.this.mRootView == null || FirstFrameAnimatorHelper.this.mRootView.getWindowVisibility() != 0 || currentPlayTime >= valueAnimator.getDuration() || z4) {
                return;
            }
            this.mHandlingOnAnimationUpdate = true;
            long j4 = FirstFrameAnimatorHelper.this.mGlobalFrameCount - this.mStartFrame;
            if (j4 != 0 || currentTimeMillis >= this.mStartTime + 1000 || currentPlayTime <= 0) {
                int singleFrameMs = RefreshRateTracker.getSingleFrameMs(FirstFrameAnimatorHelper.this.mRootView.getContext());
                int i4 = (j4 > 1L ? 1 : (j4 == 1L ? 0 : -1));
                if (i4 == 0) {
                    long j5 = this.mStartTime;
                    if (currentTimeMillis < 1000 + j5 && !this.mAdjustedSecondFrameTime) {
                        long j6 = singleFrameMs;
                        if (currentTimeMillis > j5 + j6 && currentPlayTime > j6) {
                            valueAnimator.setCurrentPlayTime(j6);
                            this.mAdjustedSecondFrameTime = true;
                        }
                    }
                }
                if (i4 > 0) {
                    FirstFrameAnimatorHelper.this.mRootView.post(new Runnable() { // from class: com.android.launcher3.v
                        @Override // java.lang.Runnable
                        public final void run() {
                            FirstFrameAnimatorHelper.MyListener myListener = FirstFrameAnimatorHelper.MyListener.this;
                            ValueAnimator valueAnimator2 = valueAnimator;
                            myListener.getClass();
                            valueAnimator2.removeUpdateListener(myListener);
                        }
                    });
                }
            } else {
                FirstFrameAnimatorHelper.this.mRootView.invalidate();
                valueAnimator.setCurrentPlayTime(0L);
            }
            this.mHandlingOnAnimationUpdate = false;
        }
    }

    public FirstFrameAnimatorHelper(View view) {
        view.addOnAttachStateChangeListener(this);
        if (view.isAttachedToWindow()) {
            onViewAttachedToWindow(view);
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public final void onDraw() {
        this.mGlobalFrameCount++;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        View rootView = view.getRootView();
        this.mRootView = rootView;
        rootView.getViewTreeObserver().addOnDrawListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        View view2 = this.mRootView;
        if (view2 != null) {
            view2.getViewTreeObserver().removeOnDrawListener(this);
            this.mRootView = null;
        }
    }
}
