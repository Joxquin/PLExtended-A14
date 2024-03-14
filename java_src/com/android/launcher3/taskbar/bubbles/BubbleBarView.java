package com.android.launcher3.taskbar.bubbles;

import Z0.e;
import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.launcher3.taskbar.bubbles.BubbleBarView;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import java.util.List;
import java.util.function.Consumer;
import w.f;
/* loaded from: classes.dex */
public class BubbleBarView extends FrameLayout {
    private final BubbleBarBackground mBubbleBarBackground;
    private final Rect mBubbleBarBounds;
    private final float mBubbleElevation;
    private BubbleView mDraggedBubbleView;
    private final float mIconOverlapAmount;
    private final float mIconSize;
    private final float mIconSpacing;
    private boolean mIsBarExpanded;
    private View.OnClickListener mOnClickListener;
    private float mRelativePivotX;
    private float mRelativePivotY;
    private Runnable mReorderRunnable;
    private BubbleView mSelectedBubbleView;
    private final Rect mTempRect;
    private Consumer mUpdateSelectedBubbleAfterCollapse;
    private final ValueAnimator mWidthAnimator;

    public BubbleBarView(Context context) {
        this(context, null);
    }

    public static /* synthetic */ void a(BubbleBarView bubbleBarView) {
        bubbleBarView.updateChildrenRenderNodeProperties();
        bubbleBarView.invalidate();
    }

    public static /* synthetic */ void c(BubbleBarView bubbleBarView, ValueAnimator valueAnimator) {
        bubbleBarView.getClass();
        bubbleBarView.mBubbleBarBackground.setArrowPosition(((Float) valueAnimator.getAnimatedValue()).floatValue());
        bubbleBarView.invalidate();
    }

    private float collapsedWidth() {
        int childCount = getChildCount();
        int paddingEnd = getPaddingEnd() + getPaddingStart();
        if (childCount > 2) {
            return this.mIconSize + this.mIconOverlapAmount + paddingEnd;
        }
        return paddingEnd + this.mIconSize;
    }

    public void doReorder(List list) {
        if (this.mIsBarExpanded) {
            return;
        }
        for (int i4 = 0; i4 < list.size(); i4++) {
            View view = (View) list.get(i4);
            int indexOfChild = indexOfChild(view);
            if (view != null && indexOfChild >= 0) {
                removeViewInLayout(view);
                addViewInLayout(view, i4, view.getLayoutParams());
            }
        }
        updateChildrenRenderNodeProperties();
    }

