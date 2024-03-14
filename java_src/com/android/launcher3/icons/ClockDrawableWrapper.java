package com.android.launcher3.icons;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.BlendModeColorFilter;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.os.SystemClock;
import android.util.Log;
import android.util.TypedValue;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.icons.FastBitmapDrawable;
import com.android.launcher3.icons.IconProvider;
import java.util.Calendar;
import java.util.concurrent.TimeUnit;
import java.util.function.IntFunction;
/* loaded from: classes.dex */
public final class ClockDrawableWrapper extends AdaptiveIconDrawable implements BitmapInfo.Extender {
    public static final long TICK_MS = TimeUnit.MINUTES.toMillis(1);
    private final AnimationInfo mAnimationInfo;
    private AnimationInfo mThemeInfo;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class AnimationInfo {
        public Drawable.ConstantState baseDrawableState;
        public int defaultHour;
        public int defaultMinute;
        public int defaultSecond;
        public int hourLayerIndex;
        public int minuteLayerIndex;
        public int secondLayerIndex;

        public /* synthetic */ AnimationInfo(int i4) {
        }

        public final boolean applyTime(Calendar calendar, LayerDrawable layerDrawable) {
            boolean z4;
            int i4;
            int i5;
            calendar.setTimeInMillis(System.currentTimeMillis());
            int i6 = ((12 - this.defaultHour) + calendar.get(10)) % 12;
            int i7 = ((60 - this.defaultMinute) + calendar.get(12)) % 60;
            int i8 = ((60 - this.defaultSecond) + calendar.get(13)) % 60;
            int i9 = this.hourLayerIndex;
            if (i9 != -1) {
                if (layerDrawable.getDrawable(i9).setLevel(calendar.get(12) + (i6 * 60))) {
                    z4 = true;
                    i4 = this.minuteLayerIndex;
                    if (i4 != -1 && layerDrawable.getDrawable(i4).setLevel((calendar.get(10) * 60) + i7)) {
                        z4 = true;
                    }
                    i5 = this.secondLayerIndex;
                    if (i5 == -1 && layerDrawable.getDrawable(i5).setLevel(i8 * 10)) {
                        return true;
                    }
                    return z4;
                }
            }
            z4 = false;
            i4 = this.minuteLayerIndex;
            if (i4 != -1) {
                z4 = true;
            }
            i5 = this.secondLayerIndex;
            if (i5 == -1) {
            }
            return z4;
        }

        public final AnimationInfo copyForIcon(Drawable drawable) {
            AnimationInfo animationInfo = new AnimationInfo();
            animationInfo.baseDrawableState = drawable.getConstantState();
            animationInfo.defaultHour = this.defaultHour;
            animationInfo.defaultMinute = this.defaultMinute;
            animationInfo.defaultSecond = this.defaultSecond;
            animationInfo.hourLayerIndex = this.hourLayerIndex;
            animationInfo.minuteLayerIndex = this.minuteLayerIndex;
            animationInfo.secondLayerIndex = this.secondLayerIndex;
            return animationInfo;
        }
    }

    /* loaded from: classes.dex */
    final class ClockBitmapInfo extends BitmapInfo {
        public final AnimationInfo animInfo;
        public final float boundsOffset;
        public final Bitmap mFlattenedBackground;
        public final Bitmap themeBackground;
        public final AnimationInfo themeData;

        public ClockBitmapInfo(Bitmap bitmap, int i4, float f4, AnimationInfo animationInfo, Bitmap bitmap2, AnimationInfo animationInfo2, Bitmap bitmap3) {
            super(bitmap, i4);
            this.boundsOffset = Math.max(0.035f, (1.0f - f4) / 2.0f);
            this.animInfo = animationInfo;
            this.mFlattenedBackground = bitmap2;
            this.themeData = animationInfo2;
            this.themeBackground = bitmap3;
        }

