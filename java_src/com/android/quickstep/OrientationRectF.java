package com.android.quickstep;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.MotionEvent;
import com.android.quickstep.util.RecentsOrientedState;
/* loaded from: classes.dex */
public class OrientationRectF extends RectF {
    private static final boolean DEBUG = false;
    private static final String TAG = "OrientationRectF";
    private final float mHeight;
    private final int mRotation;
    private final Matrix mTmpMatrix;
    private final float[] mTmpPoint;
    private final float mWidth;

    public OrientationRectF(float f4, float f5, float f6, float f7, int i4) {
        super(f4, f5, f6, f7);
        this.mTmpMatrix = new Matrix();
        this.mTmpPoint = new float[2];
        this.mRotation = i4;
        this.mHeight = f7;
        this.mWidth = f6;
    }

    public boolean applyTransform(MotionEvent motionEvent, int i4, boolean z4) {
        this.mTmpMatrix.reset();
        RecentsOrientedState.postDisplayRotation(i4, this.mHeight, this.mWidth, this.mTmpMatrix);
        if (z4) {
            motionEvent.applyTransform(this.mTmpMatrix);
            return true;
        }
        this.mTmpPoint[0] = motionEvent.getX();
        this.mTmpPoint[1] = motionEvent.getY();
        this.mTmpMatrix.mapPoints(this.mTmpPoint);
        float[] fArr = this.mTmpPoint;
        if (contains(fArr[0], fArr[1])) {
            motionEvent.applyTransform(this.mTmpMatrix);
            return true;
        }
        return false;
    }

    public boolean applyTransformFromRotation(MotionEvent motionEvent, int i4, boolean z4) {
        int i5 = this.mRotation - i4;
        if (i5 < 0) {
            i5 += 4;
        }
        return applyTransform(motionEvent, i5, z4);
    }

    public boolean applyTransformToRotation(MotionEvent motionEvent, int i4, boolean z4) {
        int i5 = i4 - this.mRotation;
        if (i5 < 0) {
            i5 += 4;
        }
        return applyTransform(motionEvent, i5, z4);
    }

    @Override // android.graphics.RectF
    public boolean contains(float f4, float f5) {
        float f6 = ((RectF) this).left;
        float f7 = ((RectF) this).right;
        if (f6 < f7) {
            float f8 = ((RectF) this).top;
            float f9 = ((RectF) this).bottom;
            if (f8 < f9 && f4 >= f6 && f4 <= f7 && f5 >= f8 && f5 <= f9) {
                return true;
            }
        }
        return false;
    }

    public int getRotation() {
        return this.mRotation;
    }

    @Override // android.graphics.RectF
    public String toString() {
        StringBuilder a4 = t.j.a(super.toString(), " rotation: ");
        a4.append(this.mRotation);
        return a4.toString();
    }
}
