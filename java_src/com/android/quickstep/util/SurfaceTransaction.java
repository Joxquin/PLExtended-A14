package com.android.quickstep.util;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.view.SurfaceControl;
/* loaded from: classes.dex */
public class SurfaceTransaction {
    private final SurfaceControl.Transaction mTransaction = new SurfaceControl.Transaction();
    private final float[] mTmpValues = new float[9];

    /* loaded from: classes.dex */
    public class MockProperties extends SurfaceProperties {
        public float alpha;
        public float cornerRadius;
        public Matrix matrix;
        public float shadowRadius;
        public Rect windowCrop;

        public MockProperties() {
            super(null);
            this.alpha = -1.0f;
            this.matrix = null;
            this.windowCrop = null;
            this.cornerRadius = 0.0f;
            this.shadowRadius = 0.0f;
        }

        @Override // com.android.quickstep.util.SurfaceTransaction.SurfaceProperties
        public SurfaceProperties setAlpha(float f4) {
            this.alpha = f4;
            return this;
        }

        @Override // com.android.quickstep.util.SurfaceTransaction.SurfaceProperties
        public SurfaceProperties setCornerRadius(float f4) {
            this.cornerRadius = f4;
            return this;
        }

        @Override // com.android.quickstep.util.SurfaceTransaction.SurfaceProperties
        public SurfaceProperties setLayer(int i4) {
            return this;
        }

        @Override // com.android.quickstep.util.SurfaceTransaction.SurfaceProperties
        public SurfaceProperties setMatrix(Matrix matrix) {
            this.matrix = matrix;
            return this;
        }

        @Override // com.android.quickstep.util.SurfaceTransaction.SurfaceProperties
        public SurfaceProperties setShadowRadius(float f4) {
            this.shadowRadius = f4;
            return this;
        }

        @Override // com.android.quickstep.util.SurfaceTransaction.SurfaceProperties
        public SurfaceProperties setShow() {
            return this;
        }

        @Override // com.android.quickstep.util.SurfaceTransaction.SurfaceProperties
        public SurfaceProperties setWindowCrop(Rect rect) {
            this.windowCrop = rect;
            return this;
        }
    }

    /* loaded from: classes.dex */
    public class SurfaceProperties {
        private final SurfaceControl mSurface;

        public SurfaceProperties(SurfaceControl surfaceControl) {
            this.mSurface = surfaceControl;
        }

        public SurfaceProperties setAlpha(float f4) {
            SurfaceTransaction.this.mTransaction.setAlpha(this.mSurface, f4);
            return this;
        }

        public SurfaceProperties setCornerRadius(float f4) {
            SurfaceTransaction.this.mTransaction.setCornerRadius(this.mSurface, f4);
            return this;
        }

        public SurfaceProperties setLayer(int i4) {
            SurfaceTransaction.this.mTransaction.setLayer(this.mSurface, i4);
            return this;
        }

        public SurfaceProperties setMatrix(Matrix matrix) {
            SurfaceTransaction.this.mTransaction.setMatrix(this.mSurface, matrix, SurfaceTransaction.this.mTmpValues);
            return this;
        }

        public SurfaceProperties setShadowRadius(float f4) {
            SurfaceTransaction.this.mTransaction.setShadowRadius(this.mSurface, f4);
            return this;
        }

        public SurfaceProperties setShow() {
            SurfaceTransaction.this.mTransaction.show(this.mSurface);
            return this;
        }

        public SurfaceProperties setWindowCrop(Rect rect) {
            SurfaceTransaction.this.mTransaction.setWindowCrop(this.mSurface, rect);
            return this;
        }
    }

    public SurfaceProperties forSurface(SurfaceControl surfaceControl) {
        return surfaceControl.isValid() ? new SurfaceProperties(surfaceControl) : new MockProperties();
    }

    public SurfaceControl.Transaction getTransaction() {
        return this.mTransaction;
    }
}