        @Override // com.android.launcher3.icons.BitmapInfo
        public final boolean canPersist() {
            return false;
        }

        @Override // com.android.launcher3.icons.BitmapInfo
        public final FastBitmapDrawable newIcon(int i4, Context context) {
            AnimationInfo animationInfo;
            int i5;
            Bitmap bitmap;
            BlendModeColorFilter blendModeColorFilter;
            AnimationInfo animationInfo2;
            if ((i4 & 1) == 0 || (animationInfo2 = this.themeData) == null) {
                animationInfo = this.animInfo;
                i5 = -1;
                bitmap = this.mFlattenedBackground;
                blendModeColorFilter = null;
            } else {
                int[] colors = ThemedIconDrawable.getColors(context);
                Drawable mutate = animationInfo2.baseDrawableState.newDrawable().mutate();
                i5 = colors[1];
                mutate.setTint(i5);
                animationInfo = animationInfo2.copyForIcon(mutate);
                blendModeColorFilter = new BlendModeColorFilter(colors[0], BlendMode.SRC_IN);
                bitmap = this.themeBackground;
            }
            AnimationInfo animationInfo3 = animationInfo;
            Bitmap bitmap2 = bitmap;
            BlendModeColorFilter blendModeColorFilter2 = blendModeColorFilter;
            int i6 = i5;
            if (animationInfo3 == null) {
                return super.newIcon(i4, context);
            }
            FastBitmapDrawable newDrawable = new ClockIconDrawable.ClockConstantState(this.icon, this.color, i6, this.boundsOffset, animationInfo3, bitmap2, blendModeColorFilter2).newDrawable();
            applyFlags(context, newDrawable, i4);
            return newDrawable;
        }

        @Override // com.android.launcher3.icons.BitmapInfo
        /* renamed from: clone */
        public final BitmapInfo mo2clone() {
            ClockBitmapInfo clockBitmapInfo = new ClockBitmapInfo(this.icon, this.color, 1.0f - (this.boundsOffset * 2.0f), this.animInfo, this.mFlattenedBackground, this.themeData, this.themeBackground);
            copyInternalsTo(clockBitmapInfo);
            return clockBitmapInfo;
        }
    }

    /* loaded from: classes.dex */
    final class ClockIconDrawable extends FastBitmapDrawable implements Runnable {
        private final AnimationInfo mAnimInfo;
        private final Bitmap mBG;
        private final ColorFilter mBgFilter;
        private final Paint mBgPaint;
        private final float mBoundsOffset;
        private final float mCanvasScale;
        private final LayerDrawable mFG;
        private final AdaptiveIconDrawable mFullDrawable;
        private final int mThemedFgColor;
        private final Calendar mTime;

        /* loaded from: classes.dex */
        final class ClockConstantState extends FastBitmapDrawable.FastBitmapConstantState {
            private final AnimationInfo mAnimInfo;
            private final Bitmap mBG;
            private final ColorFilter mBgFilter;
            private final float mBoundsOffset;
            private final int mThemedFgColor;

            public ClockConstantState(Bitmap bitmap, int i4, int i5, float f4, AnimationInfo animationInfo, Bitmap bitmap2, ColorFilter colorFilter) {
                super(bitmap, i4);
                this.mBoundsOffset = f4;
                this.mAnimInfo = animationInfo;
                this.mBG = bitmap2;
                this.mBgFilter = colorFilter;
                this.mThemedFgColor = i5;
            }

            @Override // com.android.launcher3.icons.FastBitmapDrawable.FastBitmapConstantState
            public final FastBitmapDrawable createDrawable() {
                return new ClockIconDrawable(this);
            }
        }

