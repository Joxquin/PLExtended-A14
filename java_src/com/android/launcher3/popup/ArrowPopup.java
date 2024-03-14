package com.android.launcher3.popup;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.util.Property;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.shortcuts.DeepShortcutView;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.util.Themes;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import java.util.Arrays;
import java.util.function.IntUnaryOperator;
/* loaded from: classes.dex */
public abstract class ArrowPopup extends AbstractFloatingView {
    private static final int CLOSE_CHILD_FADE_DURATION_U = 83;
    private static final int CLOSE_CHILD_FADE_START_DELAY_U = 150;
    private static final int CLOSE_DURATION_U = 233;
    private static final int CLOSE_FADE_DURATION_U = 83;
    private static final int CLOSE_FADE_START_DELAY_U = 150;
    private static final int OPEN_CHILD_FADE_DURATION_U = 83;
    private static final int OPEN_CHILD_FADE_START_DELAY_U = 0;
    private static final int OPEN_DURATION_U = 200;
    private static final int OPEN_FADE_DURATION_U = 83;
    private static final int OPEN_FADE_START_DELAY_U = 0;
    private static final int OPEN_OVERSHOOT_DURATION_U = 200;
    protected final Context mActivityContext;
    protected final View mArrow;
    protected int mArrowColor;
    protected final int mArrowHeight;
    protected final int mArrowOffsetHorizontal;
    protected final int mArrowOffsetVertical;
    protected final int mArrowPointRadius;
    protected final int mArrowWidth;
    protected final int mChildContainerMargin;
    protected int mCloseChildFadeDuration;
    protected int mCloseChildFadeStartDelay;
    protected int mCloseDuration;
    protected int mCloseFadeDuration;
    protected int mCloseFadeStartDelay;
    protected final int[] mColorIds;
    protected boolean mDeferContainerRemoval;
    protected final float mElevation;
    protected int mGravity;
    protected final LayoutInflater mInflater;
    protected boolean mIsAboveIcon;
    protected boolean mIsArrowRotated;
    protected boolean mIsLeftAligned;
    protected final boolean mIsRtl;
    private final String mIterateChildrenTag;
    private RunnableList mOnCloseCallbacks;
    protected int mOpenChildFadeDuration;
    protected int mOpenChildFadeStartDelay;
    protected AnimatorSet mOpenCloseAnimator;
    protected int mOpenDuration;
    protected int mOpenFadeDuration;
    protected int mOpenFadeStartDelay;
    protected final float mOutlineRadius;
    private final GradientDrawable mRoundedBottom;
    private final GradientDrawable mRoundedTop;
    protected final Rect mTempRect;
    protected boolean shouldScaleArrow;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.popup.ArrowPopup$1  reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends AnimatorListenerAdapter {

        /* renamed from: d  reason: collision with root package name */
        public final /* synthetic */ int f4921d;
        final /* synthetic */ ArrowPopup this$0;

        public /* synthetic */ AnonymousClass1(ArrowPopup arrowPopup, int i4) {
            this.f4921d = i4;
            this.this$0 = arrowPopup;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            switch (this.f4921d) {
                case 0:
                    this.this$0.setAlpha(1.0f);
                    this.this$0.announceAccessibilityChanges();
                    this.this$0.mOpenCloseAnimator = null;
                    return;
                default:
                    ArrowPopup arrowPopup = this.this$0;
                    arrowPopup.mOpenCloseAnimator = null;
                    if (arrowPopup.mDeferContainerRemoval) {
                        arrowPopup.setVisibility(4);
                        return;
                    } else {
                        arrowPopup.closeComplete();
                        return;
                    }
            }
        }
    }