    private void updateArrowForSelected(boolean z4) {
        BubbleView bubbleView = this.mSelectedBubbleView;
        if (bubbleView == null) {
            Log.w("BubbleBarView", "trying to update selection arrow without a selected view!");
            return;
        }
        int indexOfChild = indexOfChild(bubbleView);
        float f4 = this.mIconSize;
        float paddingStart = (f4 / 2.0f) + ((this.mIconSpacing + f4) * indexOfChild) + getPaddingStart();
        if (!z4) {
            this.mBubbleBarBackground.setArrowPosition(paddingStart);
            invalidate();
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(this.mBubbleBarBackground.getArrowPositionX(), paddingStart);
        ofFloat.setDuration(200L);
        ofFloat.addUpdateListener(new e(this, 1));
        ofFloat.start();
    }

    private void updateChildrenRenderNodeProperties() {
        float floatValue = ((Float) this.mWidthAnimator.getAnimatedValue()).floatValue();
        float width = getWidth();
        float childCount = ((this.mIconSize + this.mIconSpacing) * getChildCount()) + getPaddingEnd() + getPaddingStart();
        float collapsedWidth = collapsedWidth();
        int childCount2 = getChildCount();
        float height = (this.mBubbleBarBounds.height() - this.mIconSize) / 2.0f;
        boolean z4 = getVisibility() == 0;
        int i4 = 0;
        while (i4 < childCount2) {
            BubbleView bubbleView = (BubbleView) getChildAt(i4);
            bubbleView.setTranslationY(height);
            float f4 = i4;
            float f5 = (this.mIconSize + this.mIconSpacing) * f4;
            float f6 = i4 == 0 ? 0.0f : this.mIconOverlapAmount;
            if (this.mIsBarExpanded) {
                bubbleView.setTranslationX(((((width - childCount) + f5) - f6) * floatValue) + f6);
                if (floatValue == 1.0f) {
                    bubbleView.setZ(bubbleView == this.mDraggedBubbleView ? this.mBubbleElevation : 0.0f);
                }
                bubbleView.setBehindStack(false, z4);
                bubbleView.setAlpha(1.0f);
            } else {
                float f7 = (width - collapsedWidth) + f6;
                bubbleView.setTranslationX(((f5 - f7) * floatValue) + f7);
                bubbleView.setZ((this.mBubbleElevation * 5.0f) - f4);
                bubbleView.setBehindStack(i4 > 0, z4);
                if (floatValue == 0.0f) {
                    if (i4 > 1) {
                        bubbleView.setAlpha(0.0f);
                    } else if (i4 == 1 && childCount2 == 2) {
                        bubbleView.setAlpha(0.0f);
                    }
                }
            }
            i4++;
        }
        float indexOfChild = (this.mIconSize / 2.0f) + (indexOfChild(this.mSelectedBubbleView) * this.mIconOverlapAmount) + getPaddingStart();
        int indexOfChild2 = indexOfChild(this.mSelectedBubbleView);
        float f8 = this.mIconSize;
        float paddingStart = (f8 / 2.0f) + ((this.mIconSpacing + f8) * indexOfChild2) + getPaddingStart();
        float a4 = f.a(childCount, collapsedWidth, floatValue, collapsedWidth);
        if (this.mIsBarExpanded) {
            this.mBubbleBarBackground.setArrowPosition((width - a4) + indexOfChild);
        } else {
            float f9 = (width - collapsedWidth) + indexOfChild;
            this.mBubbleBarBackground.setArrowPosition(f.a(paddingStart, f9, floatValue, f9));
        }
        this.mBubbleBarBackground.setArrowAlpha((int) (floatValue * 255.0f));
        this.mBubbleBarBackground.setWidth(a4);
    }

    public void updateWidth() {
        float collapsedWidth;
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        if (this.mIsBarExpanded) {
            int childCount = getChildCount();
            int paddingEnd = getPaddingEnd() + getPaddingStart();
            collapsedWidth = ((this.mIconSize + this.mIconSpacing) * childCount) + paddingEnd;
        } else {
            collapsedWidth = collapsedWidth();
        }
        layoutParams.width = (int) collapsedWidth;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i4, ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() + 1 > 5) {
            removeViewInLayout(getChildAt(getChildCount() - 2));
        }
        super.addView(view, i4, layoutParams);
        updateWidth();
    }

    public final Rect getBubbleBarBounds() {
        this.mBubbleBarBounds.top = getTop() + ((int) getTranslationY());
        this.mBubbleBarBounds.bottom = getBottom() + ((int) getTranslationY());
        return this.mBubbleBarBounds;
    }

    public final float getRelativePivotX() {
        return this.mRelativePivotX;
    }

    public final float getRelativePivotY() {
        return this.mRelativePivotY;
    }

    public final boolean isEventOverAnyItem(MotionEvent motionEvent) {
        if (getVisibility() == 0) {
            getBoundsOnScreen(this.mTempRect);
            return this.mTempRect.contains((int) motionEvent.getX(), (int) motionEvent.getY());
        }
        return false;
    }

    public final boolean isExpanded() {
        return this.mIsBarExpanded;
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.mIsBarExpanded) {
            return super.onInterceptTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        Rect rect = this.mBubbleBarBounds;
        rect.left = i4;
        rect.top = i5;
        rect.right = i6;
        rect.bottom = i7;
        setPivotX(this.mRelativePivotX * getWidth());
        setPivotY(this.mRelativePivotY * getHeight());
        updateChildrenRenderNodeProperties();
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        super.removeView(view);
        updateWidth();
    }