        public ClockIconDrawable(ClockConstantState clockConstantState) {
            super(clockConstantState.mBitmap, clockConstantState.mIconColor);
            Calendar calendar = Calendar.getInstance();
            this.mTime = calendar;
            Paint paint = new Paint(3);
            this.mBgPaint = paint;
            float f4 = clockConstantState.mBoundsOffset;
            this.mBoundsOffset = f4;
            AnimationInfo animationInfo = clockConstantState.mAnimInfo;
            this.mAnimInfo = animationInfo;
            this.mBG = clockConstantState.mBG;
            this.mBgFilter = clockConstantState.mBgFilter;
            paint.setColorFilter(clockConstantState.mBgFilter);
            this.mThemedFgColor = clockConstantState.mThemedFgColor;
            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) animationInfo.baseDrawableState.newDrawable().mutate();
            this.mFullDrawable = adaptiveIconDrawable;
            LayerDrawable layerDrawable = (LayerDrawable) adaptiveIconDrawable.getForeground();
            this.mFG = layerDrawable;
            animationInfo.applyTime(calendar, layerDrawable);
            this.mCanvasScale = 1.0f - (f4 * 2.0f);
        }

        private void reschedule() {
            if (isVisible()) {
                unscheduleSelf(this);
                long uptimeMillis = SystemClock.uptimeMillis();
                long j4 = ClockDrawableWrapper.TICK_MS;
                scheduleSelf(this, (uptimeMillis - (uptimeMillis % j4)) + j4);
            }
        }

        @Override // com.android.launcher3.icons.FastBitmapDrawable
        public final void drawInternal(Canvas canvas, Rect rect) {
            if (this.mAnimInfo == null) {
                canvas.drawBitmap(this.mBitmap, (Rect) null, rect, this.mPaint);
                return;
            }
            canvas.drawBitmap(this.mBG, (Rect) null, rect, this.mBgPaint);
            this.mAnimInfo.applyTime(this.mTime, this.mFG);
            int save = canvas.save();
            canvas.translate(rect.left, rect.top);
            float f4 = this.mCanvasScale;
            canvas.scale(f4, f4, rect.width() / 2, rect.height() / 2);
            canvas.clipPath(this.mFullDrawable.getIconMask());
            this.mFG.draw(canvas);
            canvas.restoreToCount(save);
            reschedule();
        }

        @Override // com.android.launcher3.icons.FastBitmapDrawable
        public final int getIconColor() {
            return isThemed() ? this.mThemedFgColor : super.getIconColor();
        }

        @Override // com.android.launcher3.icons.FastBitmapDrawable
        public final boolean isThemed() {
            return this.mBgPaint.getColorFilter() != null;
        }

        @Override // com.android.launcher3.icons.FastBitmapDrawable
        public final FastBitmapDrawable.FastBitmapConstantState newConstantState() {
            return new ClockConstantState(this.mBitmap, this.mIconColor, this.mThemedFgColor, this.mBoundsOffset, this.mAnimInfo, this.mBG, this.mBgPaint.getColorFilter());
        }