    public ArrowPopup(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mOpenDuration = 276;
        this.mOpenFadeStartDelay = 0;
        this.mOpenFadeDuration = 38;
        this.mOpenChildFadeStartDelay = 38;
        this.mOpenChildFadeDuration = 76;
        this.mCloseDuration = 200;
        this.mCloseFadeStartDelay = 140;
        this.mCloseFadeDuration = 50;
        this.mCloseChildFadeStartDelay = 0;
        this.mCloseChildFadeDuration = 140;
        this.mTempRect = new Rect();
        this.shouldScaleArrow = false;
        this.mIsArrowRotated = false;
        this.mOnCloseCallbacks = new RunnableList();
        this.mInflater = LayoutInflater.from(context);
        float dialogCornerRadius = Themes.getDialogCornerRadius(context);
        this.mOutlineRadius = dialogCornerRadius;
        Context lookupContext = ActivityContext.lookupContext(context);
        this.mActivityContext = lookupContext;
        this.mIsRtl = Utilities.isRtl(getResources());
        this.mElevation = getResources().getDimension(R.dimen.deep_shortcuts_elevation);
        Resources resources = getResources();
        this.mArrowColor = B.c.a(R.color.popup_color_background, getContext()).getDefaultColor();
        this.mChildContainerMargin = resources.getDimensionPixelSize(R.dimen.popup_margin);
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.popup_arrow_width);
        this.mArrowWidth = dimensionPixelSize;
        int dimensionPixelSize2 = resources.getDimensionPixelSize(R.dimen.popup_arrow_height);
        this.mArrowHeight = dimensionPixelSize2;
        View view = new View(context);
        this.mArrow = view;
        view.setLayoutParams(new BaseDragLayer.LayoutParams(dimensionPixelSize, dimensionPixelSize2));
        this.mArrowOffsetVertical = resources.getDimensionPixelSize(R.dimen.popup_arrow_vertical_offset);
        this.mArrowOffsetHorizontal = resources.getDimensionPixelSize(R.dimen.popup_arrow_horizontal_center_offset) - (dimensionPixelSize / 2);
        this.mArrowPointRadius = resources.getDimensionPixelSize(R.dimen.popup_arrow_corner_radius);
        int dimensionPixelSize3 = resources.getDimensionPixelSize(R.dimen.popup_smaller_radius);
        GradientDrawable gradientDrawable = new GradientDrawable();
        this.mRoundedTop = gradientDrawable;
        int attrColor = GraphicsUtils.getAttrColor(R.attr.popupColorPrimary, context);
        gradientDrawable.setColor(attrColor);
        float f4 = dimensionPixelSize3;
        gradientDrawable.setCornerRadii(new float[]{dialogCornerRadius, dialogCornerRadius, dialogCornerRadius, dialogCornerRadius, f4, f4, f4, f4});
        GradientDrawable gradientDrawable2 = new GradientDrawable();
        this.mRoundedBottom = gradientDrawable2;
        gradientDrawable2.setColor(attrColor);
        gradientDrawable2.setCornerRadii(new float[]{f4, f4, f4, f4, dialogCornerRadius, dialogCornerRadius, dialogCornerRadius, dialogCornerRadius});
        this.mIterateChildrenTag = getContext().getString(R.string.popup_container_iterate_children);
        if (!FeatureFlags.ENABLE_MATERIAL_U_POPUP.get() && ((ActivityContext) lookupContext).canUseMultipleShadesForPopup()) {
            this.mColorIds = new int[]{R.color.popup_shade_first, R.color.popup_shade_second, R.color.popup_shade_third};
        } else {
            this.mColorIds = new int[]{R.color.popup_color_background};
        }
    }

    private void fadeInChildViews(ViewGroup viewGroup, float[] fArr, long j4, long j5, AnimatorSet animatorSet) {
        for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = viewGroup.getChildAt(childCount);
            if (childAt.getVisibility() == 0 && (childAt instanceof ViewGroup)) {
                if (isShortcutContainer(childAt)) {
                    fadeInChildViews((ViewGroup) childAt, fArr, j4, j5, animatorSet);
                } else {
                    ViewGroup viewGroup2 = (ViewGroup) childAt;
                    for (int childCount2 = viewGroup2.getChildCount() - 1; childCount2 >= 0; childCount2--) {
                        View childAt2 = viewGroup2.getChildAt(childCount2);
                        childAt2.setAlpha(fArr[0]);
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(childAt2, LinearLayout.ALPHA, fArr);
                        ofFloat.setStartDelay(j4);
                        ofFloat.setDuration(j5);
                        ofFloat.setInterpolator(y0.e.f12949m);
                        animatorSet.play(ofFloat);
                    }
                }
            }
        }
    }

    private Animator getAnimatorOfFloat(View view, Property property, int i4, int i5, Interpolator interpolator, float... fArr) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, property, fArr);
        ofFloat.setDuration(i4);
        ofFloat.setInterpolator(interpolator);
        ofFloat.setStartDelay(i5);
        return ofFloat;
    }

    private int getArrowLeft() {
        return this.mIsLeftAligned ? this.mArrowOffsetHorizontal : (getMeasuredWidth() - this.mArrowOffsetHorizontal) - this.mArrowWidth;
    }

    private AnimatorSet getOpenCloseAnimator(boolean z4, int i4, int i5, int i6, int i7, int i8, Interpolator interpolator) {
        AnimatorSet animatorSet = new AnimatorSet();
        float[] fArr = {1.0f, 0.0f};
        if (z4) {
            // fill-array-data instruction
            fArr[0] = 0.0f;
            fArr[1] = 1.0f;
        }
        float[] fArr2 = {1.0f, 0.5f};
        if (z4) {
            // fill-array-data instruction
            fArr2[0] = 0.5f;
            fArr2[1] = 1.0f;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
        ofFloat.setStartDelay(i5);
        ofFloat.setDuration(i6);
        ofFloat.setInterpolator(y0.e.f12949m);
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.popup.b
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                ArrowPopup.this.lambda$getOpenCloseAnimator$1(valueAnimator);
            }
        });
        animatorSet.play(ofFloat);
        setPivotX(this.mIsLeftAligned ? 0.0f : getMeasuredWidth());
        setPivotY(this.mIsAboveIcon ? getMeasuredHeight() : 0.0f);
        Animator ofFloat2 = ObjectAnimator.ofFloat(this, View.SCALE_Y, fArr2);
        long j4 = i4;
        ofFloat2.setDuration(j4);
        ofFloat2.setInterpolator(interpolator);
        animatorSet.play(ofFloat2);
        if (this.shouldScaleArrow) {
            Animator ofFloat3 = ObjectAnimator.ofFloat(this.mArrow, View.SCALE_Y, fArr2);
            ofFloat3.setDuration(j4);
            ofFloat3.setInterpolator(interpolator);
            animatorSet.play(ofFloat3);
        }
        fadeInChildViews(this, fArr, i7, i8, animatorSet);
        return animatorSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ int lambda$assignMarginsAndBackgrounds$0(int i4) {
        return B.c.a(i4, getContext()).getDefaultColor();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getOpenCloseAnimator$1(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.mArrow.setAlpha(floatValue);
        setAlpha(floatValue);
    }

    public void addArrow() {
        getPopupContainer().addView(this.mArrow);
        this.mArrow.setX(getX() + getArrowLeft());
        if (Gravity.isVertical(this.mGravity)) {
            this.mArrow.setVisibility(4);
        } else {
            updateArrowColor();
        }
        this.mArrow.setPivotX(this.mArrowWidth / 2.0f);
        this.mArrow.setPivotY(this.mIsAboveIcon ? this.mArrowHeight : 0.0f);
    }

    public void addOnCloseCallback(Runnable runnable) {
        this.mOnCloseCallbacks.add(runnable);
    }

    public void animateClose() {
        if (this.mIsOpen) {
            AnimatorSet animatorSet = this.mOpenCloseAnimator;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            this.mIsOpen = false;
            AnimatorSet materialUOpenCloseAnimator = FeatureFlags.ENABLE_MATERIAL_U_POPUP.get() ? getMaterialUOpenCloseAnimator(false, CLOSE_DURATION_U, 150, 83, 150, 83, y0.e.f12938b) : getOpenCloseAnimator(false, this.mCloseDuration, this.mCloseFadeStartDelay, this.mCloseFadeDuration, this.mCloseChildFadeStartDelay, this.mCloseChildFadeDuration, y0.e.f12955s);
            this.mOpenCloseAnimator = materialUOpenCloseAnimator;
            onCreateCloseAnimation(materialUOpenCloseAnimator);
            this.mOpenCloseAnimator.addListener(new AnonymousClass1(this, 1));
            this.mOpenCloseAnimator.start();
        }
    }

    public void animateOpen() {
        setVisibility(0);
        AnimatorSet materialUOpenCloseAnimator = FeatureFlags.ENABLE_MATERIAL_U_POPUP.get() ? getMaterialUOpenCloseAnimator(true, 200, 0, 83, 0, 83, y0.e.f12939c) : getOpenCloseAnimator(true, this.mOpenDuration, this.mOpenFadeStartDelay, this.mOpenFadeDuration, this.mOpenChildFadeStartDelay, this.mOpenChildFadeDuration, y0.e.f12954r);
        this.mOpenCloseAnimator = materialUOpenCloseAnimator;
        onCreateOpenAnimation(materialUOpenCloseAnimator);
        this.mOpenCloseAnimator.addListener(new AnonymousClass1(this, 0));
        this.mOpenCloseAnimator.start();
    }

    public void assignMarginsAndBackgrounds(ViewGroup viewGroup) {
        assignMarginsAndBackgrounds(viewGroup, 0);
    }

    public void closeComplete() {
        AnimatorSet animatorSet = this.mOpenCloseAnimator;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.mOpenCloseAnimator = null;
        }
        this.mIsOpen = false;
        this.mDeferContainerRemoval = false;
        getPopupContainer().removeView(this);
        getPopupContainer().removeView(this.mArrow);
        this.mOnCloseCallbacks.executeAllAndClear();
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public View getAccessibilityInitialFocusView() {
        return getChildCount() > 0 ? getChildAt(0) : this;
    }

    @Override // com.android.launcher3.AbstractFloatingView
    public Pair getAccessibilityTarget() {
        return Pair.create(this, "");
    }

    public AnimatorSet getMaterialUOpenCloseAnimator(boolean z4, int i4, int i5, int i6, int i7, int i8, Interpolator interpolator) {
        int i9 = (this.mArrowWidth / 2) + this.mArrowOffsetHorizontal;
        if (this.mIsArrowRotated) {
            setPivotX(this.mIsLeftAligned ? 0.0f : getMeasuredWidth());
            setPivotY(i9);
        } else {
            setPivotX(this.mIsLeftAligned ? i9 : getMeasuredWidth() - i9);
            setPivotY(this.mIsAboveIcon ? getMeasuredHeight() : 0.0f);
        }
        float[] fArr = {1.0f, 0.0f};
        if (z4) {
            // fill-array-data instruction
            fArr[0] = 0.0f;
            fArr[1] = 1.0f;
        }
        float[] fArr2 = {1.0f, 0.5f};
        if (z4) {
            // fill-array-data instruction
            fArr2[0] = 0.5f;
            fArr2[1] = 1.02f;
        }
        Property property = View.ALPHA;
        Interpolator interpolator2 = y0.e.f12949m;
        Animator animatorOfFloat = getAnimatorOfFloat(this, property, i6, i5, interpolator2, fArr);
        Animator animatorOfFloat2 = getAnimatorOfFloat(this.mArrow, View.ALPHA, i6, i5, interpolator2, fArr);
        Animator animatorOfFloat3 = getAnimatorOfFloat(this, View.SCALE_Y, i4, 0, interpolator, fArr2);
        Animator animatorOfFloat4 = getAnimatorOfFloat(this, View.SCALE_X, i4, 0, interpolator, fArr2);
        AnimatorSet animatorSet = new AnimatorSet();
        if (z4) {
            float[] fArr3 = {1.02f, 1.0f};
            PathInterpolator pathInterpolator = new PathInterpolator(0.3f, 0.0f, 0.33f, 1.0f);
            animatorSet.playTogether(animatorOfFloat, animatorOfFloat2, animatorOfFloat3, animatorOfFloat4, getAnimatorOfFloat(this, View.SCALE_X, 200, i4, pathInterpolator, fArr3), getAnimatorOfFloat(this, View.SCALE_Y, 200, i4, pathInterpolator, fArr3));
        } else {
            animatorSet.playTogether(animatorOfFloat, animatorOfFloat2, animatorOfFloat3, animatorOfFloat4);
        }
        fadeInChildViews(this, fArr, i7, i8, animatorSet);
        return animatorSet;
    }

    public BaseDragLayer getPopupContainer() {
        return ((ActivityContext) this.mActivityContext).getDragLayer();
    }

    public abstract void getTargetObjectLocation(Rect rect);

    @Override // com.android.launcher3.AbstractFloatingView
    public void handleClose(boolean z4) {
        if (z4) {
            animateClose();
        } else {
            closeComplete();
        }
    }

    public View inflateAndAdd(int i4, ViewGroup viewGroup) {
        View inflate = this.mInflater.inflate(i4, viewGroup, false);
        viewGroup.addView(inflate);
        return inflate;
    }

    public boolean isShortcutContainer(View view) {
        return this.mIterateChildrenTag.equals(view.getTag());
    }

    public boolean isShortcutOrWrapper(View view) {
        return view instanceof DeepShortcutView;
    }

    public void onCreateCloseAnimation(AnimatorSet animatorSet) {
    }

    public void onCreateOpenAnimation(AnimatorSet animatorSet) {
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        BaseDragLayer popupContainer;
        super.onLayout(z4, i4, i5, i6, i7);
        Rect insets = getPopupContainer().getInsets();
        if (getTranslationX() + i4 < insets.left || getTranslationX() + i6 > popupContainer.getWidth() - insets.right) {
            this.mGravity |= 1;
        }
        if (Gravity.isHorizontal(this.mGravity)) {
            setX((popupContainer.getWidth() / 2) - (getMeasuredWidth() / 2));
            this.mArrow.setVisibility(4);
        }
        if (Gravity.isVertical(this.mGravity)) {
            setY((popupContainer.getHeight() / 2) - (getMeasuredHeight() / 2));
        }
    }

    public void orientAboutObject() {
        orientAboutObject(true, true);
    }

    public void setChildColor(View view, int i4, AnimatorSet animatorSet) {
        Drawable background = view.getBackground();
        if (background instanceof GradientDrawable) {
            animatorSet.play(ObjectAnimator.ofArgb((GradientDrawable) background.mutate(), "color", ((GradientDrawable) background).getColor().getDefaultColor(), i4));
        } else if (background instanceof ColorDrawable) {
            animatorSet.play(ObjectAnimator.ofArgb((ColorDrawable) background.mutate(), "color", ((ColorDrawable) background).getColor(), i4));
        }
    }

    public void setupForDisplay() {
        setVisibility(4);
        this.mIsOpen = true;
        getPopupContainer().addView(this);
        orientAboutObject();
    }

    public boolean shouldAddArrow() {
        return true;
    }

    public void show() {
        setupForDisplay();
        assignMarginsAndBackgrounds(this);
        if (shouldAddArrow()) {
            addArrow();
        }
        animateOpen();
    }

    public void showArrow(boolean z4) {
        this.mArrow.setVisibility((z4 && shouldAddArrow()) ? 0 : 4);
    }

    public void updateArrowColor() {
        if (Gravity.isVertical(this.mGravity)) {
            return;
        }
        this.mArrow.setBackground(new RoundedArrowDrawable(this.mArrowWidth, this.mArrowHeight, this.mArrowPointRadius, this.mOutlineRadius, getMeasuredWidth(), getMeasuredHeight(), this.mArrowOffsetHorizontal, -this.mArrowOffsetVertical, !this.mIsAboveIcon, this.mIsLeftAligned, this.mArrowColor));
        setElevation(this.mElevation);
        this.mArrow.setElevation(this.mElevation);
    }

    private void orientAboutObject(boolean z4, boolean z5) {
        boolean z6 = false;
        measure(0, 0);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.popup_vertical_padding) + this.mArrowHeight + this.mArrowOffsetVertical;
        int i4 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (getChildAt(childCount).getVisibility() == 0) {
                i4++;
            }
        }
        int measuredHeight = getMeasuredHeight() + dimensionPixelSize + ((i4 - 1) * this.mChildContainerMargin);
        int paddingRight = getPaddingRight() + getPaddingLeft() + getMeasuredWidth();
        getTargetObjectLocation(this.mTempRect);
        BaseDragLayer popupContainer = getPopupContainer();
        Rect insets = popupContainer.getInsets();
        Rect rect = this.mTempRect;
        int i5 = rect.left;
        int i6 = rect.right - paddingRight;
        boolean z7 = !this.mIsRtl ? z4 : !z5;
        this.mIsLeftAligned = z7;
        int i7 = z7 ? i5 : i6;
        int width = rect.width();
        int i8 = ((width / 2) - this.mArrowOffsetHorizontal) - (this.mArrowWidth / 2);
        if (!this.mIsLeftAligned) {
            i8 = -i8;
        }
        int i9 = i7 + i8;
        if (z4 || z5) {
            boolean z8 = (i9 + paddingRight) + insets.left < popupContainer.getWidth() - insets.right;
            boolean z9 = i9 > insets.left;
            boolean z10 = this.mIsLeftAligned;
            if (!((z10 && z8) || (!z10 && z9))) {
                boolean z11 = z4 && !z10;
                if (z5 && z10) {
                    z6 = true;
                }
                orientAboutObject(z11, z6);
                return;
            }
        }
        int height = this.mTempRect.height();
        int i10 = this.mTempRect.top - measuredHeight;
        int top = popupContainer.getTop();
        int i11 = insets.top;
        boolean z12 = i10 > top + i11;
        this.mIsAboveIcon = z12;
        if (!z12) {
            i10 = this.mTempRect.top + height + dimensionPixelSize;
            measuredHeight -= dimensionPixelSize;
        }
        int i12 = i9 - insets.left;
        int i13 = i10 - i11;
        this.mGravity = 0;
        if (i11 + i13 + measuredHeight > popupContainer.getBottom() - insets.bottom) {
            this.mGravity = 16;
            int i14 = insets.left;
            int i15 = (i5 + width) - i14;
            int i16 = (i6 - width) - i14;
            if (!this.mIsRtl) {
                if (paddingRight + i15 < popupContainer.getRight()) {
                    this.mIsLeftAligned = true;
                    i12 = i15;
                } else {
                    this.mIsLeftAligned = false;
                    i12 = i16;
                }
            } else if (i16 > popupContainer.getLeft()) {
                this.mIsLeftAligned = false;
                i12 = i16;
            } else {
                this.mIsLeftAligned = true;
                i12 = i15;
            }
            this.mIsAboveIcon = true;
        }
        setX(i12);
        if (Gravity.isVertical(this.mGravity)) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.mArrow.getLayoutParams();
        if (this.mIsAboveIcon) {
            layoutParams.gravity = 80;
            layoutParams2.gravity = 80;
            int height2 = ((getPopupContainer().getHeight() - i13) - getMeasuredHeight()) - insets.top;
            layoutParams.bottomMargin = height2;
            layoutParams2.bottomMargin = ((height2 - layoutParams2.height) - this.mArrowOffsetVertical) - insets.bottom;
            return;
        }
        layoutParams.gravity = 48;
        layoutParams2.gravity = 48;
        int i17 = insets.top;
        int i18 = i13 + i17;
        layoutParams.topMargin = i18;
        layoutParams2.topMargin = ((i18 - i17) - layoutParams2.height) - this.mArrowOffsetVertical;
    }

    public void assignMarginsAndBackgrounds(ViewGroup viewGroup, int i4) {
        View view = null;
        int[] array = i4 == 0 ? Arrays.stream(this.mColorIds).map(new IntUnaryOperator() { // from class: com.android.launcher3.popup.a
            @Override // java.util.function.IntUnaryOperator
            public final int applyAsInt(int i5) {
                int lambda$assignMarginsAndBackgrounds$0;
                lambda$assignMarginsAndBackgrounds$0 = ArrowPopup.this.lambda$assignMarginsAndBackgrounds$0(i5);
                return lambda$assignMarginsAndBackgrounds$0;
            }
        }).toArray() : null;
        int childCount = viewGroup.getChildCount();
        int i5 = 0;
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt = viewGroup.getChildAt(i6);
            if (childAt.getVisibility() == 0 && isShortcutOrWrapper(childAt)) {
                i5++;
            }
        }
        AnimatorSet animatorSet = new AnimatorSet();
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt2 = viewGroup.getChildAt(i9);
            if (childAt2.getVisibility() == 0) {
                if (view != null) {
                    ((ViewGroup.MarginLayoutParams) view.getLayoutParams()).bottomMargin = this.mChildContainerMargin;
                }
                ((ViewGroup.MarginLayoutParams) childAt2.getLayoutParams()).bottomMargin = 0;
                if (array != null) {
                    FeatureFlags.BooleanFlag booleanFlag = FeatureFlags.ENABLE_MATERIAL_U_POPUP;
                    if (!booleanFlag.get()) {
                        i4 = array[i7 % array.length];
                    }
                    if (booleanFlag.get() && isShortcutContainer(childAt2)) {
                        setChildColor(childAt2, array[0], animatorSet);
                        this.mArrowColor = array[0];
                    }
                }
                if (!FeatureFlags.ENABLE_MATERIAL_U_POPUP.get() && (this.mIsAboveIcon || (i7 == 0 && viewGroup == this))) {
                    this.mArrowColor = i4;
                }
                if ((childAt2 instanceof ViewGroup) && isShortcutContainer(childAt2)) {
                    assignMarginsAndBackgrounds((ViewGroup) childAt2, i4);
                } else {
                    if (isShortcutOrWrapper(childAt2)) {
                        if (i5 == 1) {
                            childAt2.setBackgroundResource(R.drawable.single_item_primary);
                        } else if (i5 > 1) {
                            if (i8 == 0) {
                                childAt2.setBackground(this.mRoundedTop.getConstantState().newDrawable());
                            } else if (i8 == i5 - 1) {
                                childAt2.setBackground(this.mRoundedBottom.getConstantState().newDrawable());
                            } else {
                                childAt2.setBackgroundResource(R.drawable.middle_item_primary);
                            }
                            i8++;
                        }
                    }
                    setChildColor(childAt2, i4, animatorSet);
                }
                i7++;
                view = childAt2;
            }
        }
        animatorSet.setDuration(0L).start();
        measure(0, 0);
    }

    public View inflateAndAdd(int i4, ViewGroup viewGroup, int i5) {
        View inflate = this.mInflater.inflate(i4, viewGroup, false);
        viewGroup.addView(inflate, i5);
        return inflate;
    }

    public ArrowPopup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ArrowPopup(Context context) {
        this(context, null, 0);
    }
}
