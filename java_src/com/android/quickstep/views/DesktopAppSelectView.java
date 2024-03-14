package com.android.quickstep.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.Utilities;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class DesktopAppSelectView extends LinearLayout {
    private static final int HIDE_DURATION = 83;
    private static final int SHOW_CONTAINER_ALPHA_DURATION = 83;
    private static final int SHOW_CONTAINER_SCALE_DURATION = 333;
    private static final int SHOW_CONTENT_ALPHA_DELAY = 67;
    private static final int SHOW_CONTENT_ALPHA_DURATION = 83;
    private static final int SHOW_INITIAL_HEIGHT_DP = 7;
    private View mCloseButton;
    private Animator mHideAnimation;
    private final Launcher mLauncher;
    private Runnable mOnCloseCallback;
    private AnimatorSet mShowAnimation;
    private View mText;

    public DesktopAppSelectView(Context context) {
        this(context, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onFinishInflate$0(View view) {
        if (this.mHideAnimation == null) {
            hide();
            Runnable runnable = this.mOnCloseCallback;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$show$1(ValueAnimator valueAnimator) {
        getBackground().setAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }

    public static DesktopAppSelectView show(Launcher launcher, Runnable runnable) {
        DesktopAppSelectView desktopAppSelectView = (DesktopAppSelectView) launcher.getLayoutInflater().inflate(R.layout.floating_desktop_app_select, (ViewGroup) launcher.getDragLayer(), false);
        desktopAppSelectView.setOnCloseClickCallback(runnable);
        desktopAppSelectView.show();
        return desktopAppSelectView;
    }

    public void hide() {
        AnimatorSet animatorSet = this.mShowAnimation;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, LinearLayout.ALPHA, 0.0f);
        this.mHideAnimation = ofFloat;
        ofFloat.setDuration(83L).setInterpolator(y0.e.f12949m);
        this.mHideAnimation.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.views.DesktopAppSelectView.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                DesktopAppSelectView.this.mLauncher.getDragLayer().removeView(DesktopAppSelectView.this);
                DesktopAppSelectView.this.mHideAnimation = null;
            }
        });
        this.mHideAnimation.start();
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mText = findViewById(R.id.desktop_app_select_text);
        View findViewById = findViewById(R.id.close_button);
        this.mCloseButton = findViewById;
        findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.android.quickstep.views.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DesktopAppSelectView.this.lambda$onFinishInflate$0(view);
            }
        });
    }

    public void setOnCloseClickCallback(Runnable runnable) {
        this.mOnCloseCallback = runnable;
    }

    public DesktopAppSelectView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public DesktopAppSelectView(Context context, AttributeSet attributeSet, int i4) {
        this(context, attributeSet, i4, 0);
    }

    public DesktopAppSelectView(Context context, AttributeSet attributeSet, int i4, int i5) {
        super(context, attributeSet, i4, i5);
        this.mLauncher = Launcher.getLauncher(context);
    }

    private void show() {
        this.mLauncher.getDragLayer().addView(this);
        getBackground().setAlpha(0);
        this.mText.setAlpha(0.0f);
        this.mCloseButton.setAlpha(0.0f);
        setScaleY(Utilities.dpToPx(7.0f) / getResources().getDimensionPixelSize(R.dimen.desktop_mode_floating_app_select_height));
        setPivotY(0.0f);
        ValueAnimator ofInt = ValueAnimator.ofInt(0, 255);
        ofInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.quickstep.views.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                DesktopAppSelectView.this.lambda$show$1(valueAnimator);
            }
        });
        ofInt.setDuration(83L);
        Interpolator interpolator = y0.e.f12949m;
        ofInt.setInterpolator(interpolator);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(this, LinearLayout.SCALE_Y, 1.0f);
        ofFloat.setDuration(333L);
        ofFloat.setInterpolator(y0.e.f12939c);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(this.mText, LinearLayout.ALPHA, 1.0f);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat(this.mCloseButton, LinearLayout.ALPHA, 1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ofFloat2, ofFloat3);
        animatorSet.setStartDelay(67L);
        animatorSet.setDuration(83L);
        animatorSet.setInterpolator(interpolator);
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.mShowAnimation = animatorSet2;
        animatorSet2.addListener(new AnimatorListenerAdapter() { // from class: com.android.quickstep.views.DesktopAppSelectView.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                DesktopAppSelectView.this.mShowAnimation = null;
            }
        });
        this.mShowAnimation.playTogether(ofInt, ofFloat, animatorSet);
        this.mShowAnimation.start();
    }
}
