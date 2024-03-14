package com.android.launcher3.icons;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.RegionIterator;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.ColorDrawable;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* loaded from: classes.dex */
public final class GraphicsUtils {
    public static d sOnNewBitmapRunnable = new d();

    public static byte[] flattenBitmap(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bitmap.getHeight() * bitmap.getWidth() * 4);
        try {
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException unused) {
            Log.w("GraphicsUtils", "Could not write bitmap");
            return null;
        }
    }

    public static int getArea(Region region) {
        RegionIterator regionIterator = new RegionIterator(region);
        Rect rect = new Rect();
        int i4 = 0;
        while (regionIterator.next(rect)) {
            i4 += rect.height() * rect.width();
        }
        return i4;
    }

    public static int getAttrColor(int i4, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i4});
        int color = obtainStyledAttributes.getColor(0, 0);
        obtainStyledAttributes.recycle();
        return color;
    }

    public static Path getShapePath(int i4, Context context) {
        Path c4;
        int i5 = IconProvider.CONFIG_ICON_MASK_RES_ID;
        if (i5 == 0 || (c4 = E.e.c(context.getString(i5))) == null) {
            AdaptiveIconDrawable adaptiveIconDrawable = new AdaptiveIconDrawable(new ColorDrawable(-16777216), new ColorDrawable(-16777216));
            adaptiveIconDrawable.setBounds(0, 0, i4, i4);
            return new Path(adaptiveIconDrawable.getIconMask());
        }
        float f4 = i4;
        if (f4 != 100.0f) {
            Matrix matrix = new Matrix();
            float f5 = f4 / 100.0f;
            matrix.setScale(f5, f5);
            c4.transform(matrix);
        }
        return c4;
    }

    public static void noteNewBitmapCreated() {
    }

    public static int setColorAlphaBound(int i4, int i5) {
        if (i5 < 0) {
            i5 = 0;
        } else if (i5 > 255) {
            i5 = 255;
        }
        return (i4 & 16777215) | (i5 << 24);
    }
}
