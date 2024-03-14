package com.android.launcher3.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.drawable.ShapeDrawable;
import android.os.Handler;
import android.util.IntProperty;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.R$styleable;
import com.android.launcher3.anim.AnimatorListeners;
import com.android.launcher3.graphics.TriangleShape;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class ArrowTipView extends AbstractFloatingView {
    public static final IntProperty TEXT_ALPHA = new IntProperty() { // from class: com.android.launcher3.views.ArrowTipView.1
        @Override // android.util.Property
        public final Integer get(Object obj) {
            return Integer.valueOf(ArrowTipView.e((ArrowTipView) obj));
        }

        @Override // android.util.IntProperty
        public final void setValue(Object obj, int i4) {
            ArrowTipView.f((ArrowTipView) obj, i4);
        }
    };
    private final ActivityContext mActivityContext;
    private final int mArrowMinOffset;
    private View mArrowView;
    private final int mArrowViewPaintColor;
    private final int mArrowWidth;
    private AnimatorSet mCloseAnimator;
    private final Handler mHandler;
    private boolean mIsPointingUp;
    private AnimatorSet mOpenAnimator;
    private int mTextAlpha;

    public ArrowTipView() {
        throw null;
    }

    public ArrowTipView(Context context, boolean z4) {
        this(context, z4, 0);
    }

    public static /* synthetic */ void c(ArrowTipView arrowTipView, int i4, int i5, int i6, int i7, int i8, int i9) {
        View view;
        float width = arrowTipView.getWidth() / 2.0f;
        float f4 = i4;
        float f5 = f4 - width;
        float f6 = i5;
        if (f5 < f6) {
            f5 = f6;
        } else {
            int i10 = i6 - i5;
            if (width + f4 > i10) {
                f5 = i10 - arrowTipView.getWidth();
            }
        }
        arrowTipView.setX(f5);
        int height = arrowTipView.getHeight();
        boolean z4 = arrowTipView.mIsPointingUp;
        if (!z4 ? i9 - height < 0 : i7 + height > i8) {
            arrowTipView.mIsPointingUp = !z4;
            arrowTipView.updateArrowTipInView();
        }
        arrowTipView.setY(arrowTipView.mIsPointingUp ? i7 : i9 - height);
        arrowTipView.mArrowView.setX((f4 - f5) - (view.getWidth() / 2.0f));
        arrowTipView.requestLayout();
    }

    public static int e(ArrowTipView arrowTipView) {
        return arrowTipView.mTextAlpha;
    }

    public static void f(ArrowTipView arrowTipView, int i4) {
        if (arrowTipView.mTextAlpha != i4) {
            arrowTipView.mTextAlpha = i4;
            TextView textView = (TextView) arrowTipView.findViewById(R.id.text);
            textView.setTextColor(textView.getTextColors().withAlpha(arrowTipView.mTextAlpha));
        }
    }

    private void updateArrowTipInView() {
        ViewGroup.LayoutParams layoutParams = this.mArrowView.getLayoutParams();
        float f4 = layoutParams.width;
        float f5 = layoutParams.height;
        boolean z4 = this.mIsPointingUp;
        int i4 = TriangleShape.f4634d;
        Path path = new Path();
        if (z4) {
            path.moveTo(0.0f, f5);
            path.lineTo(f4, f5);
            path.lineTo(f4 / 2.0f, 0.0f);
            path.close();
        } else {
            path.moveTo(0.0f, 0.0f);
            path.lineTo(f4 / 2.0f, f5);
            path.lineTo(f4, 0.0f);
            path.close();
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable(new TriangleShape(path, f4, f5));
        Paint paint = shapeDrawable.getPaint();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.arrow_toast_corner_radius);
        paint.setColor(this.mArrowViewPaintColor);
        paint.setPathEffect(new CornerPathEffect(dimensionPixelSize));
        this.mArrowView.setBackground(shapeDrawable);
        removeView(this.mArrowView);
        if (this.mIsPointingUp) {
            addView(this.mArrowView, 0);
            ((ViewGroup.MarginLayoutParams) layoutParams).setMargins(0, 0, 0, dimensionPixelSize * (-1));
            return;
        }
        addView(this.mArrowView, 1);
        ((ViewGroup.MarginLayoutParams) layoutParams).setMargins(0, dimensionPixelSize * (-1), 0, 0);
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final void handleClose(boolean z4) {
        if (this.mOpenAnimator.isStarted()) {
            this.mOpenAnimator.cancel();
        }
        if (this.mIsOpen) {
            if (z4) {
                this.mCloseAnimator.addListener(AnimatorListeners.forSuccessCallback(new h(this, 0)));
                this.mCloseAnimator.start();
            } else {
                this.mCloseAnimator.cancel();
                this.mActivityContext.getDragLayer().removeView(this);
            }
            this.mIsOpen = false;
        }
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public final boolean isOfType(int i4) {
        return (i4 & 32) != 0;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        close(false);
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerInterceptTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            close(true);
            return this.mActivityContext.getDragLayer().isEventOverView(this, motionEvent);
        }
        return false;
    }

    public final void setCustomCloseAnimation(AnimatorSet animatorSet) {
        this.mCloseAnimator = animatorSet;
    }

    public final void setCustomOpenAnimation(AnimatorSet animatorSet) {
        this.mOpenAnimator = animatorSet;
    }

    public final void show(String str, int i4, int i5, final int i6) {
        ((TextView) findViewById(R.id.text)).setText(str);
        BaseDragLayer dragLayer = this.mActivityContext.getDragLayer();
        dragLayer.addView(this);
        DeviceProfile deviceProfile = this.mActivityContext.getDeviceProfile();
        BaseDragLayer.LayoutParams layoutParams = (BaseDragLayer.LayoutParams) getLayoutParams();
        ((FrameLayout.LayoutParams) layoutParams).gravity = i4;
        ((FrameLayout.LayoutParams) layoutParams).leftMargin = this.mArrowMinOffset + deviceProfile.getInsets().left;
        ((FrameLayout.LayoutParams) layoutParams).rightMargin = this.mArrowMinOffset + deviceProfile.getInsets().right;
        ((FrameLayout.LayoutParams) layoutParams).width = -1;
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.mArrowView.getLayoutParams();
        layoutParams2.gravity = i4;
        if (dragLayer.getLayoutDirection() == 1) {
            i5 = dragLayer.getMeasuredWidth() - i5;
        }
        if (i4 == 8388613) {
            layoutParams2.setMarginEnd(Math.max(this.mArrowMinOffset, ((dragLayer.getMeasuredWidth() - ((FrameLayout.LayoutParams) layoutParams).rightMargin) - i5) - (this.mArrowWidth / 2)));
        } else if (i4 == 8388611) {
            layoutParams2.setMarginStart(Math.max(this.mArrowMinOffset, (i5 - ((FrameLayout.LayoutParams) layoutParams).leftMargin) - (this.mArrowWidth / 2)));
        }
        requestLayout();
        post(new Runnable() { // from class: com.android.launcher3.views.j
            @Override // java.lang.Runnable
            public final void run() {
                ArrowTipView arrowTipView = ArrowTipView.this;
                int i7 = i6;
                arrowTipView.setY(i7 - (r1.mIsPointingUp ? 0 : arrowTipView.getHeight()));
            }
        });
        this.mIsOpen = true;
        this.mHandler.postDelayed(new h(this, 2), 10000L);
        this.mOpenAnimator.start();
    }

    public final ArrowTipView showAroundRect(String str, int i4, Rect rect, int i5) {
        return showAtLocation(i4, rect.top - i5, rect.bottom + i5, str, true);
    }

    public final ArrowTipView showAtLocation(String str, int i4, int i5) {
        return showAtLocation(i4, i5, i5, str, true);
    }

    public ArrowTipView(Context context, boolean z4, int i4) {
        super(context, null, 0);
        this.mHandler = new Handler();
        this.mOpenAnimator = new AnimatorSet();
        this.mCloseAnimator = new AnimatorSet();
        this.mActivityContext = (ActivityContext) ActivityContext.lookupContext(context);
        this.mIsPointingUp = z4;
        this.mArrowWidth = context.getResources().getDimensionPixelSize(R.dimen.arrow_toast_arrow_width);
        this.mArrowMinOffset = context.getResources().getDimensionPixelSize(R.dimen.dynamic_grid_cell_border_spacing);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(R$styleable.ArrowTipView);
        context = (obtainStyledAttributes.hasValue(0) && obtainStyledAttributes.hasValue(1)) ? context : new ContextThemeWrapper(context, (int) R.style.ArrowTipStyle);
        this.mArrowViewPaintColor = obtainStyledAttributes.getColor(0, context.getColor(R.color.arrow_tip_view_bg));
        obtainStyledAttributes.recycle();
        LinearLayout.inflate(context, R.layout.arrow_toast, this);
        setOrientation(1);
        this.mArrowView = findViewById(R.id.arrow);
        updateArrowTipInView();
        setAlpha(0.0f);
        this.mOpenAnimator.play(ObjectAnimator.ofFloat(this, LinearLayout.ALPHA, 1.0f));
        this.mOpenAnimator.setStartDelay(200L);
        this.mOpenAnimator.setDuration(300L);
        this.mOpenAnimator.setInterpolator(y0.e.f12962z);
        this.mCloseAnimator.play(ObjectAnimator.ofFloat(this, LinearLayout.ALPHA, 0.0f));
        this.mCloseAnimator.setStartDelay(0L);
        this.mCloseAnimator.setDuration(100L);
        this.mCloseAnimator.setInterpolator(y0.e.f12957u);
        this.mCloseAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.ArrowTipView.2
            {
                ArrowTipView.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                ArrowTipView.this.mActivityContext.getDragLayer().removeView(ArrowTipView.this);
            }
        });
    }

    /* renamed from: showAtLocation */
    public final void m4showAtLocation(String str, int i4, int i5) {
        showAtLocation(i4, i5, i5, str, false);
    }

    private ArrowTipView showAtLocation(final int i4, final int i5, final int i6, String str, boolean z4) {
        BaseDragLayer dragLayer = this.mActivityContext.getDragLayer();
        final int width = dragLayer.getWidth();
        final int height = dragLayer.getHeight();
        int dimensionPixelSize = getContext().getResources().getDimensionPixelSize(R.dimen.widget_picker_education_tip_max_width);
        final int dimensionPixelSize2 = getContext().getResources().getDimensionPixelSize(R.dimen.widget_picker_education_tip_min_margin);
        if (width < (dimensionPixelSize2 * 2) + dimensionPixelSize) {
            Log.w("ArrowTipView", "Cannot display tip on a small screen of size: " + width);
            return null;
        }
        TextView textView = (TextView) findViewById(R.id.text);
        textView.setText(str);
        textView.setMaxWidth(dimensionPixelSize);
        if (dragLayer.indexOfChild(this) < 0) {
            dragLayer.addView(this);
            requestLayout();
        }
        post(new Runnable() { // from class: com.android.launcher3.views.i
            @Override // java.lang.Runnable
            public final void run() {
                ArrowTipView.c(ArrowTipView.this, i4, dimensionPixelSize2, width, i6, height, i5);
            }
        });
        this.mIsOpen = true;
        if (z4) {
            this.mHandler.postDelayed(new h(this, 1), 10000L);
        }
        this.mOpenAnimator.start();
        return this;
    }
}