    public final void reorder(final List list) {
        if (this.mIsBarExpanded || this.mWidthAnimator.isRunning()) {
            this.mReorderRunnable = new Runnable() { // from class: Z0.f
                @Override // java.lang.Runnable
                public final void run() {
                    BubbleBarView.this.doReorder(list);
                }
            };
        } else {
            doReorder(list);
        }
    }

    public final void setDraggedBubble(BubbleView bubbleView) {
        this.mDraggedBubbleView = bubbleView;
        requestLayout();
    }

    public final void setExpanded(boolean z4) {
        if (this.mIsBarExpanded != z4) {
            this.mIsBarExpanded = z4;
            updateArrowForSelected(false);
            super.setOnClickListener(this.mIsBarExpanded ? null : this.mOnClickListener);
            if (z4) {
                this.mWidthAnimator.start();
            } else {
                this.mWidthAnimator.reverse();
            }
        }
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.mOnClickListener = onClickListener;
        if (this.mIsBarExpanded) {
            onClickListener = null;
        }
        super.setOnClickListener(onClickListener);
    }

    public final void setRelativePivot(float f4, float f5) {
        this.mRelativePivotX = Float.max(Float.min(f4, 1.0f), 0.0f);
        this.mRelativePivotY = Float.max(Float.min(f5, 1.0f), 0.0f);
        requestLayout();
    }

    public final void setSelectedBubble(BubbleView bubbleView) {
        this.mSelectedBubbleView = bubbleView;
        updateArrowForSelected(true);
    }

    public final void setUpdateSelectedBubbleAfterCollapse(Z0.b bVar) {
        this.mUpdateSelectedBubbleAfterCollapse = bVar;
    }

    public BubbleBarView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public BubbleBarView(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public BubbleBarView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mBubbleBarBounds = new Rect();
        this.mIsBarExpanded = false;
        this.mTempRect = new Rect();
        this.mRelativePivotX = 1.0f;
        this.mRelativePivotY = 1.0f;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mWidthAnimator = ofFloat;
        this.mIconOverlapAmount = getResources().getDimensionPixelSize(R.dimen.bubblebar_icon_overlap);
        this.mIconSpacing = getResources().getDimensionPixelSize(R.dimen.bubblebar_icon_spacing);
        this.mIconSize = getResources().getDimensionPixelSize(R.dimen.bubblebar_icon_size);
        this.mBubbleElevation = getResources().getDimensionPixelSize(R.dimen.bubblebar_icon_elevation);
        setClipToPadding(false);
        BubbleBarBackground bubbleBarBackground = new BubbleBarBackground((TaskbarActivityContext) ActivityContext.lookupContext(context), getResources().getDimensionPixelSize(R.dimen.bubblebar_size));
        this.mBubbleBarBackground = bubbleBarBackground;
        setBackgroundDrawable(bubbleBarBackground);
        ofFloat.setDuration(200L);
        ofFloat.addUpdateListener(new e(this, 0));
        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.android.launcher3.taskbar.bubbles.BubbleBarView.1
            {
                BubbleBarView.this = this;
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                BubbleBarView.this.mBubbleBarBackground.showArrow(BubbleBarView.this.mIsBarExpanded);
                if (!BubbleBarView.this.mIsBarExpanded && BubbleBarView.this.mReorderRunnable != null) {
                    BubbleBarView.this.mReorderRunnable.run();
                    BubbleBarView.this.mReorderRunnable = null;
                }
                if (!BubbleBarView.this.mIsBarExpanded && BubbleBarView.this.mUpdateSelectedBubbleAfterCollapse != null && (BubbleBarView.this.mSelectedBubbleView.getBubble() instanceof BubbleBarOverflow)) {
                    BubbleBarView.this.mUpdateSelectedBubbleAfterCollapse.accept(((BubbleView) BubbleBarView.this.getChildAt(0)).getBubble().getKey());
                }
                BubbleBarView.this.updateWidth();
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                BubbleBarView.this.mBubbleBarBackground.showArrow(true);
            }
        });
    }
}
