package com.android.quickstep.views;

import android.content.Context;
import android.graphics.Outline;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.RemoteViews;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.systemui.shared.R;
import java.util.function.IntToDoubleFunction;
import java.util.stream.IntStream;
/* loaded from: classes.dex */
final class FloatingWidgetBackgroundView extends View {
    private final DrawableProperties mBackgroundProperties;
    private final ColorDrawable mFallbackDrawable;
    private float mFinalRadius;
    private final DrawableProperties mForegroundProperties;
    private float mInitialOutlineRadius;
    private boolean mIsUsingFallback;
    private Drawable mOriginalBackground;
    private Drawable mOriginalForeground;
    private float mOutlineRadius;
    private View mSourceView;

    /* loaded from: classes.dex */
    class DrawableProperties {
        private Drawable mDrawable;
        private float[] mOriginalRadii;
        private float mOriginalRadius;
        private final float[] mTmpRadii;

        public /* synthetic */ DrawableProperties(int i4) {
            this();
        }

        public void init(Drawable drawable) {
            this.mDrawable = drawable;
            if (drawable instanceof GradientDrawable) {
                GradientDrawable gradientDrawable = (GradientDrawable) drawable;
                this.mOriginalRadius = gradientDrawable.getCornerRadius();
                this.mOriginalRadii = gradientDrawable.getCornerRadii();
            }
        }

        public void updateDrawable(float f4, float f5) {
            Drawable drawable = this.mDrawable;
            if (!(drawable instanceof GradientDrawable)) {
                return;
            }
            GradientDrawable gradientDrawable = (GradientDrawable) drawable;
            if (this.mOriginalRadii == null) {
                float f6 = this.mOriginalRadius;
                gradientDrawable.setCornerRadius(((f4 - f6) * f5) + f6);
                return;
            }
            int i4 = 0;
            while (true) {
                float[] fArr = this.mOriginalRadii;
                if (i4 >= fArr.length) {
                    gradientDrawable.setCornerRadii(this.mTmpRadii);
                    return;
                }
                float[] fArr2 = this.mTmpRadii;
                float f7 = fArr[i4];
                fArr2[i4] = w.f.a(f4, f7, f5, f7);
                i4++;
            }
        }

        private DrawableProperties() {
            this.mTmpRadii = new float[8];
        }
    }

