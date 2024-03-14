package com.android.systemui.shared.recents.utilities;

import H1.e;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import com.android.systemui.shared.recents.model.ThumbnailData;
/* loaded from: classes.dex */
public class PreviewPositionHelper {
    public static final float MAX_PCT_BEFORE_ASPECT_RATIOS_CONSIDERED_DIFFERENT = 0.1f;
    public static final int STAGE_POSITION_BOTTOM_OR_RIGHT = 1;
    public static final int STAGE_POSITION_TOP_OR_LEFT = 0;
    private int mDesiredStagePosition;
    private boolean mIsOrientationChanged;
    private final Matrix mMatrix = new Matrix();
    private e mSplitBounds;

    private int getRotationDelta(int i4, int i5) {
        int i6 = i5 - i4;
        return i6 < 0 ? i6 + 4 : i6;
    }

    private boolean isOrientationChange(int i4) {
        return i4 == 1 || i4 == 3;
    }

    private void setThumbnailRotation(int i4, Rect rect) {
        float f4;
        int height;
        this.mMatrix.setRotate(i4 * 90);
        float f5 = 0.0f;
        if (i4 != 1) {
            if (i4 == 2) {
                f5 = rect.width();
                height = rect.height();
            } else if (i4 != 3) {
                f4 = 0.0f;
            } else {
                height = rect.width();
            }
            f4 = height;
        } else {
            f5 = rect.height();
            f4 = 0.0f;
        }
        this.mMatrix.postTranslate(f5, f4);
    }

    public Matrix getMatrix() {
        return this.mMatrix;
    }

    public boolean isOrientationChanged() {
        return this.mIsOrientationChanged;
    }

    public void setOrientationChanged(boolean z4) {
        this.mIsOrientationChanged = z4;
    }

    public void setSplitBounds(e eVar, int i4) {
        this.mSplitBounds = eVar;
        this.mDesiredStagePosition = i4;
    }

    public void updateThumbnailMatrix(Rect rect, ThumbnailData thumbnailData, int i4, int i5, int i6, int i7, int i8, boolean z4, int i9, boolean z5) {
        float f4;
        float f5;
        int rotationDelta = getRotationDelta(i9, thumbnailData.rotation);
        RectF rectF = new RectF();
        float f6 = thumbnailData.scale;
        boolean z6 = false;
        boolean z7 = true;
        boolean z8 = thumbnailData.windowingMode == 1 && !z4;
        boolean z9 = isOrientationChange(rotationDelta) && z8;
        float f7 = 0.0f;
        if (i4 != 0 && i5 != 0 && f6 != 0.0f) {
            if (rotationDelta <= 0 || !z8) {
                z7 = false;
            }
            float width = rect.width() / f6;
            float height = rect.height() / f6;
            float f8 = i4;
            float f9 = i5;
            boolean isRelativePercentDifferenceGreaterThan = Utilities.isRelativePercentDifferenceGreaterThan(f8 / f9, z7 ? height / width : width / height, 0.1f);
            if (z7 && isRelativePercentDifferenceGreaterThan) {
                z7 = false;
            } else {
                z6 = z9;
            }
            if (isRelativePercentDifferenceGreaterThan) {
                Rect rect2 = thumbnailData.letterboxInsets;
                float f10 = rect2.left;
                rectF.left = f10;
                float f11 = rect2.right;
                rectF.right = f11;
                float f12 = rect2.top;
                rectF.top = f12;
                float f13 = rect2.bottom;
                rectF.bottom = f13;
                f4 = width - (f10 + f11);
                f5 = height - (f12 + f13);
            } else {
                f4 = width;
                f5 = height;
            }
            if (z6) {
                f9 = f8;
                f8 = f9;
            }
            float f14 = f8 / f9;
            float f15 = f4 / f14;
            if (f15 > f5) {
                f15 = f5 < f9 ? Math.min(f9, height) : f5;
                float f16 = f15 * f14;
                if (f16 > width) {
                    f15 = width / f14;
                } else {
                    width = f16;
                }
            } else {
                width = f4;
            }
            if (z5) {
                float f17 = (f4 - width) + rectF.left;
                rectF.left = f17;
                float f18 = rectF.right;
                if (f18 < 0.0f) {
                    rectF.left = f17 + f18;
                    rectF.right = 0.0f;
                }
            } else {
                float f19 = (f4 - width) + rectF.right;
                rectF.right = f19;
                float f20 = rectF.left;
                if (f20 < 0.0f) {
                    rectF.right = f19 + f20;
                    rectF.left = 0.0f;
                }
            }
            float f21 = (f5 - f15) + rectF.bottom;
            rectF.bottom = f21;
            float f22 = rectF.top;
            if (f22 < 0.0f) {
                rectF.bottom = f21 + f22;
                rectF.top = 0.0f;
            } else if (f21 < 0.0f) {
                rectF.top = f22 + f21;
                rectF.bottom = 0.0f;
            }
            f7 = f8 / (width * f6);
            z9 = z6;
            z6 = z7;
        }
        if (z6) {
            setThumbnailRotation(rotationDelta, rect);
        } else {
            this.mMatrix.setTranslate((-rectF.left) * f6, (-rectF.top) * f6);
        }
        this.mMatrix.postScale(f7, f7);
        this.mIsOrientationChanged = z9;
    }
}
