package com.android.launcher3.icons;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PaintFlagsDrawFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.UserHandle;
import android.util.SparseBooleanArray;
import com.android.launcher3.icons.BitmapInfo;
import com.android.launcher3.util.FlagOp;
import com.android.systemui.shared.R;
import com.android.systemui.shared.system.SysUiStatsLog;
import java.util.Objects;
/* loaded from: classes.dex */
public class BaseIconFactory implements AutoCloseable {
    private static int PLACEHOLDER_BACKGROUND_COLOR = Color.rgb((int) SysUiStatsLog.NOTIFICATION_PANEL_REPORTED, (int) SysUiStatsLog.NOTIFICATION_PANEL_REPORTED, (int) SysUiStatsLog.NOTIFICATION_PANEL_REPORTED);

    /* renamed from: d  reason: collision with root package name */
    public static final /* synthetic */ int f4655d = 0;
    private final Canvas mCanvas;
    private final ColorExtractor mColorExtractor;
    protected final Context mContext;
    protected final int mFillResIconDpi;
    protected final int mIconBitmapSize;
    protected boolean mMonoIconEnabled;
    private IconNormalizer mNormalizer;
    private final PackageManager mPm;
    private ShadowGenerator mShadowGenerator;
    private final boolean mShapeDetection;
    private Bitmap mWhiteShadowLayer;
    private int mWrapperBackgroundColor;
    private Drawable mWrapperIcon;
    private final Rect mOldBounds = new Rect();
    private final SparseBooleanArray mIsUserBadged = new SparseBooleanArray();

    /* loaded from: classes.dex */
    final class CenterTextDrawable extends ColorDrawable {
        private final String mText;
        private final Rect mTextBounds = new Rect();
        private final Paint mTextPaint;

        public CenterTextDrawable(String str, int i4) {
            Paint paint = new Paint(3);
            this.mTextPaint = paint;
            this.mText = str;
            paint.setColor(i4);
        }