    public FloatingWidgetBackgroundView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.mFallbackDrawable = new ColorDrawable();
        this.mForegroundProperties = new DrawableProperties(0);
        this.mBackgroundProperties = new DrawableProperties(0);
        setOutlineProvider(new ViewOutlineProvider() { // from class: com.android.quickstep.views.FloatingWidgetBackgroundView.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), FloatingWidgetBackgroundView.this.mOutlineRadius);
            }
        });
        setClipToOutline(true);
    }

    private static float getMaxRadius(Drawable drawable) {
        if (drawable instanceof GradientDrawable) {
            GradientDrawable gradientDrawable = (GradientDrawable) drawable;
            final float[] cornerRadii = gradientDrawable.getCornerRadii();
            return Math.max(gradientDrawable.getCornerRadius(), (float) (cornerRadii != null ? IntStream.range(0, cornerRadii.length).mapToDouble(new IntToDoubleFunction() { // from class: com.android.quickstep.views.h
                @Override // java.util.function.IntToDoubleFunction
                public final double applyAsDouble(int i4) {
                    double lambda$getMaxRadius$0;
                    lambda$getMaxRadius$0 = FloatingWidgetBackgroundView.lambda$getMaxRadius$0(cornerRadii, i4);
                    return lambda$getMaxRadius$0;
                }
            }).max().orElse(0.0d) : 0.0d));
        }
        return 0.0f;
    }

    private static float getOutlineRadius(LauncherAppWidgetHostView launcherAppWidgetHostView, View view) {
        if ((Utilities.ATLEAST_S && FeatureFlags.ENABLE_ENFORCED_ROUNDED_CORNERS.get()) && launcherAppWidgetHostView.getClipToOutline()) {
            return launcherAppWidgetHostView.getEnforcedCornerRadius();
        }
        if ((view.getOutlineProvider() instanceof RemoteViews.RemoteViewOutlineProvider) && view.getClipToOutline()) {
            return ((RemoteViews.RemoteViewOutlineProvider) view.getOutlineProvider()).getRadius();
        }
        return 0.0f;
    }

    private static boolean isSupportedDrawable(Drawable drawable) {
        return (drawable instanceof ColorDrawable) || ((drawable instanceof GradientDrawable) && ((GradientDrawable) drawable).getShape() == 0);
    }

    private boolean isUninitialized() {
        return this.mSourceView == null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ double lambda$getMaxRadius$0(float[] fArr, int i4) {
        return fArr[i4];
    }

    public void finish() {
        if (isUninitialized()) {
            return;
        }
        Drawable drawable = this.mOriginalForeground;
        if (drawable != null) {
            this.mSourceView.setForeground(drawable);
        }
        Drawable drawable2 = this.mOriginalBackground;
        if (drawable2 != null) {
            this.mSourceView.setBackground(drawable2);
        }
    }

    public float getMaximumRadius() {
        if (isUninitialized()) {
            return 0.0f;
        }
        return Math.max(this.mInitialOutlineRadius, Math.max(getMaxRadius(this.mOriginalForeground), getMaxRadius(this.mOriginalBackground)));
    }

    public void init(LauncherAppWidgetHostView launcherAppWidgetHostView, View view, float f4, int i4) {
        this.mFinalRadius = f4;
        this.mSourceView = view;
        this.mInitialOutlineRadius = getOutlineRadius(launcherAppWidgetHostView, view);
        this.mIsUsingFallback = false;
        if (isSupportedDrawable(view.getForeground())) {
            if (view.getTag(R.id.saved_floating_widget_foreground) == null) {
                Drawable foreground = view.getForeground();
                this.mOriginalForeground = foreground;
                view.setTag(R.id.saved_floating_widget_foreground, foreground);
            } else {
                this.mOriginalForeground = (Drawable) view.getTag(R.id.saved_floating_widget_foreground);
            }
            this.mForegroundProperties.init(this.mOriginalForeground.getConstantState().newDrawable().mutate());
            setForeground(this.mForegroundProperties.mDrawable);
            Drawable mutate = this.mOriginalForeground.getConstantState().newDrawable().mutate();
            mutate.setAlpha(0);
            this.mSourceView.setForeground(mutate);
        }
        if (!isSupportedDrawable(view.getBackground())) {
            if (this.mOriginalForeground == null) {
                this.mFallbackDrawable.setColor(i4);
                setBackground(this.mFallbackDrawable);
                this.mIsUsingFallback = true;
                return;
            }
            return;
        }
        if (view.getTag(R.id.saved_floating_widget_background) == null) {
            Drawable background = view.getBackground();
            this.mOriginalBackground = background;
            view.setTag(R.id.saved_floating_widget_background, background);
        } else {
            this.mOriginalBackground = (Drawable) view.getTag(R.id.saved_floating_widget_background);
        }
        this.mBackgroundProperties.init(this.mOriginalBackground.getConstantState().newDrawable().mutate());
        setBackground(this.mBackgroundProperties.mDrawable);
        Drawable mutate2 = this.mOriginalBackground.getConstantState().newDrawable().mutate();
        mutate2.setAlpha(0);
        this.mSourceView.setBackground(mutate2);
    }

    public void recycle() {
        View view = this.mSourceView;
        if (view != null) {
            view.setTag(R.id.saved_floating_widget_foreground, null);
            this.mSourceView.setTag(R.id.saved_floating_widget_background, null);
        }
        this.mSourceView = null;
        this.mOriginalForeground = null;
        this.mOriginalBackground = null;
        this.mOutlineRadius = 0.0f;
        this.mFinalRadius = 0.0f;
        setForeground(null);
        setBackground(null);
    }

    public void update(float f4, float f5) {
        if (isUninitialized()) {
            return;
        }
        float f6 = this.mInitialOutlineRadius;
        float f7 = this.mFinalRadius;
        this.mOutlineRadius = w.f.a(f7, f6, f4, f6);
        this.mForegroundProperties.updateDrawable(f7, f4);
        this.mBackgroundProperties.updateDrawable(this.mFinalRadius, f4);
        if (!this.mIsUsingFallback) {
            f5 = 1.0f;
        }
        setAlpha(f5);
    }
}
