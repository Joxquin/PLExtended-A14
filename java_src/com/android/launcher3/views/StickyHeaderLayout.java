package com.android.launcher3.views;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.FloatProperty;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.InterfaceC0284n0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.R$styleable;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.views.StickyHeaderLayout;
import com.android.systemui.shared.system.QuickStepContract;
/* loaded from: classes.dex */
public class StickyHeaderLayout extends LinearLayout implements InterfaceC0284n0 {
    private EmptySpaceView mCurrentEmptySpaceView;
    private RecyclerView mCurrentRecyclerView;
    private int mHeaderHeight;
    private float mLastScroll;
    private Animator mOffsetAnimator;
    private float mScrollOffset;
    private boolean mShouldForwardToRecyclerView;
    private static final FloatProperty SCROLL_OFFSET = new FloatProperty() { // from class: com.android.launcher3.views.StickyHeaderLayout.1
        @Override // android.util.Property
        public final Float get(Object obj) {
            return Float.valueOf(((StickyHeaderLayout) obj).mScrollOffset);
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            StickyHeaderLayout stickyHeaderLayout = (StickyHeaderLayout) obj;
            stickyHeaderLayout.mScrollOffset = f4;
            stickyHeaderLayout.updateHeaderScroll();
        }
    };
    private static final x INTERCEPT_PROXY = new x(0);
    private static final x TOUCH_PROXY = new x(1);

    /* loaded from: classes.dex */
    public final class EmptySpaceView extends View {
        private int mHeight;
        private Runnable mOnYChangeCallback;

