package com.android.launcher3.uioverrides.touchcontrollers;

import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.Window;
import android.view.WindowManager;
import com.android.launcher3.C0410q;
import com.android.launcher3.Launcher;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.util.TouchController;
import com.android.quickstep.SystemUiProxy;
import java.io.PrintWriter;
import t.j;
/* loaded from: classes.dex */
public final class StatusBarTouchController implements TouchController {
    private boolean mCanIntercept;
    private final SparseArray mDownEvents = new SparseArray();
    private int mLastAction;
    private final Launcher mLauncher;
    private final SystemUiProxy mSystemUiProxy;
    private final float mTouchSlop;

    public StatusBarTouchController(Launcher launcher) {
        this.mLauncher = launcher;
        this.mSystemUiProxy = (SystemUiProxy) SystemUiProxy.INSTANCE.get(launcher);
        this.mTouchSlop = ViewConfiguration.get(launcher).getScaledTouchSlop() * 2;
    }

    private void setWindowSlippery(boolean z4) {
        Window window = this.mLauncher.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (z4) {
            attributes.flags |= 536870912;
        } else {
            attributes.flags &= -536870913;
        }
        window.setAttributes(attributes);
    }

    @Override // com.android.launcher3.util.TouchController
    public final void dump(String str, PrintWriter printWriter) {
        StringBuilder c4 = C0410q.c(j.a(str, "mCanIntercept:"), this.mCanIntercept, printWriter, str, "mLastAction:");
        c4.append(MotionEvent.actionToString(this.mLastAction));
        printWriter.println(c4.toString());
        printWriter.println(str + "mSysUiProxy available:" + ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this.mLauncher)).isActive());
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0053 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0054  */
    @Override // com.android.launcher3.util.TouchController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onControllerInterceptTouchEvent(android.view.MotionEvent r10) {
        /*
            r9 = this;
            int r0 = r10.getActionMasked()
            int r1 = r10.getActionIndex()
            int r2 = r10.getPointerId(r1)
            android.util.SparseArray r3 = r9.mDownEvents
            r4 = 0
            if (r0 != 0) goto L68
            com.android.launcher3.LauncherState r5 = com.android.launcher3.LauncherState.NORMAL
            com.android.launcher3.Launcher r6 = r9.mLauncher
            boolean r5 = r6.isInState(r5)
            if (r5 == 0) goto L4e
            r5 = 3196(0xc7c, float:4.479E-42)
            com.android.launcher3.AbstractFloatingView r5 = com.android.launcher3.AbstractFloatingView.getTopOpenViewWithType(r6, r5)
            if (r5 == 0) goto L24
            goto L4e
        L24:
            com.android.launcher3.DeviceProfile r5 = r6.getDeviceProfile()
            float r7 = r10.getY()
            com.android.launcher3.dragndrop.DragLayer r8 = r6.getDragLayer()
            int r8 = r8.getHeight()
            android.graphics.Rect r5 = r5.getInsets()
            int r5 = r5.bottom
            int r8 = r8 - r5
            float r5 = (float) r8
            int r5 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r5 <= 0) goto L41
            goto L4e
        L41:
            com.android.launcher3.util.MainThreadInitializedObject r5 = com.android.quickstep.SystemUiProxy.INSTANCE
            java.lang.Object r5 = r5.get(r6)
            com.android.quickstep.SystemUiProxy r5 = (com.android.quickstep.SystemUiProxy) r5
            boolean r5 = r5.isActive()
            goto L4f
        L4e:
            r5 = r4
        L4f:
            r9.mCanIntercept = r5
            if (r5 != 0) goto L54
            return r4
        L54:
            r3.clear()
            android.graphics.PointF r5 = new android.graphics.PointF
            float r6 = r10.getX()
            float r7 = r10.getY()
            r5.<init>(r6, r7)
            r3.put(r2, r5)
            goto L7f
        L68:
            int r5 = r10.getActionMasked()
            r6 = 5
            if (r5 != r6) goto L7f
            android.graphics.PointF r5 = new android.graphics.PointF
            float r6 = r10.getX(r1)
            float r7 = r10.getY(r1)
            r5.<init>(r6, r7)
            r3.put(r2, r5)
        L7f:
            boolean r5 = r9.mCanIntercept
            if (r5 != 0) goto L84
            return r4
        L84:
            r5 = 2
            if (r0 != r5) goto Ld8
            float r0 = r10.getY(r1)
            java.lang.Object r5 = r3.get(r2)
            android.graphics.PointF r5 = (android.graphics.PointF) r5
            float r5 = r5.y
            float r0 = r0 - r5
            float r1 = r10.getX(r1)
            java.lang.Object r2 = r3.get(r2)
            android.graphics.PointF r2 = (android.graphics.PointF) r2
            float r2 = r2.x
            float r1 = r1 - r2
            float r2 = r9.mTouchSlop
            int r3 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r3 <= 0) goto Lce
            float r3 = java.lang.Math.abs(r1)
            int r0 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r0 <= 0) goto Lce
            int r0 = r10.getPointerCount()
            r3 = 1
            if (r0 != r3) goto Lce
            r10.setAction(r4)
            com.android.quickstep.SystemUiProxy r0 = r9.mSystemUiProxy
            boolean r1 = r0.isActive()
            if (r1 == 0) goto Lca
            int r1 = r10.getActionMasked()
            r9.mLastAction = r1
            r0.onStatusBarTouchEvent(r10)
        Lca:
            r9.setWindowSlippery(r3)
            return r3
        Lce:
            float r10 = java.lang.Math.abs(r1)
            int r10 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r10 <= 0) goto Ld8
            r9.mCanIntercept = r4
        Ld8:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.uioverrides.touchcontrollers.StatusBarTouchController.onControllerInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // com.android.launcher3.util.TouchController
    public final boolean onControllerTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            SystemUiProxy systemUiProxy = this.mSystemUiProxy;
            if (systemUiProxy.isActive()) {
                this.mLastAction = motionEvent.getActionMasked();
                systemUiProxy.onStatusBarTouchEvent(motionEvent);
            }
            this.mLauncher.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_SWIPE_DOWN_WORKSPACE_NOTISHADE_OPEN);
            setWindowSlippery(false);
            return true;
        }
        return true;
    }
}
