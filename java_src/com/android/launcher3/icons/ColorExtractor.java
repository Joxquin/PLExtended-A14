package com.android.launcher3.icons;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.util.SparseArray;
import java.util.Arrays;
/* loaded from: classes.dex */
public final class ColorExtractor {
    private final float[] mTmpHsv = new float[3];
    private final float[] mTmpHueScoreHistogram = new float[360];
    private final int[] mTmpPixels = new int[20];
    private final SparseArray mTmpRgbScores = new SparseArray();

    public final int findDominantColorByHue(Bitmap bitmap) {
        int i4;
        char c4;
        int height = bitmap.getHeight();
        int width = bitmap.getWidth();
        char c5 = 20;
        int sqrt = (int) Math.sqrt((height * width) / 20);
        if (sqrt < 1) {
            sqrt = 1;
        }
        float[] fArr = this.mTmpHsv;
        Arrays.fill(fArr, 0.0f);
        float[] fArr2 = this.mTmpHueScoreHistogram;
        Arrays.fill(fArr2, 0.0f);
        int[] iArr = this.mTmpPixels;
        int i5 = 0;
        Arrays.fill(iArr, 0);
        int i6 = -1;
        int i7 = 0;
        int i8 = 0;
        float f4 = -1.0f;
        while (true) {
            i4 = -16777216;
            if (i7 >= height) {
                break;
            }
            int i9 = i5;
            while (i9 < width) {
                int pixel = bitmap.getPixel(i9, i7);
                if (((pixel >> 24) & 255) >= 128) {
                    int i10 = pixel | (-16777216);
                    Color.colorToHSV(i10, fArr);
                    int i11 = (int) fArr[i5];
                    if (i11 >= 0 && i11 < fArr2.length) {
                        c4 = 20;
                        if (i8 < 20) {
                            iArr[i8] = i10;
                            i8++;
                        }
                        float f5 = fArr2[i11] + (fArr[1] * fArr[2]);
                        fArr2[i11] = f5;
                        if (f5 > f4) {
                            f4 = f5;
                            i6 = i11;
                        }
                        i9 += sqrt;
                        c5 = c4;
                        i5 = 0;
                    }
                }
                c4 = 20;
                i9 += sqrt;
                c5 = c4;
                i5 = 0;
            }
            i7 += sqrt;
            i5 = 0;
        }
        SparseArray sparseArray = this.mTmpRgbScores;
        sparseArray.clear();
        float f6 = -1.0f;
        for (int i12 = 0; i12 < i8; i12++) {
            int i13 = iArr[i12];
            Color.colorToHSV(i13, fArr);
            if (((int) fArr[0]) == i6) {
                float f7 = fArr[1];
                float f8 = fArr[2];
                int i14 = ((int) (100.0f * f7)) + ((int) (10000.0f * f8));
                float f9 = f7 * f8;
                Float f10 = (Float) sparseArray.get(i14);
                if (f10 != null) {
                    f9 += f10.floatValue();
                }
                sparseArray.put(i14, Float.valueOf(f9));
                if (f9 > f6) {
                    i4 = i13;
                    f6 = f9;
                }
            }
        }
        return i4;
    }
}