        public EmptySpaceView(Context context) {
            super(context);
            this.mHeight = 0;
            animate().setUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.views.y
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    StickyHeaderLayout.EmptySpaceView.a(StickyHeaderLayout.EmptySpaceView.this);
                }
            });
        }

        public static void a(EmptySpaceView emptySpaceView) {
            Runnable runnable = emptySpaceView.mOnYChangeCallback;
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // android.view.View
        public final void offsetTopAndBottom(int i4) {
            super.offsetTopAndBottom(i4);
            Runnable runnable = this.mOnYChangeCallback;
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // android.view.View
        public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
            super.onLayout(z4, i4, i5, i6, i7);
            Runnable runnable = this.mOnYChangeCallback;
            if (runnable != null) {
                runnable.run();
            }
        }

        @Override // android.view.View
        public final void onMeasure(int i4, int i5) {
            super.onMeasure(i4, View.MeasureSpec.makeMeasureSpec(this.mHeight, QuickStepContract.SYSUI_STATE_NOTIFICATION_PANEL_VISIBLE));
        }

        public final void setFixedHeight(int i4) {
            if (this.mHeight != i4) {
                this.mHeight = i4;
                requestLayout();
            }
        }

        public final void setOnYChangeCallback(w wVar) {
            this.mOnYChangeCallback = wVar;
        }

        @Override // android.view.View
        public final void setTranslationY(float f4) {
            super.setTranslationY(f4);
            Runnable runnable = this.mOnYChangeCallback;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public StickyHeaderLayout(Context context) {
        this(context, null);
    }

    private void findCurrentEmptyView() {
        EmptySpaceView emptySpaceView = this.mCurrentEmptySpaceView;
        if (emptySpaceView != null) {
            emptySpaceView.setOnYChangeCallback(null);
            this.mCurrentEmptySpaceView = null;
        }
        int childCount = this.mCurrentRecyclerView.getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = this.mCurrentRecyclerView.getChildAt(i4);
            if (childAt instanceof EmptySpaceView) {
                EmptySpaceView emptySpaceView2 = (EmptySpaceView) childAt;
                this.mCurrentEmptySpaceView = emptySpaceView2;
                emptySpaceView2.setFixedHeight(this.mHeaderHeight);
                this.mCurrentEmptySpaceView.setOnYChangeCallback(new w(this, 0));
                return;
            }
        }
    }

    private boolean proxyMotionEvent(MotionEvent motionEvent, x xVar) {
        boolean onInterceptTouchEvent;
        float left = this.mCurrentRecyclerView.getLeft() - getLeft();
        float top = this.mCurrentRecyclerView.getTop() - getTop();
        motionEvent.offsetLocation(left, top);
        try {
            RecyclerView recyclerView = this.mCurrentRecyclerView;
            switch (xVar.f5378a) {
                case 0:
                    onInterceptTouchEvent = recyclerView.onInterceptTouchEvent(motionEvent);
                    break;
                default:
                    onInterceptTouchEvent = recyclerView.onTouchEvent(motionEvent);
                    break;
            }
            return onInterceptTouchEvent;
        } finally {
            motionEvent.offsetLocation(-left, -top);
        }
    }

    public void updateHeaderScroll() {
        float f4 = this.mScrollOffset;
        EmptySpaceView emptySpaceView = this.mCurrentEmptySpaceView;
        this.mLastScroll = f4 + (emptySpaceView == null ? 0.0f : emptySpaceView.getY());
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = getChildAt(i4);
            childAt.setTranslationY(Math.max(this.mLastScroll, ((MyLayoutParams) childAt.getLayoutParams()).scrollLimit));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof MyLayoutParams;
    }

    public final int getHeaderHeight() {
        return this.mHeaderHeight;
    }

    @Override // androidx.recyclerview.widget.InterfaceC0284n0
    public final void onChildViewAttachedToWindow(View view) {
        if (view instanceof EmptySpaceView) {
            findCurrentEmptyView();
        }
    }

    @Override // androidx.recyclerview.widget.InterfaceC0284n0
    public final void onChildViewDetachedFromWindow(View view) {
        if (view == this.mCurrentEmptySpaceView) {
            findCurrentEmptyView();
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean proxyMotionEvent = proxyMotionEvent(motionEvent, INTERCEPT_PROXY);
        this.mShouldForwardToRecyclerView = proxyMotionEvent;
        return proxyMotionEvent || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        int childCount = getChildCount();
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            MyLayoutParams myLayoutParams = (MyLayoutParams) childAt.getLayoutParams();
            if (myLayoutParams.sticky) {
                myLayoutParams.scrollLimit = (-childAt.getTop()) + i8;
                i8 = childAt.getHeight() + i8;
            } else {
                myLayoutParams.scrollLimit = Integer.MIN_VALUE;
            }
        }
        updateHeaderScroll();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        int measuredHeight = getMeasuredHeight();
        this.mHeaderHeight = measuredHeight;
        EmptySpaceView emptySpaceView = this.mCurrentEmptySpaceView;
        if (emptySpaceView != null) {
            emptySpaceView.setFixedHeight(measuredHeight);
        }
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        return (this.mShouldForwardToRecyclerView && proxyMotionEvent(motionEvent, TOUCH_PROXY)) || super.onTouchEvent(motionEvent);
    }

    public final void reset(boolean z4) {
        Animator animator = this.mOffsetAnimator;
        if (animator != null) {
            animator.cancel();
            this.mOffsetAnimator = null;
        }
        this.mScrollOffset = 0.0f;
        if (!z4) {
            updateHeaderScroll();
            return;
        }
        float f4 = this.mLastScroll;
        EmptySpaceView emptySpaceView = this.mCurrentEmptySpaceView;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, SCROLL_OFFSET, f4 - ((emptySpaceView == null ? 0.0f : emptySpaceView.getY()) + 0.0f), 0.0f);
        this.mOffsetAnimator = ofFloat;
        ofFloat.addListener(AnimatorListeners.forEndCallback(new w(this, 1)));
        this.mOffsetAnimator.start();
    }

    public final void setCurrentRecyclerView(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.mCurrentRecyclerView;
        boolean z4 = recyclerView2 != null;
        if (recyclerView2 != null) {
            recyclerView2.removeOnChildAttachStateChangeListener(this);
        }
        this.mCurrentRecyclerView = recyclerView;
        recyclerView.addOnChildAttachStateChangeListener(this);
        findCurrentEmptyView();
        reset(z4);
    }

    /* loaded from: classes.dex */
    public final class MyLayoutParams extends LinearLayout.LayoutParams {
        public int scrollLimit;
        public final boolean sticky;

        public MyLayoutParams(int i4, int i5) {
            super(i4, i5);
            this.sticky = false;
        }

        public MyLayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.StickyScroller_Layout);
            this.sticky = obtainStyledAttributes.getBoolean(0, false);
            obtainStyledAttributes.recycle();
        }
    }

    public StickyHeaderLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new MyLayoutParams(-1, -2);
    }

    public StickyHeaderLayout(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new MyLayoutParams(layoutParams.width, layoutParams.height);
    }

    public StickyHeaderLayout(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mLastScroll = 0.0f;
        this.mScrollOffset = 0.0f;
        this.mShouldForwardToRecyclerView = false;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public final LinearLayout.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new MyLayoutParams(getContext(), attributeSet);
    }
}
