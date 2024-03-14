package com.android.launcher3.touch;

import android.content.Context;
import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import com.android.launcher3.Utilities;
/* loaded from: classes.dex */
public final class SingleAxisSwipeDetector extends BaseSwipeDetector {
    private final Direction mDir;
    private final Listener mListener;
    private int mScrollDirections;
    private float mTouchSlopMultiplier;
    public static final Direction VERTICAL = new AnonymousClass1(0);
    public static final Direction HORIZONTAL = new AnonymousClass1(1);

    /* renamed from: com.android.launcher3.touch.SingleAxisSwipeDetector$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 extends Direction {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ int f5191a;

        public /* synthetic */ AnonymousClass1(int i4) {
            this.f5191a = i4;
        }

        @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Direction
        public final float extractDirection(PointF pointF) {
            switch (this.f5191a) {
                case 0:
                    return pointF.y;
                default:
                    return pointF.x;
            }
        }

        @Override // com.android.launcher3.touch.SingleAxisSwipeDetector.Direction
        public final boolean isPositive(float f4) {
            switch (this.f5191a) {
                case 0:
                    return f4 < 0.0f;
                default:
                    return f4 > 0.0f;
            }
        }

        public final String toString() {
            switch (this.f5191a) {
                case 0:
                    return "VERTICAL";
                default:
                    return "HORIZONTAL";
            }
        }
    }

    /* loaded from: classes.dex */
    public abstract class Direction {
        public abstract float extractDirection(PointF pointF);

        public abstract boolean isPositive(float f4);
    }

    /* loaded from: classes.dex */
    public interface Listener {
        boolean onDrag(float f4);

        default boolean onDrag(float f4, MotionEvent motionEvent) {
            return onDrag(f4);
        }

        void onDragEnd(float f4);

        void onDragStart(boolean z4, float f4);

        default boolean onDrag(float f4, float f5, MotionEvent motionEvent) {
            return onDrag(f4, motionEvent);
        }
    }

    public SingleAxisSwipeDetector(Context context, Listener listener, Direction direction) {
        super(context, ViewConfiguration.get(context), Utilities.isRtl(context.getResources()));
        this.mTouchSlopMultiplier = 1.0f;
        this.mListener = listener;
        this.mDir = direction;
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public final void reportDragEndInternal(PointF pointF) {
        this.mListener.onDragEnd(this.mDir.extractDirection(pointF));
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public final void reportDragStartInternal(boolean z4) {
        float extractDirection = this.mDir.extractDirection(this.mSubtractDisplacement);
        this.mListener.onDragStart(!z4, extractDirection);
    }

    @Override // com.android.launcher3.touch.BaseSwipeDetector
    public final void reportDraggingInternal(PointF pointF, MotionEvent motionEvent) {
        float f4;
        Direction direction = this.mDir;
        float extractDirection = direction.extractDirection(pointF);
        switch (((AnonymousClass1) direction).f5191a) {
            case 0:
                f4 = pointF.x;
                break;
            default:
                f4 = pointF.y;
                break;
        }
        this.mListener.onDrag(extractDirection, f4, motionEvent);
    }

    public final void setDetectableScrollConditions(int i4, boolean z4) {
        this.mScrollDirections = i4;
        this.mIgnoreSlopWhenSettling = z4;
    }

    public final void setTouchSlopMultiplier(float f4) {
        this.mTouchSlopMultiplier = f4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
        if (r6 > 0.0f) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0047, code lost:
        if (r6 < 0.0f) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0049, code lost:
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004b, code lost:
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004c, code lost:
        if (r0 == false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x004e, code lost:
        r0 = true;
     */
    @Override // com.android.launcher3.touch.BaseSwipeDetector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean shouldScrollStart(android.graphics.PointF r6) {
        /*
            r5 = this;
            float r0 = r5.mTouchSlop
            float r1 = r5.mTouchSlopMultiplier
            float r0 = r0 * r1
            com.android.launcher3.touch.SingleAxisSwipeDetector$Direction r1 = r5.mDir
            r2 = r1
            com.android.launcher3.touch.SingleAxisSwipeDetector$1 r2 = (com.android.launcher3.touch.SingleAxisSwipeDetector.AnonymousClass1) r2
            int r2 = r2.f5191a
            switch(r2) {
                case 0: goto L10;
                default: goto Lf;
            }
        Lf:
            goto L13
        L10:
            float r2 = r6.x
            goto L15
        L13:
            float r2 = r6.y
        L15:
            float r2 = java.lang.Math.abs(r2)
            float r0 = java.lang.Math.max(r0, r2)
            float r2 = r1.extractDirection(r6)
            float r2 = java.lang.Math.abs(r2)
            int r0 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            r2 = 0
            if (r0 >= 0) goto L2b
            return r2
        L2b:
            float r6 = r1.extractDirection(r6)
            int r5 = r5.mScrollDirections
            r0 = r5 & 2
            r3 = 1
            if (r0 <= 0) goto L50
            r0 = r1
            com.android.launcher3.touch.SingleAxisSwipeDetector$1 r0 = (com.android.launcher3.touch.SingleAxisSwipeDetector.AnonymousClass1) r0
            int r0 = r0.f5191a
            r4 = 0
            switch(r0) {
                case 0: goto L40;
                default: goto L3f;
            }
        L3f:
            goto L45
        L40:
            int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r0 <= 0) goto L4b
            goto L49
        L45:
            int r0 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r0 >= 0) goto L4b
        L49:
            r0 = r3
            goto L4c
        L4b:
            r0 = r2
        L4c:
            if (r0 == 0) goto L50
            r0 = r3
            goto L51
        L50:
            r0 = r2
        L51:
            if (r0 != 0) goto L61
            r5 = r5 & r3
            if (r5 <= 0) goto L5e
            boolean r5 = r1.isPositive(r6)
            if (r5 == 0) goto L5e
            r5 = r3
            goto L5f
        L5e:
            r5 = r2
        L5f:
            if (r5 == 0) goto L62
        L61:
            r2 = r3
        L62:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.touch.SingleAxisSwipeDetector.shouldScrollStart(android.graphics.PointF):boolean");
    }

    public final boolean wasInitialTouchPositive() {
        PointF pointF = this.mSubtractDisplacement;
        Direction direction = this.mDir;
        return direction.isPositive(direction.extractDirection(pointF));
    }

    public SingleAxisSwipeDetector(Context context, ViewConfiguration viewConfiguration, Listener listener, Direction direction, boolean z4) {
        super(context, viewConfiguration, z4);
        this.mTouchSlopMultiplier = 1.0f;
        this.mListener = listener;
        this.mDir = direction;
    }
}
