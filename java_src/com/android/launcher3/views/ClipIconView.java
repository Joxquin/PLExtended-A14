package com.android.launcher3.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InsettableFrameLayout;
import com.android.launcher3.Utilities;
import com.android.launcher3.dragndrop.FolderAdaptiveIcon;
import com.android.launcher3.graphics.IconShape;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class ClipIconView extends View implements ClipPathView {
    private static final Rect sTmpRect = new Rect();
    private Drawable mBackground;
    private final int mBlurSizeOutline;
    private Path mClipPath;
    private final Rect mEndRevealRect;
    private final Rect mFinalDrawableBounds;
    private Drawable mForeground;
    private boolean mIsAdaptiveIcon;
    private final boolean mIsRtl;
    private final Rect mOutline;
    private ValueAnimator mRevealAnimator;
    private final Rect mStartRevealRect;
    private float mTaskCornerRadius;

    public ClipIconView(Context context) {
        this(context, null);
    }

    private void setBackgroundDrawableBounds(float f4, boolean z4) {
        Rect rect = sTmpRect;
        rect.set(this.mFinalDrawableBounds);
        Utilities.scaleRectAboutCenter(rect, f4);
        if (z4) {
            rect.offsetTo((int) (this.mFinalDrawableBounds.left * f4), rect.top);
        } else {
            rect.offsetTo(rect.left, (int) (this.mFinalDrawableBounds.top * f4));
        }
        this.mBackground.setBounds(rect);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int save = canvas.save();
        Path path = this.mClipPath;
        if (path != null) {
            canvas.clipPath(path);
        }
        super.draw(canvas);
        Drawable drawable = this.mBackground;
        if (drawable != null) {
            drawable.draw(canvas);
        }
        Drawable drawable2 = this.mForeground;
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        canvas.restoreToCount(save);
    }

    public final void endReveal() {
        ValueAnimator valueAnimator = this.mRevealAnimator;
        if (valueAnimator != null) {
            valueAnimator.end();
        }
    }

    public final void recycle() {
        setBackground(null);
        this.mIsAdaptiveIcon = false;
        this.mForeground = null;
        this.mBackground = null;
        this.mClipPath = null;
        this.mFinalDrawableBounds.setEmpty();
        ValueAnimator valueAnimator = this.mRevealAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        this.mRevealAnimator = null;
        this.mTaskCornerRadius = 0.0f;
        this.mOutline.setEmpty();
    }

    @Override // com.android.launcher3.views.ClipPathView
    public final void setClipPath(Path path) {
        this.mClipPath = path;
        invalidate();
    }

    public final void setIcon(Drawable drawable, int i4, InsettableFrameLayout.LayoutParams layoutParams, boolean z4, DeviceProfile deviceProfile) {
        boolean z5 = drawable instanceof AdaptiveIconDrawable;
        this.mIsAdaptiveIcon = z5;
        if (z5) {
            boolean z6 = drawable instanceof FolderAdaptiveIcon;
            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) drawable;
            Drawable background = adaptiveIconDrawable.getBackground();
            if (background == null) {
                background = new ColorDrawable(0);
            }
            this.mBackground = background;
            Drawable foreground = adaptiveIconDrawable.getForeground();
            if (foreground == null) {
                foreground = new ColorDrawable(0);
            }
            this.mForeground = foreground;
            int i5 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            int i6 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            int i7 = this.mBlurSizeOutline / 2;
            this.mFinalDrawableBounds.set(0, 0, i6, i5);
            if (!z6) {
                int i8 = i4 - i7;
                this.mFinalDrawableBounds.inset(i8, i8);
            }
            this.mForeground.setBounds(this.mFinalDrawableBounds);
            this.mBackground.setBounds(this.mFinalDrawableBounds);
            this.mStartRevealRect.set(0, 0, i6, i5);
            if (!z6) {
                Utilities.scaleRectAboutCenter(this.mStartRevealRect, IconShape.getNormalizationScale());
            }
            boolean z7 = deviceProfile.isLandscape;
            float f4 = deviceProfile.aspectRatio;
            if (z7) {
                ((ViewGroup.MarginLayoutParams) layoutParams).width = (int) Math.max(((ViewGroup.MarginLayoutParams) layoutParams).width, ((ViewGroup.MarginLayoutParams) layoutParams).height * f4);
            } else {
                ((ViewGroup.MarginLayoutParams) layoutParams).height = (int) Math.max(((ViewGroup.MarginLayoutParams) layoutParams).height, ((ViewGroup.MarginLayoutParams) layoutParams).width * f4);
            }
            int marginStart = this.mIsRtl ? (deviceProfile.widthPx - layoutParams.getMarginStart()) - ((ViewGroup.MarginLayoutParams) layoutParams).width : ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            int i9 = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            layout(marginStart, i9, ((ViewGroup.MarginLayoutParams) layoutParams).width + marginStart, ((ViewGroup.MarginLayoutParams) layoutParams).height + i9);
            float max = Math.max(((ViewGroup.MarginLayoutParams) layoutParams).height / i5, ((ViewGroup.MarginLayoutParams) layoutParams).width / i6);
            if (z4) {
                this.mOutline.set(0, 0, i6, i5);
                max = 1.0f;
            } else {
                this.mOutline.set(0, 0, ((ViewGroup.MarginLayoutParams) layoutParams).width, ((ViewGroup.MarginLayoutParams) layoutParams).height);
            }
            setBackgroundDrawableBounds(max, deviceProfile.isLandscape);
            this.mEndRevealRect.set(0, 0, ((ViewGroup.MarginLayoutParams) layoutParams).width, ((ViewGroup.MarginLayoutParams) layoutParams).height);
            setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.launcher3.views.ClipIconView.2
                @Override // android.view.ViewOutlineProvider
                public final void getOutline(View view, Outline outline) {
                    outline.setRoundRect(ClipIconView.this.mOutline, ClipIconView.this.mTaskCornerRadius);
                }
            });
            setClipToOutline(true);
        } else {
            setBackground(drawable);
            setClipToOutline(false);
        }
        invalidate();
        invalidateOutline();
    }

    public final void update(RectF rectF, float f4, float f5, float f6, boolean z4, View view, DeviceProfile deviceProfile) {
        float f7;
        int marginStart;
        float f8;
        int i4;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        if (this.mIsRtl) {
            f7 = rectF.left;
            marginStart = (deviceProfile.widthPx - marginLayoutParams.getMarginStart()) - marginLayoutParams.width;
        } else {
            f7 = rectF.left;
            marginStart = marginLayoutParams.getMarginStart();
        }
        view.setTranslationX(f7 - marginStart);
        view.setTranslationY(rectF.top - marginLayoutParams.topMargin);
        float min = Math.min(marginLayoutParams.width, marginLayoutParams.height);
        float max = Math.max(1.0f, Math.min(rectF.width() / min, rectF.height() / min));
        if (Float.isNaN(max)) {
            return;
        }
        float boundToRange = Utilities.boundToRange(Utilities.mapToRange(Math.max(f5, f4), f5, 1.0f, 0.0f, z4 ? 10.0f : 1.0f, y0.e.f12949m), 0.0f, 1.0f);
        if (deviceProfile.isLandscape) {
            this.mOutline.right = (int) (rectF.width() / max);
        } else {
            this.mOutline.bottom = (int) (rectF.height() / max);
        }
        this.mTaskCornerRadius = f6 / max;
        if (this.mIsAdaptiveIcon) {
            if (z4 || f4 < f5) {
                f8 = max;
            } else {
                if (this.mRevealAnimator == null) {
                    f8 = max;
                    ValueAnimator valueAnimator = (ValueAnimator) IconShape.getShape().createRevealAnimator(this, this.mStartRevealRect, this.mOutline, this.mTaskCornerRadius, !z4);
                    this.mRevealAnimator = valueAnimator;
                    valueAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.views.ClipIconView.1
                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                        public final void onAnimationEnd(Animator animator) {
                            ClipIconView.this.mRevealAnimator = null;
                        }
                    });
                    this.mRevealAnimator.start();
                    this.mRevealAnimator.pause();
                } else {
                    f8 = max;
                }
                this.mRevealAnimator.setCurrentFraction(boundToRange);
            }
            Rect rect = this.mOutline;
            boolean z5 = deviceProfile.isLandscape;
            float width = (z5 ? rect.width() : rect.height()) / min;
            setBackgroundDrawableBounds(width, z5);
            int height = this.mFinalDrawableBounds.height();
            int width2 = this.mFinalDrawableBounds.width();
            int i5 = 0;
            if (z5) {
                i4 = 0;
            } else {
                float f9 = height;
                i4 = (int) (((f9 * width) - f9) / 2.0f);
            }
            if (z5) {
                float f10 = width2;
                i5 = (int) (((width * f10) - f10) / 2.0f);
            }
            Rect rect2 = sTmpRect;
            rect2.set(this.mFinalDrawableBounds);
            rect2.offset(i5, i4);
            this.mForeground.setBounds(rect2);
        } else {
            f8 = max;
        }
        invalidate();
        invalidateOutline();
        view.setPivotX(0.0f);
        view.setPivotY(0.0f);
        view.setScaleX(f8);
        view.setScaleY(f8);
        view.invalidate();
    }

    public ClipIconView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ClipIconView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mIsAdaptiveIcon = false;
        this.mStartRevealRect = new Rect();
        this.mEndRevealRect = new Rect();
        this.mOutline = new Rect();
        this.mFinalDrawableBounds = new Rect();
        this.mBlurSizeOutline = getResources().getDimensionPixelSize(R.dimen.blur_size_medium_outline);
        this.mIsRtl = Utilities.isRtl(getResources());
    }
}
