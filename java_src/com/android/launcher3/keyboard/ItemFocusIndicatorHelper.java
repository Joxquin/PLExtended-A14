package com.android.launcher3.keyboard;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.RectEvaluator;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.FloatProperty;
import android.view.View;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.Themes;
/* loaded from: classes.dex */
public abstract class ItemFocusIndicatorHelper implements ValueAnimator.AnimatorUpdateListener {
    private float mAlpha;
    private final View mContainer;
    private ObjectAnimator mCurrentAnimation;
    private Object mCurrentItem;
    private final Rect mDirtyRect = new Rect();
    private boolean mIsDirty = false;
    private Object mLastFocusedItem;
    private final int mMaxAlpha;
    protected final Paint mPaint;
    private float mRadius;
    private float mShift;
    private Object mTargetItem;
    public static final FloatProperty ALPHA = new FloatProperty("alpha") { // from class: com.android.launcher3.keyboard.ItemFocusIndicatorHelper.1
        public final Float a(ItemFocusIndicatorHelper itemFocusIndicatorHelper) {
            switch (r2) {
                case 0:
                    return Float.valueOf(itemFocusIndicatorHelper.mAlpha);
                default:
                    return Float.valueOf(itemFocusIndicatorHelper.mShift);
            }
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ Float get(Object obj) {
            switch (r2) {
                case 0:
                    return a((ItemFocusIndicatorHelper) obj);
                default:
                    return a((ItemFocusIndicatorHelper) obj);
            }
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            int i4 = r2;
            switch (i4) {
                case 0:
                    ItemFocusIndicatorHelper itemFocusIndicatorHelper = (ItemFocusIndicatorHelper) obj;
                    switch (i4) {
                        case 0:
                            itemFocusIndicatorHelper.setAlpha(f4);
                            return;
                        default:
                            itemFocusIndicatorHelper.mShift = f4;
                            return;
                    }
                default:
                    ItemFocusIndicatorHelper itemFocusIndicatorHelper2 = (ItemFocusIndicatorHelper) obj;
                    switch (i4) {
                        case 0:
                            itemFocusIndicatorHelper2.setAlpha(f4);
                            return;
                        default:
                            itemFocusIndicatorHelper2.mShift = f4;
                            return;
                    }
            }
        }
    };
    public static final FloatProperty SHIFT = new FloatProperty("shift") { // from class: com.android.launcher3.keyboard.ItemFocusIndicatorHelper.1
        public final Float a(ItemFocusIndicatorHelper itemFocusIndicatorHelper) {
            switch (r2) {
                case 0:
                    return Float.valueOf(itemFocusIndicatorHelper.mAlpha);
                default:
                    return Float.valueOf(itemFocusIndicatorHelper.mShift);
            }
        }

        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ Float get(Object obj) {
            switch (r2) {
                case 0:
                    return a((ItemFocusIndicatorHelper) obj);
                default:
                    return a((ItemFocusIndicatorHelper) obj);
            }
        }

        @Override // android.util.FloatProperty
        public final void setValue(Object obj, float f4) {
            int i4 = r2;
            switch (i4) {
                case 0:
                    ItemFocusIndicatorHelper itemFocusIndicatorHelper = (ItemFocusIndicatorHelper) obj;
                    switch (i4) {
                        case 0:
                            itemFocusIndicatorHelper.setAlpha(f4);
                            return;
                        default:
                            itemFocusIndicatorHelper.mShift = f4;
                            return;
                    }
                default:
                    ItemFocusIndicatorHelper itemFocusIndicatorHelper2 = (ItemFocusIndicatorHelper) obj;
                    switch (i4) {
                        case 0:
                            itemFocusIndicatorHelper2.setAlpha(f4);
                            return;
                        default:
                            itemFocusIndicatorHelper2.mShift = f4;
                            return;
                    }
            }
        }
    };
    private static final RectEvaluator RECT_EVALUATOR = new RectEvaluator(new Rect());
    private static final Rect sTempRect1 = new Rect();
    private static final Rect sTempRect2 = new Rect();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class ViewSetListener extends AnimatorListenerAdapter {
        private final boolean mCallOnCancel;
        private boolean mCalled = false;
        private final Object mItemToSet;

        public ViewSetListener(Object obj, boolean z4) {
            this.mItemToSet = obj;
            this.mCallOnCancel = z4;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            if (this.mCallOnCancel) {
                return;
            }
            this.mCalled = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            if (this.mCalled) {
                return;
            }
            ItemFocusIndicatorHelper.this.setCurrentItem(this.mItemToSet);
            this.mCalled = true;
        }
    }

    public ItemFocusIndicatorHelper(View view, int i4) {
        this.mContainer = view;
        Paint paint = new Paint(1);
        this.mPaint = paint;
        this.mMaxAlpha = Color.alpha(i4);
        paint.setColor(i4 | (-16777216));
        setAlpha(0.0f);
        this.mShift = 0.0f;
        if (FeatureFlags.ENABLE_DEVICE_SEARCH.get()) {
            this.mRadius = Themes.getDialogCornerRadius(view.getContext());
        }
    }

    private Rect getDrawRect() {
        Object obj;
        Object obj2 = this.mCurrentItem;
        if (obj2 == null || !shouldDraw(obj2)) {
            return null;
        }
        Object obj3 = this.mCurrentItem;
        Rect rect = sTempRect1;
        viewToRect(obj3, rect);
        if (this.mShift <= 0.0f || (obj = this.mTargetItem) == null) {
            return rect;
        }
        Rect rect2 = sTempRect2;
        viewToRect(obj, rect2);
        return RECT_EVALUATOR.evaluate(this.mShift, rect, rect2);
    }

    public final void changeFocus(Object obj, boolean z4) {
        if (z4) {
            ObjectAnimator objectAnimator = this.mCurrentAnimation;
            if (objectAnimator != null) {
                objectAnimator.cancel();
                this.mCurrentAnimation = null;
            }
            if (this.mAlpha > 0.2f) {
                this.mTargetItem = obj;
                ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat(ALPHA, 1.0f), PropertyValuesHolder.ofFloat(SHIFT, 1.0f));
                this.mCurrentAnimation = ofPropertyValuesHolder;
                ofPropertyValuesHolder.addListener(new ViewSetListener(obj, true));
            } else {
                setCurrentItem(obj);
                this.mCurrentAnimation = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat(ALPHA, 1.0f));
            }
            this.mLastFocusedItem = obj;
        } else if (this.mLastFocusedItem == obj) {
            this.mLastFocusedItem = null;
            ObjectAnimator objectAnimator2 = this.mCurrentAnimation;
            if (objectAnimator2 != null) {
                objectAnimator2.cancel();
                this.mCurrentAnimation = null;
            }
            ObjectAnimator ofPropertyValuesHolder2 = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat(ALPHA, 0.0f));
            this.mCurrentAnimation = ofPropertyValuesHolder2;
            ofPropertyValuesHolder2.addListener(new ViewSetListener(null, false));
        }
        if (this.mIsDirty) {
            this.mContainer.invalidate(this.mDirtyRect);
            this.mIsDirty = false;
        }
        Rect drawRect = getDrawRect();
        if (drawRect != null) {
            this.mContainer.invalidate(drawRect);
        }
        if (!z4) {
            obj = null;
        }
        this.mLastFocusedItem = obj;
        ObjectAnimator objectAnimator3 = this.mCurrentAnimation;
        if (objectAnimator3 != null) {
            objectAnimator3.addUpdateListener(this);
            this.mCurrentAnimation.setDuration(150L).start();
        }
    }

    public final void draw(Canvas canvas) {
        Rect drawRect;
        if (this.mAlpha > 0.0f && (drawRect = getDrawRect()) != null) {
            this.mDirtyRect.set(drawRect);
            Rect rect = this.mDirtyRect;
            float f4 = this.mRadius;
            canvas.drawRoundRect(rect.left, rect.top, rect.right, rect.bottom, f4, f4, this.mPaint);
            this.mIsDirty = true;
        }
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        if (this.mIsDirty) {
            this.mContainer.invalidate(this.mDirtyRect);
            this.mIsDirty = false;
        }
        Rect drawRect = getDrawRect();
        if (drawRect != null) {
            this.mContainer.invalidate(drawRect);
        }
    }

    public void onFocusChange(View view, boolean z4) {
        changeFocus(view, z4);
    }

    public final void setAlpha(float f4) {
        this.mAlpha = f4;
        this.mPaint.setAlpha((int) (f4 * this.mMaxAlpha));
    }

    public final void setCurrentItem(Object obj) {
        this.mCurrentItem = obj;
        this.mShift = 0.0f;
        this.mTargetItem = null;
    }

    public boolean shouldDraw(Object obj) {
        return true;
    }

    public abstract void viewToRect(Object obj, Rect rect);
}
