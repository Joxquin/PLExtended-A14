package com.android.quickstep.interaction;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Outline;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.launcher3.config.FeatureFlags;
import com.android.systemui.shared.R;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class AnimatedTaskView extends ConstraintLayout {
    private View mBottomTaskView;
    private View mFullTaskView;
    private float mTaskViewAnimatedRadius;
    private final Rect mTaskViewAnimatedRect;
    private ViewOutlineProvider mTaskViewOutlineProvider;
    private View mTopTaskView;

    public AnimatedTaskView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void addAnimatedOutlineProvider(View view, Rect rect, float f4) {
        this.mTaskViewAnimatedRect.set(rect);
        this.mTaskViewAnimatedRadius = f4;
        view.setClipToOutline(true);
        view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.quickstep.interaction.AnimatedTaskView.3
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view2, Outline outline) {
                outline.setRoundRect(AnimatedTaskView.this.mTaskViewAnimatedRect, AnimatedTaskView.this.mTaskViewAnimatedRadius);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createAnimationToMultiRowLayout$0(Rect rect, int i4, float f4, float f5, ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        Rect rect2 = this.mTaskViewAnimatedRect;
        int i5 = rect.bottom;
        rect2.bottom = (int) (((i4 - i5) * floatValue) + i5);
        this.mTaskViewAnimatedRadius = w.f.a(f5, f4, floatValue, f4);
        this.mFullTaskView.invalidateOutline();
    }

    public AnimatorSet createAnimationToMultiRowLayout() {
        View view;
        if (this.mTaskViewOutlineProvider == null) {
            return null;
        }
        Outline outline = new Outline();
        this.mTaskViewOutlineProvider.getOutline(this, outline);
        final Rect rect = new Rect();
        outline.getRect(rect);
        final int height = this.mTopTaskView.getHeight();
        final float radius = outline.getRadius();
        final float dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.gesture_tutorial_small_task_view_corner_radius);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.quickstep.interaction.g
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                AnimatedTaskView.this.lambda$createAnimationToMultiRowLayout$0(rect, height, radius, dimensionPixelSize, valueAnimator);
            }
        });
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.AnimatedTaskView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                AnimatedTaskView.this.mFullTaskView.setOutlineProvider(AnimatedTaskView.this.mTaskViewOutlineProvider);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                AnimatedTaskView.this.mFullTaskView.setOutlineProvider(AnimatedTaskView.this.mTaskViewOutlineProvider);
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                AnimatedTaskView animatedTaskView = AnimatedTaskView.this;
                animatedTaskView.addAnimatedOutlineProvider(animatedTaskView.mFullTaskView, rect, radius);
            }
        });
        ArrayList arrayList = new ArrayList();
        arrayList.add(ObjectAnimator.ofFloat(this.mBottomTaskView, View.TRANSLATION_X, -view.getWidth(), 0.0f));
        arrayList.add(ofFloat);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        animatorSet.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.interaction.AnimatedTaskView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                super.onAnimationCancel(animator);
                AnimatedTaskView.this.setToMultiRowLayout();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                AnimatedTaskView.this.setToMultiRowLayout();
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                super.onAnimationStart(animator);
                AnimatedTaskView.this.setToSingleRowLayout(true);
                AnimatedTaskView animatedTaskView = AnimatedTaskView.this;
                animatedTaskView.setPadding(0, rect.top, 0, animatedTaskView.getHeight() - rect.bottom);
            }
        });
        return animatorSet;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mFullTaskView = findViewById(R.id.full_task_view);
        this.mTopTaskView = findViewById(R.id.top_task_view);
        this.mBottomTaskView = findViewById(R.id.bottom_task_view);
        setToSingleRowLayout(false);
    }

    @Override // android.view.View
    public void setClipToOutline(boolean z4) {
        this.mFullTaskView.setClipToOutline(z4);
    }

    public void setFakeTaskViewFillColor(int i4) {
        this.mFullTaskView.setBackgroundColor(i4);
        if (FeatureFlags.ENABLE_NEW_GESTURE_NAV_TUTORIAL.get()) {
            this.mTopTaskView.getBackground().setTint(i4);
            this.mBottomTaskView.getBackground().setTint(i4);
        }
    }

    @Override // android.view.View
    public void setOutlineProvider(ViewOutlineProvider viewOutlineProvider) {
        this.mTaskViewOutlineProvider = viewOutlineProvider;
        this.mFullTaskView.setOutlineProvider(viewOutlineProvider);
    }

    public void setToMultiRowLayout() {
        this.mFullTaskView.setVisibility(4);
        this.mTopTaskView.setVisibility(0);
        this.mBottomTaskView.setVisibility(0);
    }

    public void setToSingleRowLayout(boolean z4) {
        this.mFullTaskView.setVisibility(0);
        this.mTopTaskView.setVisibility(4);
        this.mBottomTaskView.setVisibility(z4 ? 0 : 4);
    }

    public AnimatedTaskView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AnimatedTaskView(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public AnimatedTaskView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mTaskViewOutlineProvider = null;
        this.mTaskViewAnimatedRect = new Rect();
    }
}
