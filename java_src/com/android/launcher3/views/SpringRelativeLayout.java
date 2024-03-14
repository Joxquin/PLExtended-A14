package com.android.launcher3.views;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.EdgeEffect;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.C0264d0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.Utilities;
/* loaded from: classes.dex */
public class SpringRelativeLayout extends RelativeLayout {
    private final EdgeEffect mEdgeGlowBottom;
    private final EdgeEffect mEdgeGlowTop;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class ProxyEdgeEffectFactory extends C0264d0 {
        public ProxyEdgeEffectFactory() {
        }

        @Override // androidx.recyclerview.widget.C0264d0
        public final EdgeEffect createEdgeEffect(RecyclerView recyclerView, int i4) {
            if (i4 == 1) {
                SpringRelativeLayout springRelativeLayout = SpringRelativeLayout.this;
                return new EdgeEffectProxy(springRelativeLayout.getContext(), springRelativeLayout.mEdgeGlowTop);
            }
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public SpringRelativeLayout(Context context) {
        this(context, null);
    }

    public final void absorbPullDeltaDistance(float f4, float f5) {
        this.mEdgeGlowBottom.onPull(f4, f5);
        invalidate();
    }

    public final void absorbSwipeUpVelocity(int i4) {
        this.mEdgeGlowBottom.onAbsorb(i4);
        invalidate();
    }

    public final C0264d0 createEdgeEffectFactory() {
        return new ProxyEdgeEffectFactory();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        super.draw(canvas);
        if (!this.mEdgeGlowTop.isFinished()) {
            int save = canvas.save();
            canvas.translate(0.0f, 0.0f);
            this.mEdgeGlowTop.setSize(getWidth(), getHeight());
            if (this.mEdgeGlowTop.draw(canvas)) {
                postInvalidateOnAnimation();
            }
            canvas.restoreToCount(save);
        }
        if (this.mEdgeGlowBottom.isFinished()) {
            return;
        }
        int save2 = canvas.save();
        int width = getWidth();
        int height = getHeight();
        canvas.translate(-width, height);
        canvas.rotate(180.0f, width, 0.0f);
        this.mEdgeGlowBottom.setSize(width, height);
        if (this.mEdgeGlowBottom.draw(canvas)) {
            postInvalidateOnAnimation();
        }
        canvas.restoreToCount(save2);
    }

    public final void onRelease() {
        this.mEdgeGlowBottom.onRelease();
    }

    /* loaded from: classes.dex */
    final class EdgeEffectProxy extends EdgeEffect {
        private final EdgeEffect mParent;

        public EdgeEffectProxy(Context context, EdgeEffect edgeEffect) {
            super(context);
            this.mParent = edgeEffect;
        }

        private void invalidateParentScrollEffect() {
            if (this.mParent.isFinished()) {
                return;
            }
            SpringRelativeLayout.this.invalidate();
        }

        @Override // android.widget.EdgeEffect
        public final boolean draw(Canvas canvas) {
            return false;
        }

        @Override // android.widget.EdgeEffect
        public final void finish() {
            this.mParent.finish();
        }

        @Override // android.widget.EdgeEffect
        public final boolean isFinished() {
            return this.mParent.isFinished();
        }

        @Override // android.widget.EdgeEffect
        public final void onAbsorb(int i4) {
            this.mParent.onAbsorb(i4);
            invalidateParentScrollEffect();
        }

        @Override // android.widget.EdgeEffect
        public final void onPull(float f4) {
            this.mParent.onPull(f4);
            invalidateParentScrollEffect();
        }

        @Override // android.widget.EdgeEffect
        public final void onRelease() {
            this.mParent.onRelease();
            invalidateParentScrollEffect();
        }

        @Override // android.widget.EdgeEffect
        public final void onPull(float f4, float f5) {
            this.mParent.onPull(f4, f5);
            invalidateParentScrollEffect();
        }
    }

    public SpringRelativeLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SpringRelativeLayout(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        boolean z4 = Utilities.ATLEAST_S;
        this.mEdgeGlowTop = z4 ? new EdgeEffect(context, attributeSet) : new EdgeEffect(context);
        this.mEdgeGlowBottom = z4 ? new EdgeEffect(context, attributeSet) : new EdgeEffect(context);
        setWillNotDraw(false);
    }
}
