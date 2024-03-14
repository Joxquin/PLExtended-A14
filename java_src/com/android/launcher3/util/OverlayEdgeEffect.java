package com.android.launcher3.util;

import android.content.Context;
import android.graphics.Canvas;
import com.android.launcher3.Utilities;
import q1.InterfaceC1362b;
/* loaded from: classes.dex */
public final class OverlayEdgeEffect extends EdgeEffectCompat {
    protected float mDistance;
    protected final boolean mIsRtl;
    protected boolean mIsScrolling;
    protected final InterfaceC1362b mOverlay;

    public OverlayEdgeEffect(Context context, InterfaceC1362b interfaceC1362b) {
        super(context);
        this.mOverlay = interfaceC1362b;
        this.mIsRtl = Utilities.isRtl(context.getResources());
    }

    @Override // android.widget.EdgeEffect
    public final boolean draw(Canvas canvas) {
        return false;
    }

    @Override // android.widget.EdgeEffect
    public final void finish() {
        this.mDistance = 0.0f;
    }

    @Override // com.android.launcher3.util.EdgeEffectCompat, android.widget.EdgeEffect
    public final float getDistance() {
        return this.mDistance;
    }

    @Override // android.widget.EdgeEffect
    public final boolean isFinished() {
        return this.mDistance <= 0.0f;
    }

    @Override // android.widget.EdgeEffect
    public final void onAbsorb(int i4) {
    }

    @Override // com.android.launcher3.util.EdgeEffectCompat, android.widget.EdgeEffect
    public final float onPullDistance(float f4, float f5) {
        this.mDistance = Math.max(0.0f, this.mDistance + f4);
        if (!this.mIsScrolling) {
            this.mOverlay.f();
            this.mIsScrolling = true;
        }
        this.mOverlay.c(this.mDistance);
        if (this.mDistance > 0.0f) {
            return f4;
        }
        return 0.0f;
    }

    @Override // android.widget.EdgeEffect
    public final void onRelease() {
        if (this.mIsScrolling) {
            this.mDistance = 0.0f;
            this.mOverlay.l();
            this.mIsScrolling = false;
        }
    }
}
