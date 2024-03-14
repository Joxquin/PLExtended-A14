package com.android.launcher3.taskbar;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.popup.RoundedArrowDrawable;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class TaskbarEduTooltip extends AbstractFloatingView {
    private final ActivityContext activityContext;
    private View arrow;
    private final float arrowHeight;
    private final float arrowPointRadius;
    private final float arrowWidth;
    private final int backgroundColor;
    private ViewGroup content;
    private final float enterYDelta;
    private final float exitYDelta;
    private m3.a onCloseCallback;
    private AnimatorSet openCloseAnimator;
    private final float tooltipCornerRadius;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TaskbarEduTooltip(Context context) {
        this(context, null, 0, 6, null);
        kotlin.jvm.internal.h.e(context, "context");
    }

    public static final void access$closeComplete(TaskbarEduTooltip taskbarEduTooltip) {
        AnimatorSet animatorSet = taskbarEduTooltip.openCloseAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        taskbarEduTooltip.openCloseAnimator = null;
        taskbarEduTooltip.mIsOpen = false;
        taskbarEduTooltip.activityContext.getDragLayer().removeView(taskbarEduTooltip);
    }

    private final AnimatorSet createOpenCloseAnimator(boolean z4) {
        float[] fArr;
        float[] fArr2;
        Interpolator EMPHASIZED_ACCELERATE;
        long j4;
        Interpolator EMPHASIZED_DECELERATE;
        if (z4) {
            fArr = new float[]{0.0f, 1.0f};
            fArr2 = new float[]{this.enterYDelta, 0.0f};
            EMPHASIZED_ACCELERATE = y0.e.f12946j;
            kotlin.jvm.internal.h.d(EMPHASIZED_ACCELERATE, "STANDARD");
            EMPHASIZED_DECELERATE = y0.e.f12939c;
            kotlin.jvm.internal.h.d(EMPHASIZED_DECELERATE, "EMPHASIZED_DECELERATE");
            j4 = 300;
        } else {
            fArr = new float[]{1.0f, 0.0f};
            fArr2 = new float[]{0.0f, this.exitYDelta};
            EMPHASIZED_ACCELERATE = y0.e.f12938b;
            kotlin.jvm.internal.h.d(EMPHASIZED_ACCELERATE, "EMPHASIZED_ACCELERATE");
            kotlin.jvm.internal.h.d(EMPHASIZED_ACCELERATE, "EMPHASIZED_ACCELERATE");
            j4 = 150;
            EMPHASIZED_DECELERATE = EMPHASIZED_ACCELERATE;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(Arrays.copyOf(fArr, fArr.length));
        ofFloat.setInterpolator(EMPHASIZED_ACCELERATE);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.android.launcher3.taskbar.TaskbarEduTooltip$createOpenCloseAnimator$fade$1$1
            final /* synthetic */ TaskbarEduTooltip this$0;

            {
                this.this$0 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                View view;
                View view2;
                switch (r2) {
                    case 0:
                        Object animatedValue = valueAnimator.getAnimatedValue();
                        kotlin.jvm.internal.h.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
                        float floatValue = ((Float) animatedValue).floatValue();
                        this.this$0.getContent().setAlpha(floatValue);
                        view2 = this.this$0.arrow;
                        if (view2 != null) {
                            view2.setAlpha(floatValue);
                            return;
                        } else {
                            kotlin.jvm.internal.h.g("arrow");
                            throw null;
                        }
                    default:
                        Object animatedValue2 = valueAnimator.getAnimatedValue();
                        kotlin.jvm.internal.h.c(animatedValue2, "null cannot be cast to non-null type kotlin.Float");
                        float floatValue2 = ((Float) animatedValue2).floatValue();
                        this.this$0.getContent().setTranslationY(floatValue2);
                        view = this.this$0.arrow;
                        if (view != null) {
                            view.setTranslationY(floatValue2);
                            return;
                        } else {
                            kotlin.jvm.internal.h.g("arrow");
                            throw null;
                        }
                }
            }
        });
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(Arrays.copyOf(fArr2, fArr2.length));
        ofFloat2.setInterpolator(EMPHASIZED_DECELERATE);
        ofFloat2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener(this) { // from class: com.android.launcher3.taskbar.TaskbarEduTooltip$createOpenCloseAnimator$fade$1$1
            final /* synthetic */ TaskbarEduTooltip this$0;

            {
                this.this$0 = this;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                View view;
                View view2;
                switch (r2) {
                    case 0:
                        Object animatedValue = valueAnimator.getAnimatedValue();
                        kotlin.jvm.internal.h.c(animatedValue, "null cannot be cast to non-null type kotlin.Float");
                        float floatValue = ((Float) animatedValue).floatValue();
                        this.this$0.getContent().setAlpha(floatValue);
                        view2 = this.this$0.arrow;
                        if (view2 != null) {
                            view2.setAlpha(floatValue);
                            return;
                        } else {
                            kotlin.jvm.internal.h.g("arrow");
                            throw null;
                        }
                    default:
                        Object animatedValue2 = valueAnimator.getAnimatedValue();
                        kotlin.jvm.internal.h.c(animatedValue2, "null cannot be cast to non-null type kotlin.Float");
                        float floatValue2 = ((Float) animatedValue2).floatValue();
                        this.this$0.getContent().setTranslationY(floatValue2);
                        view = this.this$0.arrow;
                        if (view != null) {
                            view.setTranslationY(floatValue2);
                            return;
                        } else {
                            kotlin.jvm.internal.h.g("arrow");
                            throw null;
                        }
                }
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(j4);
        animatorSet.playTogether(ofFloat, ofFloat2);
        return animatorSet;
    }

    public final ViewGroup getContent() {
        ViewGroup viewGroup = this.content;
        if (viewGroup != null) {
            return viewGroup;
        }
        kotlin.jvm.internal.h.g("content");
        throw null;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        if (isOpen()) {
            this.onCloseCallback.invoke();
            if (!z4) {
                AnimatorSet animatorSet = this.openCloseAnimator;
                if (animatorSet != null) {
                    animatorSet.cancel();
                }
                this.openCloseAnimator = null;
                this.mIsOpen = false;
                this.activityContext.getDragLayer().removeView(this);
                return;
            }
            AnimatorSet animatorSet2 = this.openCloseAnimator;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            AnimatorSet createOpenCloseAnimator = createOpenCloseAnimator(false);
            this.openCloseAnimator = createOpenCloseAnimator;
            createOpenCloseAnimator.addListener(AnimatorListeners.forEndCallback(new Runnable() { // from class: com.android.launcher3.taskbar.TaskbarEduTooltip$handleClose$1
                @Override // java.lang.Runnable
                public final void run() {
                    TaskbarEduTooltip.access$closeComplete(TaskbarEduTooltip.this);
                }
            }));
            AnimatorSet animatorSet3 = this.openCloseAnimator;
            if (animatorSet3 != null) {
                animatorSet3.start();
            }
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (131072 & i4) != 0;
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if ((motionEvent != null && motionEvent.getAction() == 0) && !this.activityContext.getDragLayer().isEventOverView(this, motionEvent)) {
            close(true);
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Settings.Secure.putInt(((LinearLayout) this).mContext.getContentResolver(), "launcher_taskbar_education_showing", 0);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        View findViewById = findViewById(R.id.content);
        kotlin.jvm.internal.h.d(findViewById, "findViewById(R.id.content)");
        this.content = (ViewGroup) findViewById;
        View findViewById2 = findViewById(R.id.arrow);
        kotlin.jvm.internal.h.d(findViewById2, "findViewById(R.id.arrow)");
        this.arrow = findViewById2;
        findViewById2.setBackground(new RoundedArrowDrawable(this.arrowWidth, this.arrowHeight, this.arrowPointRadius, this.tooltipCornerRadius, getMeasuredWidth(), getMeasuredHeight(), (getMeasuredWidth() - this.arrowWidth) / 2, 0.0f, false, true, this.backgroundColor));
    }

    public final void setOnCloseCallback(m3.a aVar) {
        this.onCloseCallback = aVar;
    }

    public final void show() {
        if (isOpen()) {
            return;
        }
        this.mIsOpen = true;
        this.activityContext.getDragLayer().addView(this);
        this.activityContext.getDragLayer().measure(0, 0);
        if (getMeasuredHeight() + this.activityContext.getDeviceProfile().taskbarHeight >= this.activityContext.getDeviceProfile().availableHeightPx) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
            layoutParams.width = -1;
            setLayoutParams(layoutParams);
        }
        AnimatorSet createOpenCloseAnimator = createOpenCloseAnimator(true);
        createOpenCloseAnimator.start();
        this.openCloseAnimator = createOpenCloseAnimator;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public TaskbarEduTooltip(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        kotlin.jvm.internal.h.e(context, "context");
    }

    public /* synthetic */ TaskbarEduTooltip(Context context, AttributeSet attributeSet, int i4, int i5, kotlin.jvm.internal.f fVar) {
        this(context, (i5 & 2) != 0 ? null : attributeSet, (i5 & 4) != 0 ? 0 : i4);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TaskbarEduTooltip(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        kotlin.jvm.internal.h.e(context, "context");
        this.activityContext = (ActivityContext) ActivityContext.lookupContext(context);
        this.backgroundColor = GraphicsUtils.getAttrColor(17957037, context);
        this.tooltipCornerRadius = Themes.getDialogCornerRadius(context);
        this.arrowWidth = getResources().getDimension(R.dimen.popup_arrow_width);
        this.arrowHeight = getResources().getDimension(R.dimen.popup_arrow_height);
        this.arrowPointRadius = getResources().getDimension(R.dimen.popup_arrow_corner_radius);
        this.enterYDelta = getResources().getDimension(R.dimen.taskbar_edu_tooltip_enter_y_delta);
        this.exitYDelta = getResources().getDimension(R.dimen.taskbar_edu_tooltip_exit_y_delta);
        this.onCloseCallback = new m3.a() { // from class: com.android.launcher3.taskbar.TaskbarEduTooltip$onCloseCallback$1
            @Override // m3.a
            public final /* bridge */ /* synthetic */ Object invoke() {
                return e3.f.f9037a;
            }
        };
    }
}
