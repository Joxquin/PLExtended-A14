package com.android.launcher3.folder;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.Property;
import android.view.View;
import android.view.animation.Interpolator;
import com.android.launcher3.CellLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.R$styleable;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public final class PreviewBackground extends CellLayout.DelegatedCellDrawing {
    protected static final float ACCEPT_SCALE_FACTOR = 1.2f;
    protected static final int CONSUMPTION_ANIMATION_DURATION = 100;
    protected static final int HOVER_ANIMATION_DURATION = 300;
    protected static final float HOVER_SCALE = 1.1f;
    int basePreviewOffsetX;
    int basePreviewOffsetY;
    private int mBgColor;
    private int mDotColor;
    private CellLayout mDrawingDelegate;
    private View mInvalidateDelegate;
    protected boolean mIsAccepting;
    protected boolean mIsHovered;
    protected boolean mIsHoveredOrAnimating;
    private final Paint mPaint;
    private final Path mPath;
    float mScale;
    protected ValueAnimator mScaleAnimator;
    private int mShadowAlpha;
    private int mStrokeAlpha;
    int previewSize;

    static {
        new Property("strokeAlpha") { // from class: com.android.launcher3.folder.PreviewBackground.1
            public final Integer a(PreviewBackground previewBackground) {
                switch (r2) {
                    case 0:
                        return Integer.valueOf(previewBackground.mStrokeAlpha);
                    default:
                        return Integer.valueOf(previewBackground.mShadowAlpha);
                }
            }

            public final void b(PreviewBackground previewBackground, Integer num) {
                switch (r2) {
                    case 0:
                        previewBackground.mStrokeAlpha = num.intValue();
                        previewBackground.invalidate();
                        return;
                    default:
                        previewBackground.mShadowAlpha = num.intValue();
                        previewBackground.invalidate();
                        return;
                }
            }

            @Override // android.util.Property
            public final /* bridge */ /* synthetic */ Object get(Object obj) {
                switch (r2) {
                    case 0:
                        return a((PreviewBackground) obj);
                    default:
                        return a((PreviewBackground) obj);
                }
            }

            @Override // android.util.Property
            public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
                switch (r2) {
                    case 0:
                        b((PreviewBackground) obj, (Integer) obj2);
                        return;
                    default:
                        b((PreviewBackground) obj, (Integer) obj2);
                        return;
                }
            }
        };
        new Property("shadowAlpha") { // from class: com.android.launcher3.folder.PreviewBackground.1
            public final Integer a(PreviewBackground previewBackground) {
                switch (r2) {
                    case 0:
                        return Integer.valueOf(previewBackground.mStrokeAlpha);
                    default:
                        return Integer.valueOf(previewBackground.mShadowAlpha);
                }
            }

            public final void b(PreviewBackground previewBackground, Integer num) {
                switch (r2) {
                    case 0:
                        previewBackground.mStrokeAlpha = num.intValue();
                        previewBackground.invalidate();
                        return;
                    default:
                        previewBackground.mShadowAlpha = num.intValue();
                        previewBackground.invalidate();
                        return;
                }
            }

            @Override // android.util.Property
            public final /* bridge */ /* synthetic */ Object get(Object obj) {
                switch (r2) {
                    case 0:
                        return a((PreviewBackground) obj);
                    default:
                        return a((PreviewBackground) obj);
                }
            }

            @Override // android.util.Property
            public final /* bridge */ /* synthetic */ void set(Object obj, Object obj2) {
                switch (r2) {
                    case 0:
                        b((PreviewBackground) obj, (Integer) obj2);
                        return;
                    default:
                        b((PreviewBackground) obj, (Integer) obj2);
                        return;
                }
            }
        };
    }

    public PreviewBackground() {
        new PorterDuffXfermode(PorterDuff.Mode.DST_OUT);
        new Matrix();
        this.mPath = new Path();
        this.mPaint = new Paint(1);
        this.mScale = 1.0f;
        this.mStrokeAlpha = 255;
        this.mShadowAlpha = 255;
    }

    public static void e(PreviewBackground previewBackground) {
        CellLayout cellLayout = previewBackground.mDrawingDelegate;
        if (cellLayout != null) {
            cellLayout.removeDelegatedCellDrawing(previewBackground);
        }
        previewBackground.mDrawingDelegate = null;
        previewBackground.invalidate();
    }

    public final void animateScale(boolean z4, boolean z5) {
        ValueAnimator valueAnimator = this.mScaleAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        final float f4 = this.mScale;
        final float f5 = z4 ? ACCEPT_SCALE_FACTOR : z5 ? HOVER_SCALE : 1.0f;
        boolean z6 = this.mIsAccepting;
        Interpolator interpolator = z4 != z6 ? y0.e.f12961y : y0.e.f12939c;
        int i4 = z4 != z6 ? 100 : 300;
        this.mIsAccepting = z4;
        this.mIsHovered = z5;
        if (f4 == f5) {
            if (!z4) {
                CellLayout cellLayout = this.mDrawingDelegate;
                if (cellLayout != null) {
                    cellLayout.removeDelegatedCellDrawing(this);
                }
                this.mDrawingDelegate = null;
                invalidate();
            }
            this.mIsHoveredOrAnimating = this.mIsHovered;
            return;
        }
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.mScaleAnimator = ofFloat;
        ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.android.launcher3.folder.x
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                PreviewBackground previewBackground = PreviewBackground.this;
                float f6 = f5;
                float f7 = f4;
                previewBackground.getClass();
                float animatedFraction = valueAnimator2.getAnimatedFraction();
                previewBackground.mScale = w.f.a(1.0f, animatedFraction, f7, f6 * animatedFraction);
                previewBackground.invalidate();
            }
        });
        this.mScaleAnimator.addListener(new AnimatorListenerAdapter() { // from class: com.android.launcher3.folder.PreviewBackground.5
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                PreviewBackground previewBackground = PreviewBackground.this;
                if (!previewBackground.mIsAccepting) {
                    PreviewBackground.e(previewBackground);
                }
                PreviewBackground previewBackground2 = PreviewBackground.this;
                previewBackground2.mIsHoveredOrAnimating = previewBackground2.mIsHovered;
                previewBackground2.mScaleAnimator = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationStart(Animator animator) {
                PreviewBackground previewBackground = PreviewBackground.this;
                if (previewBackground.mIsHovered) {
                    previewBackground.mIsHoveredOrAnimating = true;
                }
            }
        });
        this.mScaleAnimator.setInterpolator(interpolator);
        this.mScaleAnimator.setDuration(i4);
        this.mScaleAnimator.start();
    }

    public final void animateToAccept(CellLayout cellLayout, int i4, int i5) {
        if (this.mDrawingDelegate != cellLayout) {
            cellLayout.addDelegatedCellDrawing(this);
        }
        this.mDrawingDelegate = cellLayout;
        this.mDelegateCellX = i4;
        this.mDelegateCellY = i5;
        invalidate();
        animateScale(true, this.mIsHovered);
    }

    public final void animateToRest() {
        animateScale(false, this.mIsHovered);
    }

    public final void drawBackground(Canvas canvas) {
        Paint paint = this.mPaint;
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(this.mBgColor);
        IconShape.getShape().drawShape(canvas, this.basePreviewOffsetX - (getScaledRadius() - (this.previewSize / 2)), this.basePreviewOffsetY - (getScaledRadius() - (this.previewSize / 2)), getScaledRadius(), paint);
    }

    public final void drawLeaveBehind(int i4, Canvas canvas) {
        float f4 = this.mScale;
        this.mScale = 0.5f;
        Paint paint = this.mPaint;
        paint.setStyle(Paint.Style.FILL);
        paint.setColor(i4);
        IconShape.getShape().drawShape(canvas, this.basePreviewOffsetX - (getScaledRadius() - (this.previewSize / 2)), this.basePreviewOffsetY - (getScaledRadius() - (this.previewSize / 2)), getScaledRadius(), paint);
        this.mScale = f4;
    }

    @Override // com.android.launcher3.CellLayout.DelegatedCellDrawing
    public final void drawOverItem() {
    }

    @Override // com.android.launcher3.CellLayout.DelegatedCellDrawing
    public final void drawUnderItem(Canvas canvas) {
        drawBackground(canvas);
    }

    public final boolean drawingDelegated() {
        return this.mDrawingDelegate != null;
    }

    public final int getBgColor() {
        return this.mBgColor;
    }

    public final Path getClipPath() {
        Path path = this.mPath;
        path.reset();
        float scaledRadius = getScaledRadius() * 1.125f;
        float f4 = scaledRadius - (this.previewSize / 2);
        IconShape.getShape().addToPath(this.basePreviewOffsetX - f4, this.basePreviewOffsetY - f4, scaledRadius, path);
        return path;
    }

    public final int getDotColor() {
        return this.mDotColor;
    }

    public final int getRadius() {
        return this.previewSize / 2;
    }

    public final int getScaledRadius() {
        return (int) (this.mScale * (this.previewSize / 2));
    }

    public final void invalidate() {
        View view = this.mInvalidateDelegate;
        if (view != null) {
            view.invalidate();
        }
        CellLayout cellLayout = this.mDrawingDelegate;
        if (cellLayout != null) {
            cellLayout.invalidate();
        }
    }

    public final void setInvalidateDelegate(View view) {
        this.mInvalidateDelegate = view;
        invalidate();
    }

    public final void setup(Context context, ActivityContext activityContext, FolderIcon folderIcon, int i4, int i5) {
        this.mInvalidateDelegate = folderIcon;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(R$styleable.FolderIconPreview);
        this.mDotColor = GraphicsUtils.getAttrColor(R.attr.notificationDotColor, context);
        obtainStyledAttributes.getColor(0, 0);
        this.mBgColor = obtainStyledAttributes.getColor(1, 0);
        obtainStyledAttributes.recycle();
        DeviceProfile deviceProfile = activityContext.getDeviceProfile();
        int i6 = deviceProfile.folderIconSizePx;
        this.previewSize = i6;
        this.basePreviewOffsetX = (i4 - i6) / 2;
        this.basePreviewOffsetY = i5 + deviceProfile.folderIconOffsetYPx;
        float f4 = context.getResources().getDisplayMetrics().density;
        invalidate();
    }
}