        @Override // android.graphics.drawable.ColorDrawable, android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            Rect bounds = getBounds();
            this.mTextPaint.setTextSize(bounds.height() / 3.0f);
            Paint paint = this.mTextPaint;
            String str = this.mText;
            paint.getTextBounds(str, 0, str.length(), this.mTextBounds);
            canvas.drawText(this.mText, bounds.exactCenterX() - this.mTextBounds.exactCenterX(), bounds.exactCenterY() - this.mTextBounds.exactCenterY(), this.mTextPaint);
        }
    }

    /* loaded from: classes.dex */
    public final class ClippedMonoDrawable extends InsetDrawable {
        private final AdaptiveIconDrawable mCrop;

        public ClippedMonoDrawable(Drawable drawable) {
            super(drawable, -AdaptiveIconDrawable.getExtraInsetFraction());
            this.mCrop = new AdaptiveIconDrawable(new ColorDrawable(-16777216), null);
        }

        @Override // android.graphics.drawable.DrawableWrapper, android.graphics.drawable.Drawable
        public final void draw(Canvas canvas) {
            this.mCrop.setBounds(getBounds());
            int save = canvas.save();
            canvas.clipPath(this.mCrop.getIconMask());
            super.draw(canvas);
            canvas.restoreToCount(save);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class FixedSizeBitmapDrawable extends BitmapDrawable {
        public FixedSizeBitmapDrawable(Bitmap bitmap) {
            super((Resources) null, bitmap);
        }

        @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
        public final int getIntrinsicHeight() {
            return getBitmap().getWidth();
        }

        @Override // android.graphics.drawable.BitmapDrawable, android.graphics.drawable.Drawable
        public final int getIntrinsicWidth() {
            return getBitmap().getWidth();
        }
    }

    /* loaded from: classes.dex */
    public final class IconOptions {
        Integer mExtractedColor;
        boolean mIsInstantApp;
        UserHandle mUserHandle;
        boolean mShrinkNonAdaptiveIcons = true;
        int mGenerationMode = 2;

        public final void setBitmapGenerationMode() {
            this.mGenerationMode = 3;
        }

        public final void setExtractedColor(int i4) {
            this.mExtractedColor = Integer.valueOf(i4);
        }

        public final void setInstantApp(boolean z4) {
            this.mIsInstantApp = z4;
        }

        public final void setShrinkNonAdaptiveIcons() {
            this.mShrinkNonAdaptiveIcons = false;
        }

        public final void setUser(UserHandle userHandle) {
            this.mUserHandle = userHandle;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class NoopDrawable extends ColorDrawable {
        @Override // android.graphics.drawable.Drawable
        public final int getIntrinsicHeight() {
            return 1;
        }

        @Override // android.graphics.drawable.Drawable
        public final int getIntrinsicWidth() {
            return 1;
        }
    }

    public BaseIconFactory(Context context, int i4, int i5, boolean z4) {
        this.mWrapperBackgroundColor = -1;
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext;
        this.mShapeDetection = z4;
        this.mFillResIconDpi = i4;
        this.mIconBitmapSize = i5;
        this.mPm = applicationContext.getPackageManager();
        this.mColorExtractor = new ColorExtractor();
        Canvas canvas = new Canvas();
        this.mCanvas = canvas;
        canvas.setDrawFilter(new PaintFlagsDrawFilter(4, 2));
        this.mWrapperBackgroundColor = -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void drawIconBitmap(android.graphics.Canvas r7, android.graphics.drawable.Drawable r8, float r9, int r10, android.graphics.Bitmap r11) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.BaseIconFactory.drawIconBitmap(android.graphics.Canvas, android.graphics.drawable.Drawable, float, int, android.graphics.Bitmap):void");
    }

    public static Drawable getFullResDefaultActivityIcon(int i4) {
        Drawable drawableForDensity = Resources.getSystem().getDrawableForDensity(17301651, i4);
        Objects.requireNonNull(drawableForDensity);
        return drawableForDensity;
    }

    public final void clear() {
        this.mWrapperBackgroundColor = -1;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.mWrapperBackgroundColor = -1;
    }

    public final BitmapInfo createBadgedIconBitmap(Drawable drawable, IconOptions iconOptions) {
        Drawable monochromeDrawable;
        Integer num;
        float[] fArr = new float[1];
        Drawable normalizeAndWrapToAdaptiveIcon = normalizeAndWrapToAdaptiveIcon(drawable, iconOptions == null || iconOptions.mShrinkNonAdaptiveIcons, null, fArr);
        Bitmap createIconBitmap = createIconBitmap(normalizeAndWrapToAdaptiveIcon, fArr[0], iconOptions == null ? 2 : iconOptions.mGenerationMode);
        int findDominantColorByHue = (iconOptions == null || (num = iconOptions.mExtractedColor) == null) ? this.mColorExtractor.findDominantColorByHue(createIconBitmap) : num.intValue();
        BitmapInfo bitmapInfo = new BitmapInfo(createIconBitmap, findDominantColorByHue);
        if (normalizeAndWrapToAdaptiveIcon instanceof BitmapInfo.Extender) {
            bitmapInfo = ((BitmapInfo.Extender) normalizeAndWrapToAdaptiveIcon).getExtendedInfo(createIconBitmap, findDominantColorByHue, this, fArr[0]);
        } else if (IconProvider.ATLEAST_T && this.mMonoIconEnabled && (monochromeDrawable = getMonochromeDrawable(normalizeAndWrapToAdaptiveIcon)) != null) {
            bitmapInfo.setMonoIcon(createIconBitmap(monochromeDrawable, fArr[0], 1), this);
        }
        return bitmapInfo.withFlags(getBitmapFlagOp(iconOptions));
    }

    public final BitmapInfo createIconBitmap(int i4, String str) {
        return new BitmapInfo(createIconBitmap(new AdaptiveIconDrawable(new ColorDrawable(PLACEHOLDER_BACKGROUND_COLOR), new CenterTextDrawable(str, i4)), 0.92f, 0), i4);
    }

    public final Bitmap createScaledBitmap(Drawable drawable, int i4) {
        RectF rectF = new RectF();
        float[] fArr = new float[1];
        Drawable normalizeAndWrapToAdaptiveIcon = normalizeAndWrapToAdaptiveIcon(drawable, true, rectF, fArr);
        float f4 = fArr[0];
        float min = Math.min(Math.min(rectF.left, rectF.right), rectF.top);
        float f5 = min < 0.035f ? 0.465f / (0.5f - min) : 1.0f;
        float f6 = rectF.bottom;
        if (f6 < 0.055833332f) {
            f5 = Math.min(f5, 0.44416666f / (0.5f - f6));
        }
        return createIconBitmap(normalizeAndWrapToAdaptiveIcon, Math.min(f4, f5), i4);
    }

    public final BitmapInfo createShapedIconBitmap(Bitmap bitmap, IconOptions iconOptions) {
        FixedSizeBitmapDrawable fixedSizeBitmapDrawable = new FixedSizeBitmapDrawable(bitmap);
        float extraInsetFraction = AdaptiveIconDrawable.getExtraInsetFraction();
        float f4 = extraInsetFraction / ((2.0f * extraInsetFraction) + 1.0f);
        return createBadgedIconBitmap(new AdaptiveIconDrawable(new ColorDrawable(-16777216), new InsetDrawable(fixedSizeBitmapDrawable, f4, f4, f4, f4)), iconOptions);
    }

    public final FlagOp getBitmapFlagOp(IconOptions iconOptions) {
        boolean z4;
        FlagOp flagOp = FlagOp.NO_OP;
        if (iconOptions != null) {
            if (iconOptions.mIsInstantApp) {
                flagOp = flagOp.addFlag(2);
            }
            UserHandle userHandle = iconOptions.mUserHandle;
            if (userHandle != null) {
                int hashCode = userHandle.hashCode();
                int indexOfKey = this.mIsUserBadged.indexOfKey(hashCode);
                if (indexOfKey >= 0) {
                    z4 = this.mIsUserBadged.valueAt(indexOfKey);
                } else {
                    NoopDrawable noopDrawable = new NoopDrawable();
                    boolean z5 = noopDrawable != this.mPm.getUserBadgedIcon(noopDrawable, iconOptions.mUserHandle);
                    this.mIsUserBadged.put(hashCode, z5);
                    z4 = z5;
                }
                return flagOp.setFlag(4, false).setFlag(1, z4);
            }
            return flagOp;
        }
        return flagOp;
    }

    public Drawable getMonochromeDrawable(Drawable drawable) {
        Drawable monochrome;
        if (!(drawable instanceof AdaptiveIconDrawable) || (monochrome = ((AdaptiveIconDrawable) drawable).getMonochrome()) == null) {
            return null;
        }
        return new ClippedMonoDrawable(monochrome);
    }

    public final IconNormalizer getNormalizer() {
        if (this.mNormalizer == null) {
            this.mNormalizer = new IconNormalizer(this.mContext, this.mShapeDetection, this.mIconBitmapSize);
        }
        return this.mNormalizer;
    }

    public final Bitmap getWhiteShadowLayer() {
        if (this.mWhiteShadowLayer == null) {
            this.mWhiteShadowLayer = createScaledBitmap(new AdaptiveIconDrawable(new ColorDrawable(-1), null), 4);
        }
        return this.mWhiteShadowLayer;
    }

    public final BitmapInfo makeDefaultIcon() {
        return createBadgedIconBitmap(getFullResDefaultActivityIcon(this.mFillResIconDpi), null);
    }

    public final Drawable normalizeAndWrapToAdaptiveIcon(Drawable drawable, boolean z4, RectF rectF, float[] fArr) {
        float scale;
        if (drawable == null) {
            return null;
        }
        if (!z4 || (drawable instanceof AdaptiveIconDrawable)) {
            scale = getNormalizer().getScale(drawable, rectF, null, null);
        } else {
            if (this.mWrapperIcon == null) {
                this.mWrapperIcon = this.mContext.getDrawable(R.drawable.adaptive_icon_drawable_wrapper).mutate();
            }
            AdaptiveIconDrawable adaptiveIconDrawable = (AdaptiveIconDrawable) this.mWrapperIcon;
            adaptiveIconDrawable.setBounds(0, 0, 1, 1);
            boolean[] zArr = new boolean[1];
            scale = getNormalizer().getScale(drawable, rectF, adaptiveIconDrawable.getIconMask(), zArr);
            if (!zArr[0]) {
                FixedScaleDrawable fixedScaleDrawable = (FixedScaleDrawable) adaptiveIconDrawable.getForeground();
                fixedScaleDrawable.setDrawable(drawable);
                fixedScaleDrawable.setScale(scale);
                scale = getNormalizer().getScale(adaptiveIconDrawable, rectF, null, null);
                ((ColorDrawable) adaptiveIconDrawable.getBackground()).setColor(this.mWrapperBackgroundColor);
                drawable = adaptiveIconDrawable;
            }
        }
        fArr[0] = scale;
        return drawable;
    }

    public final void setWrapperBackgroundColor(int i4) {
        if (Color.alpha(i4) < 255) {
            i4 = -1;
        }
        this.mWrapperBackgroundColor = i4;
    }

    public final BitmapInfo createIconBitmap(Bitmap bitmap) {
        if (this.mIconBitmapSize != bitmap.getWidth() || this.mIconBitmapSize != bitmap.getHeight()) {
            bitmap = createIconBitmap(new BitmapDrawable(this.mContext.getResources(), bitmap), 1.0f, 0);
        }
        return new BitmapInfo(bitmap, this.mColorExtractor.findDominantColorByHue(bitmap));
    }

    public final Bitmap createIconBitmap(final Drawable drawable, final float f4, final int i4) {
        Bitmap createBitmap;
        int i5 = this.mIconBitmapSize;
        if (i4 == 1) {
            createBitmap = Bitmap.createBitmap(i5, i5, Bitmap.Config.ALPHA_8);
        } else if (i4 != 3 && i4 != 4) {
            createBitmap = Bitmap.createBitmap(i5, i5, Bitmap.Config.ARGB_8888);
        } else {
            return BitmapRenderer.createHardwareBitmap(i5, i5, new BitmapRenderer() { // from class: com.android.launcher3.icons.a
                @Override // com.android.launcher3.icons.BitmapRenderer
                public final void draw(Canvas canvas) {
                    BaseIconFactory.this.drawIconBitmap(canvas, drawable, f4, i4, null);
                }
            });
        }
        if (drawable == null) {
            return createBitmap;
        }
        this.mCanvas.setBitmap(createBitmap);
        drawIconBitmap(this.mCanvas, drawable, f4, i4, createBitmap);
        this.mCanvas.setBitmap(null);
        return createBitmap;
    }
}
