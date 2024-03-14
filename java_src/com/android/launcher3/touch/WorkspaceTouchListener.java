package com.android.launcher3.touch;

import android.graphics.PointF;
import android.graphics.Rect;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Workspace;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.testing.TestLogging;
/* loaded from: classes.dex */
public final class WorkspaceTouchListener extends GestureDetector.SimpleOnGestureListener implements View.OnTouchListener {
    private final GestureDetector mGestureDetector;
    private final Launcher mLauncher;
    private final float mTouchSlop;
    private final Workspace mWorkspace;
    private final Rect mTempRect = new Rect();
    private final PointF mTouchDownPoint = new PointF();
    private int mLongPressState = 0;

    public WorkspaceTouchListener(Launcher launcher, Workspace workspace) {
        this.mLauncher = launcher;
        this.mWorkspace = workspace;
        this.mTouchSlop = ViewConfiguration.get(launcher).getScaledTouchSlop() * 2;
        this.mGestureDetector = new GestureDetector(workspace.getContext(), this);
    }

    private void maybeShowMenu() {
        if (this.mLongPressState == 1) {
            TestLogging.recordEvent("Main", "Workspace.longPress");
            if (!(AbstractFloatingView.getTopOpenView(this.mLauncher) == null && this.mLauncher.isInState(LauncherState.NORMAL))) {
                this.mLongPressState = 0;
                return;
            }
            this.mLongPressState = 2;
            this.mWorkspace.getParent().requestDisallowInterceptTouchEvent(true);
            this.mWorkspace.performHapticFeedback(0, 1);
            this.mLauncher.getStatsLogManager().logger().log(StatsLogManager.LauncherEvent.LAUNCHER_WORKSPACE_LONGPRESS);
            Launcher launcher = this.mLauncher;
            PointF pointF = this.mTouchDownPoint;
            launcher.showDefaultOptions(pointF.x, pointF.y);
        }
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final void onLongPress(MotionEvent motionEvent) {
        maybeShowMenu();
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x010e  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouch(android.view.View r11, android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.touch.WorkspaceTouchListener.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
