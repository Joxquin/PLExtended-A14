package com.android.launcher3.folder;
/* loaded from: classes.dex */
public final class ClippedFolderIconLayoutRule {
    private float mAvailableSpace;
    private float mBaselineIconScale;
    private float mIconSize;
    private boolean mIsRtl;
    private float mRadius;
    private float[] mTmpPoint = new float[2];

    private void getGridPosition(int i4, float[] fArr) {
        getPosition(0, 4, fArr);
        float f4 = fArr[0];
        float f5 = fArr[1];
        getPosition(3, 4, fArr);
        fArr[0] = (2 * (fArr[0] - f4)) + f4;
        fArr[1] = (i4 * (fArr[1] - f5)) + f5;
    }

    private void getPosition(int i4, int i5, float[] fArr) {
        int i6 = i4;
        int max = Math.max(i5, 2);
        boolean z4 = this.mIsRtl;
        double d4 = 0.0d;
        double d5 = z4 ? 0.0d : 3.141592653589793d;
        int i7 = z4 ? 1 : -1;
        if (max == 3) {
            d4 = 1.5707963267948966d;
        } else if (max == 4) {
            d4 = 0.7853981633974483d;
        }
        double d6 = i7;
        double d7 = (d4 * d6) + d5;
        if (max == 4 && i6 == 3) {
            i6 = 2;
        } else if (max == 4 && i6 == 2) {
            i6 = 3;
        }
        float f4 = ((((max - 2) * 0.25f) / 2.0f) + 1.0f) * this.mRadius;
        double d8 = ((6.283185307179586d / max) * i6 * d6) + d7;
        float scaleForItem = (scaleForItem(max) * this.mIconSize) / 2.0f;
        fArr[0] = ((this.mAvailableSpace / 2.0f) + ((float) ((Math.cos(d8) * f4) / 2.0d))) - scaleForItem;
        fArr[1] = ((this.mAvailableSpace / 2.0f) + ((float) ((Math.sin(d8) * (-f4)) / 2.0d))) - scaleForItem;
    }

    public final PreviewItemDrawingParams computePreviewItemDrawingParams(int i4, int i5, PreviewItemDrawingParams previewItemDrawingParams) {
        float scaleForItem = scaleForItem(i5);
        if (i4 == -2) {
            getGridPosition(0, this.mTmpPoint);
        } else if (i4 == -3) {
            getGridPosition(1, this.mTmpPoint);
        } else if (i4 >= 4) {
            float[] fArr = this.mTmpPoint;
            float f4 = (this.mAvailableSpace / 2.0f) - ((this.mIconSize * scaleForItem) / 2.0f);
            fArr[1] = f4;
            fArr[0] = f4;
        } else {
            getPosition(i4, i5, this.mTmpPoint);
        }
        float[] fArr2 = this.mTmpPoint;
        float f5 = fArr2[0];
        float f6 = fArr2[1];
        if (previewItemDrawingParams == null) {
            return new PreviewItemDrawingParams(f5, f6, scaleForItem);
        }
        previewItemDrawingParams.update(f5, f6, scaleForItem);
        return previewItemDrawingParams;
    }

    public final float getIconSize() {
        return this.mIconSize;
    }

    public final void init(int i4, float f4, boolean z4) {
        float f5 = i4;
        this.mAvailableSpace = f5;
        this.mRadius = (1.15f * f5) / 2.0f;
        this.mIconSize = f4;
        this.mIsRtl = z4;
        this.mBaselineIconScale = f5 / (f4 * 1.0f);
    }

    public final float scaleForItem(int i4) {
        return (i4 <= 3 ? 0.51f : 0.44f) * this.mBaselineIconScale;
    }
}
