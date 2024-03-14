package com.android.launcher3.icons;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.Drawable;
import java.nio.ByteBuffer;
/* loaded from: classes.dex */
public final class IconNormalizer {
    private final RectF mAdaptiveIconBounds;
    private float mAdaptiveIconScale;
    private final Bitmap mBitmap;
    private final Rect mBounds;
    private final Canvas mCanvas;
    private boolean mEnableShapeDetection;
    private final float[] mLeftBorder;
    private final Matrix mMatrix;
    private final int mMaxSize;
    private final Paint mPaintMaskShape;
    private final Paint mPaintMaskShapeOutline;
    private final byte[] mPixels;
    private final float[] mRightBorder;
    private final Path mShapePath;

    public IconNormalizer(Context context, boolean z4, int i4) {
        int i5 = i4 * 2;
        this.mMaxSize = i5;
        Bitmap createBitmap = Bitmap.createBitmap(i5, i5, Bitmap.Config.ALPHA_8);
        this.mBitmap = createBitmap;
        this.mCanvas = new Canvas(createBitmap);
        this.mPixels = new byte[i5 * i5];
        this.mLeftBorder = new float[i5];
        this.mRightBorder = new float[i5];
        this.mBounds = new Rect();
        this.mAdaptiveIconBounds = new RectF();
        Paint paint = new Paint();
        this.mPaintMaskShape = paint;
        paint.setColor(-65536);
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.XOR));
        Paint paint2 = new Paint();
        this.mPaintMaskShapeOutline = paint2;
        paint2.setStrokeWidth(context.getResources().getDisplayMetrics().density * 2.0f);
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setColor(-16777216);
        paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
        this.mShapePath = new Path();
        this.mMatrix = new Matrix();
        this.mAdaptiveIconScale = 0.0f;
        this.mEnableShapeDetection = z4;
    }

    private static void convertToConvexArray(int i4, int i5, int i6, float[] fArr) {
        float[] fArr2 = new float[fArr.length - 1];
        int i7 = -1;
        float f4 = Float.MAX_VALUE;
        for (int i8 = i5 + 1; i8 <= i6; i8++) {
            float f5 = fArr[i8];
            if (f5 > -1.0f) {
                if (f4 == Float.MAX_VALUE) {
                    i7 = i5;
                } else {
                    float f6 = ((f5 - fArr[i7]) / (i8 - i7)) - f4;
                    float f7 = i4;
                    if (f6 * f7 < 0.0f) {
                        while (i7 > i5) {
                            i7--;
                            if ((((fArr[i8] - fArr[i7]) / (i8 - i7)) - fArr2[i7]) * f7 >= 0.0f) {
                                break;
                            }
                        }
                    }
                }
                f4 = (fArr[i8] - fArr[i7]) / (i8 - i7);
                for (int i9 = i7; i9 < i8; i9++) {
                    fArr2[i9] = f4;
                    fArr[i9] = ((i9 - i7) * f4) + fArr[i7];
                }
                i7 = i8;
            }
        }
    }

    public static int getNormalizedCircleSize(int i4) {
        return (int) Math.round(Math.sqrt((((i4 * i4) * 0.6597222f) * 4.0f) / 3.141592653589793d));
    }

    private static float getScale(float f4, float f5, float f6) {
        float f7 = f4 / f5;
        float a4 = f7 < 0.7853982f ? 0.6597222f : w.f.a(1.0f, f7, 0.040449437f, 0.6510417f);
        float f8 = f4 / f6;
        if (f8 > a4) {
            return (float) Math.sqrt(a4 / f8);
        }
        return 1.0f;
    }

    private boolean isShape(Path path) {
        Rect rect = this.mBounds;
        if (Math.abs((rect.width() / rect.height()) - 1.0f) > 0.05f) {
            return false;
        }
        Matrix matrix = this.mMatrix;
        matrix.reset();
        matrix.setScale(rect.width(), rect.height());
        matrix.postTranslate(rect.left, rect.top);
        Path path2 = this.mShapePath;
        path.transform(matrix, path2);
        Canvas canvas = this.mCanvas;
        canvas.drawPath(path2, this.mPaintMaskShape);
        canvas.drawPath(path2, this.mPaintMaskShapeOutline);
        byte[] bArr = this.mPixels;
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        wrap.rewind();
        this.mBitmap.copyPixelsToBuffer(wrap);
        int i4 = rect.top;
        int i5 = this.mMaxSize;
        int i6 = i4 * i5;
        int i7 = i5 - rect.right;
        int i8 = 0;
        while (i4 < rect.bottom) {
            int i9 = rect.left;
            int i10 = i6 + i9;
            while (i9 < rect.right) {
                if ((bArr[i10] & 255) > 40) {
                    i8++;
                }
                i10++;
                i9++;
            }
            i6 = i10 + i7;
            i4++;
        }
        return ((float) i8) / ((float) (rect.height() * rect.width())) < 0.005f;
    }

    public static float normalizeAdaptiveIcon(Drawable drawable, int i4, RectF rectF) {
        Rect rect = new Rect(drawable.getBounds());
        drawable.setBounds(0, 0, i4, i4);
        Path iconMask = ((AdaptiveIconDrawable) drawable).getIconMask();
        Region region = new Region();
        region.setPath(iconMask, new Region(0, 0, i4, i4));
        Rect bounds = region.getBounds();
        int area = GraphicsUtils.getArea(region);
        if (rectF != null) {
            float f4 = i4;
            rectF.set(bounds.left / f4, bounds.top / f4, 1.0f - (bounds.right / f4), 1.0f - (bounds.bottom / f4));
        }
        drawable.setBounds(rect);
        float f5 = area;
        return getScale(f5, f5, i4 * i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x004c, code lost:
        if (r4 <= r16.mMaxSize) goto L78;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d4 A[Catch: all -> 0x012a, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000e, B:8:0x0014, B:10:0x0020, B:11:0x0025, B:14:0x0029, B:18:0x0036, B:30:0x0058, B:34:0x0085, B:40:0x0094, B:41:0x009b, B:45:0x00ac, B:46:0x00b6, B:51:0x00c5, B:53:0x00d4, B:57:0x00e7, B:56:0x00df, B:58:0x00ea, B:60:0x00f6, B:63:0x010a, B:65:0x010e, B:67:0x0111, B:68:0x011a, B:21:0x003c, B:23:0x004a, B:27:0x0052, B:29:0x0056, B:25:0x004e), top: B:76:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00f6 A[Catch: all -> 0x012a, TryCatch #0 {, blocks: (B:4:0x0009, B:6:0x000e, B:8:0x0014, B:10:0x0020, B:11:0x0025, B:14:0x0029, B:18:0x0036, B:30:0x0058, B:34:0x0085, B:40:0x0094, B:41:0x009b, B:45:0x00ac, B:46:0x00b6, B:51:0x00c5, B:53:0x00d4, B:57:0x00e7, B:56:0x00df, B:58:0x00ea, B:60:0x00f6, B:63:0x010a, B:65:0x010e, B:67:0x0111, B:68:0x011a, B:21:0x003c, B:23:0x004a, B:27:0x0052, B:29:0x0056, B:25:0x004e), top: B:76:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized float getScale(android.graphics.drawable.Drawable r17, android.graphics.RectF r18, android.graphics.Path r19, boolean[] r20) {
        /*
            Method dump skipped, instructions count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.icons.IconNormalizer.getScale(android.graphics.drawable.Drawable, android.graphics.RectF, android.graphics.Path, boolean[]):float");
    }
}
