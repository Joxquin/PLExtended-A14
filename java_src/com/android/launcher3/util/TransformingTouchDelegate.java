package com.android.launcher3.util;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.TouchDelegate;
import android.view.View;
import com.android.quickstep.views.IconView;
/* loaded from: classes.dex */
public final class TransformingTouchDelegate extends TouchDelegate {
    private static final Rect sTempRect = new Rect();
    private final RectF mBounds;
    private boolean mDelegateTargeted;
    private View mDelegateView;
    private final RectF mTouchCheckBounds;
    private boolean mWasTouchOutsideBounds;

    public TransformingTouchDelegate(IconView iconView) {
        super(sTempRect, iconView);
        this.mDelegateView = iconView;
        this.mBounds = new RectF();
        this.mTouchCheckBounds = new RectF();
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000e, code lost:
        if (r0 != 3) goto L8;
     */
    @Override // android.view.TouchDelegate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getAction()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L19
            if (r0 == r1) goto L14
            r1 = 2
            if (r0 == r1) goto L11
            r1 = 3
            if (r0 == r1) goto L14
            goto L3d
        L11:
            boolean r1 = r5.mDelegateTargeted
            goto L3e
        L14:
            boolean r1 = r5.mDelegateTargeted
            r5.mDelegateTargeted = r2
            goto L3e
        L19:
            android.graphics.RectF r0 = r5.mTouchCheckBounds
            float r3 = r6.getX()
            float r4 = r6.getY()
            boolean r0 = r0.contains(r3, r4)
            r5.mDelegateTargeted = r0
            if (r0 == 0) goto L3d
            android.graphics.RectF r0 = r5.mBounds
            float r3 = r6.getX()
            float r4 = r6.getY()
            boolean r0 = r0.contains(r3, r4)
            r0 = r0 ^ r1
            r5.mWasTouchOutsideBounds = r0
            goto L3e
        L3d:
            r1 = r2
        L3e:
            if (r1 == 0) goto L70
            float r0 = r6.getX()
            float r1 = r6.getY()
            boolean r2 = r5.mWasTouchOutsideBounds
            if (r2 == 0) goto L5c
            android.graphics.RectF r2 = r5.mBounds
            float r2 = r2.centerX()
            android.graphics.RectF r3 = r5.mBounds
            float r3 = r3.centerY()
            r6.setLocation(r2, r3)
            goto L67
        L5c:
            android.graphics.RectF r2 = r5.mBounds
            float r3 = r2.left
            float r3 = -r3
            float r2 = r2.top
            float r2 = -r2
            r6.offsetLocation(r3, r2)
        L67:
            android.view.View r5 = r5.mDelegateView
            boolean r2 = r5.dispatchTouchEvent(r6)
            r6.setLocation(r0, r1)
        L70:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.util.TransformingTouchDelegate.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final void setBounds(int i4, int i5, int i6, int i7) {
        this.mBounds.set(i4, i5, i6, i7);
        this.mTouchCheckBounds.set(this.mBounds);
        this.mTouchCheckBounds.inset(-0.0f, -0.0f);
    }
}
