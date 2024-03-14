package com.android.launcher3.dragndrop;

import android.graphics.Point;
import android.os.SystemClock;
import android.view.DragEvent;
import android.view.MotionEvent;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public abstract class DragDriver {
    protected final EventListener mEventListener;
    protected final Consumer mSecondaryEventConsumer;

    /* loaded from: classes.dex */
    public interface EventListener {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class InternalDragDriver extends DragDriver {
        private final DragController mDragController;

        public InternalDragDriver(DragController dragController, Consumer consumer) {
            super(dragController, consumer);
            this.mDragController = dragController;
        }

        @Override // com.android.launcher3.dragndrop.DragDriver
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            this.mSecondaryEventConsumer.accept(motionEvent);
            int action = motionEvent.getAction();
            EventListener eventListener = this.mEventListener;
            if (action == 1) {
                DragController dragController = this.mDragController;
                ((DragController) eventListener).onDriverDragEnd(dragController.getX(motionEvent), dragController.getY(motionEvent));
            } else if (action == 3) {
                ((DragController) eventListener).cancelDrag();
            }
            return true;
        }

        @Override // com.android.launcher3.dragndrop.DragDriver
        public final boolean onTouchEvent(MotionEvent motionEvent) {
            this.mSecondaryEventConsumer.accept(motionEvent);
            int action = motionEvent.getAction();
            EventListener eventListener = this.mEventListener;
            DragController dragController = this.mDragController;
            if (action == 1) {
                DragController dragController2 = (DragController) eventListener;
                Point clampedDragLayerPos = dragController2.getClampedDragLayerPos(dragController.getX(motionEvent), dragController.getY(motionEvent));
                dragController2.handleMoveEvent(clampedDragLayerPos.x, clampedDragLayerPos.y);
                dragController2.onDriverDragEnd(dragController.getX(motionEvent), dragController.getY(motionEvent));
            } else if (action == 2) {
                DragController dragController3 = (DragController) eventListener;
                Point clampedDragLayerPos2 = dragController3.getClampedDragLayerPos(dragController.getX(motionEvent), dragController.getY(motionEvent));
                dragController3.handleMoveEvent(clampedDragLayerPos2.x, clampedDragLayerPos2.y);
            } else if (action == 3) {
                ((DragController) eventListener).cancelDrag();
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class SystemDragDriver extends DragDriver {
        private final long mDragStartTime;
        float mLastX;
        float mLastY;

        public SystemDragDriver(DragController dragController, Consumer consumer) {
            super(dragController, consumer);
            this.mLastX = 0.0f;
            this.mLastY = 0.0f;
            this.mDragStartTime = SystemClock.uptimeMillis();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0038 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:16:0x0039  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x0048  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x004e  */
        /* JADX WARN: Removed duplicated region for block: B:24:0x0077  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0099  */
        @Override // com.android.launcher3.dragndrop.DragDriver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean onDragEvent(android.view.DragEvent r13) {
            /*
                r12 = this;
                int r0 = r13.getAction()
                r1 = 0
                r2 = 1
                if (r0 == r2) goto L13
                r3 = 2
                if (r0 == r3) goto L11
                r3 = 4
                if (r0 == r3) goto Lf
                goto L2f
            Lf:
                r8 = r2
                goto L14
            L11:
                r8 = r3
                goto L14
            L13:
                r8 = r1
            L14:
                long r4 = r12.mDragStartTime
                long r6 = android.os.SystemClock.uptimeMillis()
                float r9 = r13.getX()
                float r10 = r13.getY()
                r11 = 0
                android.view.MotionEvent r0 = android.view.MotionEvent.obtain(r4, r6, r8, r9, r10, r11)
                java.util.function.Consumer r3 = r12.mSecondaryEventConsumer
                r3.accept(r0)
                r0.recycle()
            L2f:
                int r0 = r13.getAction()
                com.android.launcher3.dragndrop.DragDriver$EventListener r3 = r12.mEventListener
                switch(r0) {
                    case 1: goto L99;
                    case 2: goto L77;
                    case 3: goto L4e;
                    case 4: goto L48;
                    case 5: goto L47;
                    case 6: goto L39;
                    default: goto L38;
                }
            L38:
                return r1
            L39:
                com.android.launcher3.dragndrop.DragController r3 = (com.android.launcher3.dragndrop.DragController) r3
                com.android.launcher3.DropTarget r12 = r3.mLastDropTarget
                if (r12 == 0) goto L47
                com.android.launcher3.DropTarget$DragObject r13 = r3.mDragObject
                r12.onDragExit(r13)
                r12 = 0
                r3.mLastDropTarget = r12
            L47:
                return r2
            L48:
                com.android.launcher3.dragndrop.DragController r3 = (com.android.launcher3.dragndrop.DragController) r3
                r3.cancelDrag()
                return r2
            L4e:
                float r0 = r13.getX()
                r12.mLastX = r0
                float r0 = r13.getY()
                r12.mLastY = r0
                float r0 = r13.getX()
                float r13 = r13.getY()
                com.android.launcher3.dragndrop.DragController r3 = (com.android.launcher3.dragndrop.DragController) r3
                android.graphics.Point r13 = r3.getClampedDragLayerPos(r0, r13)
                int r0 = r13.x
                int r13 = r13.y
                r3.handleMoveEvent(r0, r13)
                float r13 = r12.mLastX
                float r12 = r12.mLastY
                r3.onDriverDragEnd(r13, r12)
                return r2
            L77:
                float r0 = r13.getX()
                r12.mLastX = r0
                float r0 = r13.getY()
                r12.mLastY = r0
                float r12 = r13.getX()
                float r13 = r13.getY()
                com.android.launcher3.dragndrop.DragController r3 = (com.android.launcher3.dragndrop.DragController) r3
                android.graphics.Point r12 = r3.getClampedDragLayerPos(r12, r13)
                int r13 = r12.x
                int r12 = r12.y
                r3.handleMoveEvent(r13, r12)
                return r2
            L99:
                float r0 = r13.getX()
                r12.mLastX = r0
                float r13 = r13.getY()
                r12.mLastY = r13
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.dragndrop.DragDriver.SystemDragDriver.onDragEvent(android.view.DragEvent):boolean");
        }

        @Override // com.android.launcher3.dragndrop.DragDriver
        public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return false;
        }
    }

    public DragDriver(EventListener eventListener, Consumer consumer) {
        this.mEventListener = eventListener;
        this.mSecondaryEventConsumer = consumer;
    }

    public static DragDriver create(DragController dragController, DragOptions dragOptions, Consumer consumer) {
        if (dragOptions.simulatedDndStartPoint != null) {
            if (dragOptions.isAccessibleDrag) {
                return null;
            }
            return new SystemDragDriver(dragController, consumer);
        }
        return new InternalDragDriver(dragController, consumer);
    }

    public boolean onDragEvent(DragEvent dragEvent) {
        return false;
    }

    public abstract boolean onInterceptTouchEvent(MotionEvent motionEvent);

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
