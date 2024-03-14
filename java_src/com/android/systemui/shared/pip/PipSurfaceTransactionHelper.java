package com.android.systemui.shared.pip;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.RectF;
import android.view.Choreographer;
import android.view.SurfaceControl;
import android.window.PictureInPictureSurfaceTransaction;
/* loaded from: classes.dex */
public class PipSurfaceTransactionHelper {
    private final int mCornerRadius;
    private final int mShadowRadius;
    private final Matrix mTmpTransform = new Matrix();
    private final float[] mTmpFloat9 = new float[9];
    private final RectF mTmpSourceRectF = new RectF();
    private final RectF mTmpDestinationRectF = new RectF();
    private final Rect mTmpDestinationRect = new Rect();

    public PipSurfaceTransactionHelper(int i4, int i5) {
        this.mCornerRadius = i4;
        this.mShadowRadius = i5;
    }

    private float getScaledCornerRadius(Rect rect, Rect rect2) {
        return this.mCornerRadius * ((float) (Math.hypot(rect.width(), rect.height()) / Math.hypot(rect2.width(), rect2.height())));
    }

    private static PictureInPictureSurfaceTransaction newPipSurfaceTransaction(float f4, float f5, float[] fArr, float f6, float f7, float f8, Rect rect) {
        return new PictureInPictureSurfaceTransaction.Builder().setPosition(f4, f5).setTransform(fArr, f6).setCornerRadius(f7).setShadowRadius(f8).setWindowCrop(rect).build();
    }

    public static SurfaceControl.Transaction newSurfaceControlTransaction() {
        SurfaceControl.Transaction transaction = new SurfaceControl.Transaction();
        transaction.setFrameTimelineVsync(Choreographer.getInstance().getVsyncId());
        return transaction;
    }

    public PictureInPictureSurfaceTransaction scale(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Rect rect, Rect rect2) {
        float f4 = rect2.left;
        float f5 = rect2.top;
        this.mTmpSourceRectF.set(rect);
        this.mTmpDestinationRectF.set(rect2);
        this.mTmpDestinationRectF.offsetTo(0.0f, 0.0f);
        this.mTmpTransform.setRectToRect(this.mTmpSourceRectF, this.mTmpDestinationRectF, Matrix.ScaleToFit.FILL);
        float scaledCornerRadius = getScaledCornerRadius(rect, rect2);
        transaction.setMatrix(surfaceControl, this.mTmpTransform, this.mTmpFloat9).setPosition(surfaceControl, f4, f5).setCornerRadius(surfaceControl, scaledCornerRadius).setShadowRadius(surfaceControl, this.mShadowRadius);
        return newPipSurfaceTransaction(f4, f5, this.mTmpFloat9, 0.0f, scaledCornerRadius, this.mShadowRadius, rect);
    }

    public PictureInPictureSurfaceTransaction scaleAndCrop(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Rect rect, Rect rect2, Rect rect3, Rect rect4, float f4) {
        float max;
        float height;
        int height2;
        float height3;
        int height4;
        this.mTmpSourceRectF.set(rect2);
        this.mTmpDestinationRect.set(rect2);
        this.mTmpDestinationRect.inset(rect4);
        if (rect.isEmpty() || rect.width() == rect2.width()) {
            max = Math.max(rect3.width() / rect2.width(), rect3.height() / rect2.height());
        } else {
            if (rect.width() <= rect.height()) {
                height = rect3.width();
                height2 = rect.width();
            } else {
                height = rect3.height();
                height2 = rect.height();
            }
            float f5 = height / height2;
            if (rect.width() <= rect.height()) {
                height3 = rect3.width();
                height4 = rect2.width();
            } else {
                height3 = rect3.height();
                height4 = rect2.height();
            }
            max = (f4 * f5) + ((1.0f - f4) * (height3 / height4));
        }
        float f6 = rect3.left - ((rect4.left + rect2.left) * max);
        float f7 = rect3.top - ((rect4.top + rect2.top) * max);
        this.mTmpTransform.setScale(max, max);
        float scaledCornerRadius = getScaledCornerRadius(this.mTmpDestinationRect, rect3);
        transaction.setMatrix(surfaceControl, this.mTmpTransform, this.mTmpFloat9).setCrop(surfaceControl, this.mTmpDestinationRect).setPosition(surfaceControl, f6, f7).setCornerRadius(surfaceControl, scaledCornerRadius).setShadowRadius(surfaceControl, this.mShadowRadius);
        return newPipSurfaceTransaction(f6, f7, this.mTmpFloat9, 0.0f, scaledCornerRadius, this.mShadowRadius, this.mTmpDestinationRect);
    }

    public PictureInPictureSurfaceTransaction scaleAndRotate(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Rect rect, Rect rect2, Rect rect3, float f4, float f5, float f6) {
        float height;
        int height2;
        float f7;
        float f8;
        this.mTmpSourceRectF.set(rect);
        this.mTmpDestinationRect.set(rect);
        this.mTmpDestinationRect.inset(rect3);
        if (rect.width() <= rect.height()) {
            height = rect2.width();
            height2 = rect.width();
        } else {
            height = rect2.height();
            height2 = rect.height();
        }
        float f9 = height / height2;
        this.mTmpTransform.setRotate(f4, 0.0f, 0.0f);
        this.mTmpTransform.postScale(f9, f9);
        float scaledCornerRadius = getScaledCornerRadius(this.mTmpDestinationRect, rect2);
        if (f4 < 0.0f) {
            f7 = (rect3.top * f9) + f5;
            f8 = (rect3.left * f9) + f6;
        } else {
            f7 = f5 - (rect3.top * f9);
            f8 = f6 - (rect3.left * f9);
        }
        transaction.setMatrix(surfaceControl, this.mTmpTransform, this.mTmpFloat9).setCrop(surfaceControl, this.mTmpDestinationRect).setPosition(surfaceControl, f7, f8).setCornerRadius(surfaceControl, scaledCornerRadius).setShadowRadius(surfaceControl, this.mShadowRadius);
        return newPipSurfaceTransaction(f7, f8, this.mTmpFloat9, f4, scaledCornerRadius, this.mShadowRadius, this.mTmpDestinationRect);
    }

    public PictureInPictureSurfaceTransaction scale(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, Rect rect, Rect rect2, float f4, float f5, float f6) {
        this.mTmpSourceRectF.set(rect);
        this.mTmpDestinationRectF.set(rect2);
        this.mTmpDestinationRectF.offsetTo(0.0f, 0.0f);
        this.mTmpTransform.setRectToRect(this.mTmpSourceRectF, this.mTmpDestinationRectF, Matrix.ScaleToFit.FILL);
        this.mTmpTransform.postRotate(f4, 0.0f, 0.0f);
        float scaledCornerRadius = getScaledCornerRadius(rect, rect2);
        transaction.setMatrix(surfaceControl, this.mTmpTransform, this.mTmpFloat9).setPosition(surfaceControl, f5, f6).setCornerRadius(surfaceControl, scaledCornerRadius).setShadowRadius(surfaceControl, this.mShadowRadius);
        return newPipSurfaceTransaction(f5, f6, this.mTmpFloat9, f4, scaledCornerRadius, this.mShadowRadius, rect);
    }
}