        @Override // com.android.launcher3.icons.FastBitmapDrawable, android.graphics.drawable.Drawable
        public final void onBoundsChange(Rect rect) {
            super.onBoundsChange(rect);
            this.mFullDrawable.setBounds(0, 0, rect.width(), rect.height());
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.mAnimInfo.applyTime(this.mTime, this.mFG)) {
                invalidateSelf();
            } else {
                reschedule();
            }
        }

        @Override // com.android.launcher3.icons.FastBitmapDrawable, android.graphics.drawable.Drawable
        public final void setAlpha(int i4) {
            super.setAlpha(i4);
            this.mBgPaint.setAlpha(i4);
            this.mFG.setAlpha(i4);
        }

        @Override // android.graphics.drawable.Drawable
        public final boolean setVisible(boolean z4, boolean z5) {
            boolean visible = super.setVisible(z4, z5);
            if (z4) {
                reschedule();
            } else {
                unscheduleSelf(this);
            }
            return visible;
        }

        @Override // com.android.launcher3.icons.FastBitmapDrawable
        public final void updateFilter() {
            super.updateFilter();
            setAlpha(this.mIsDisabled ? (int) (this.mDisabledAlpha * 255.0f) : 255);
            this.mBgPaint.setColorFilter(this.mIsDisabled ? FastBitmapDrawable.getDisabledColorFilter() : this.mBgFilter);
            this.mFG.setColorFilter(this.mIsDisabled ? FastBitmapDrawable.getDisabledColorFilter() : null);
        }
    }

    private ClockDrawableWrapper(AdaptiveIconDrawable adaptiveIconDrawable) {
        super(adaptiveIconDrawable.getBackground(), adaptiveIconDrawable.getForeground());
        this.mAnimationInfo = new AnimationInfo(0);
        this.mThemeInfo = null;
    }

    private void applyThemeData(final IconProvider.ThemeData themeData) {
        if (IconProvider.ATLEAST_T && this.mThemeInfo == null) {
            try {
                TypedArray obtainTypedArray = themeData.mResources.obtainTypedArray(themeData.mResID);
                int length = obtainTypedArray.length();
                Bundle bundle = new Bundle();
                for (int i4 = 0; i4 < length; i4 += 2) {
                    TypedValue peekValue = obtainTypedArray.peekValue(i4 + 1);
                    String string = obtainTypedArray.getString(i4);
                    int i5 = peekValue.type;
                    bundle.putInt(string, (i5 < 16 || i5 > 31) ? peekValue.resourceId : peekValue.data);
                }
                obtainTypedArray.recycle();
                ClockDrawableWrapper forExtras = forExtras(bundle, new IntFunction() { // from class: com.android.launcher3.icons.c
                    @Override // java.util.function.IntFunction
                    public final Object apply(int i6) {
                        return new AdaptiveIconDrawable(new ColorDrawable(-1), IconProvider.ThemeData.this.mResources.getDrawable(i6).mutate());
                    }
                });
                if (forExtras != null) {
                    this.mThemeInfo = forExtras.mAnimationInfo;
                }
            } catch (Exception e4) {
                Log.e("ClockDrawableWrapper", "Error loading themed clock", e4);
            }
        }
    }

    private static ClockDrawableWrapper forExtras(Bundle bundle, IntFunction intFunction) {
        int i4;
        if (bundle == null || (i4 = bundle.getInt("com.android.launcher3.LEVEL_PER_TICK_ICON_ROUND", 0)) == 0) {
            return null;
        }
        Drawable mutate = ((Drawable) intFunction.apply(i4)).mutate();
        if (mutate instanceof AdaptiveIconDrawable) {
            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) mutate;
            ClockDrawableWrapper clockDrawableWrapper = new ClockDrawableWrapper(adaptiveIconDrawable);
            AnimationInfo animationInfo = clockDrawableWrapper.mAnimationInfo;
            animationInfo.baseDrawableState = mutate.getConstantState();
            animationInfo.hourLayerIndex = bundle.getInt("com.android.launcher3.HOUR_LAYER_INDEX", -1);
            animationInfo.minuteLayerIndex = bundle.getInt("com.android.launcher3.MINUTE_LAYER_INDEX", -1);
            animationInfo.secondLayerIndex = bundle.getInt("com.android.launcher3.SECOND_LAYER_INDEX", -1);
            animationInfo.defaultHour = bundle.getInt("com.android.launcher3.DEFAULT_HOUR", 0);
            animationInfo.defaultMinute = bundle.getInt("com.android.launcher3.DEFAULT_MINUTE", 0);
            animationInfo.defaultSecond = bundle.getInt("com.android.launcher3.DEFAULT_SECOND", 0);
            LayerDrawable layerDrawable = (LayerDrawable) clockDrawableWrapper.getForeground();
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            int i5 = animationInfo.hourLayerIndex;
            if (i5 < 0 || i5 >= numberOfLayers) {
                animationInfo.hourLayerIndex = -1;
            }
            int i6 = animationInfo.minuteLayerIndex;
            if (i6 < 0 || i6 >= numberOfLayers) {
                animationInfo.minuteLayerIndex = -1;
            }
            int i7 = animationInfo.secondLayerIndex;
            if (i7 < 0 || i7 >= numberOfLayers) {
                animationInfo.secondLayerIndex = -1;
            } else {
                layerDrawable.setDrawable(i7, null);
                animationInfo.secondLayerIndex = -1;
            }
            if (IconProvider.ATLEAST_T && (adaptiveIconDrawable.getMonochrome() instanceof LayerDrawable)) {
                clockDrawableWrapper.mThemeInfo = animationInfo.copyForIcon(new AdaptiveIconDrawable(new ColorDrawable(-1), adaptiveIconDrawable.getMonochrome().mutate()));
            }
            animationInfo.applyTime(Calendar.getInstance(), layerDrawable);
            return clockDrawableWrapper;
        }
        return null;
    }

    public static ClockDrawableWrapper forPackage(Context context, String str, final int i4, IconProvider.ThemeData themeData) {
        try {
            PackageManager packageManager = context.getPackageManager();
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8320);
            final Resources resourcesForApplication = packageManager.getResourcesForApplication(applicationInfo);
            ClockDrawableWrapper forExtras = forExtras(applicationInfo.metaData, new IntFunction() { // from class: com.android.launcher3.icons.b
                @Override // java.util.function.IntFunction
                public final Object apply(int i5) {
                    return resourcesForApplication.getDrawableForDensity(i5, i4);
                }
            });
            if (forExtras != null && themeData != null) {
                forExtras.applyThemeData(themeData);
            }
            return forExtras;
        } catch (Exception e4) {
            Log.d("ClockDrawableWrapper", "Unable to load clock drawable info", e4);
            return null;
        }
    }

    @Override // com.android.launcher3.icons.BitmapInfo.Extender
    public final void drawForPersistence(Canvas canvas) {
        LayerDrawable layerDrawable = (LayerDrawable) getForeground();
        int i4 = this.mAnimationInfo.hourLayerIndex;
        if (i4 != -1) {
            layerDrawable.getDrawable(i4).setLevel(0);
        }
        int i5 = this.mAnimationInfo.minuteLayerIndex;
        if (i5 != -1) {
            layerDrawable.getDrawable(i5).setLevel(0);
        }
        int i6 = this.mAnimationInfo.secondLayerIndex;
        if (i6 != -1) {
            layerDrawable.getDrawable(i6).setLevel(0);
        }
        draw(canvas);
        this.mAnimationInfo.applyTime(Calendar.getInstance(), (LayerDrawable) getForeground());
    }

    @Override // com.android.launcher3.icons.BitmapInfo.Extender
    public final BitmapInfo getExtendedInfo(Bitmap bitmap, int i4, BaseIconFactory baseIconFactory, float f4) {
        Bitmap createScaledBitmap = baseIconFactory.createScaledBitmap(new AdaptiveIconDrawable(getBackground().getConstantState().newDrawable(), null), 4);
        AnimationInfo animationInfo = baseIconFactory.mMonoIconEnabled ? this.mThemeInfo : null;
        return new ClockBitmapInfo(bitmap, i4, f4, this.mAnimationInfo, createScaledBitmap, animationInfo, animationInfo != null ? baseIconFactory.getWhiteShadowLayer() : null);
    }

    public final Drawable getMonochrome() {
        AnimationInfo animationInfo = this.mThemeInfo;
        if (animationInfo == null) {
            return null;
        }
        Drawable mutate = animationInfo.baseDrawableState.newDrawable().mutate();
        if (mutate instanceof AdaptiveIconDrawable) {
            Drawable foreground = ((AdaptiveIconDrawable) mutate).getForeground();
            this.mThemeInfo.applyTime(Calendar.getInstance(), (LayerDrawable) foreground);
            return foreground;
        }
        return null;
    }
}
