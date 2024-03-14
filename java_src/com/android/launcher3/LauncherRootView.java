package com.android.launcher3;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewDebug;
import android.view.WindowInsets;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.graphics.SysUiScrim;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.util.window.WindowManagerProxy;
import com.google.android.apps.nexuslauncher.qsb.QsbTransitionManager;
import java.util.Collections;
import java.util.List;
/* loaded from: classes.dex */
public class LauncherRootView extends InsettableFrameLayout {
    @ViewDebug.ExportedProperty(category = "launcher")
    private static final List SYSTEM_GESTURE_EXCLUSION_RECT = Collections.singletonList(new Rect());
    private final StatefulActivity mActivity;
    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mDisallowBackGesture;
    @ViewDebug.ExportedProperty(category = "launcher")
    private boolean mForceHideBackArrow;
    private final SysUiScrim mSysUiScrim;
    private final Rect mTempRect;
    private QsbTransitionManager mWindowStateListener;

    public LauncherRootView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempRect = new Rect();
        this.mActivity = (StatefulActivity) BaseActivity.fromContext(context);
        this.mSysUiScrim = new SysUiScrim(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        this.mSysUiScrim.draw(canvas);
        super.dispatchDraw(canvas);
    }

    public final void dispatchInsets() {
        this.mActivity.getDeviceProfile().updateInsets(this.mInsets);
        super.setInsets(this.mInsets);
    }

    public final SysUiScrim getSysUiScrim() {
        return this.mSysUiScrim;
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        StatefulActivity statefulActivity = this.mActivity;
        statefulActivity.handleConfigurationChanged(statefulActivity.getResources().getConfiguration());
        WindowInsets normalizeWindowInsets = ((WindowManagerProxy) WindowManagerProxy.INSTANCE.get(getContext())).normalizeWindowInsets(getContext(), windowInsets, this.mTempRect);
        Rect rect = this.mTempRect;
        this.mActivity.getDeviceProfile().updateInsets(rect);
        boolean z4 = !rect.equals(this.mInsets);
        setInsets(rect);
        if (z4) {
            this.mActivity.getStateManager().reapplyState(true);
        }
        return normalizeWindowInsets;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        ((Rect) SYSTEM_GESTURE_EXCLUSION_RECT.get(0)).set(i4, i5, i6, i7);
        setDisallowBackGesture(this.mDisallowBackGesture);
        this.mSysUiScrim.setSize(i6 - i4, i7 - i5);
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z4) {
        super.onWindowFocusChanged(z4);
        QsbTransitionManager qsbTransitionManager = this.mWindowStateListener;
        if (qsbTransitionManager != null) {
            if (!z4 && qsbTransitionManager.f7531g) {
                qsbTransitionManager.a();
            } else if (z4) {
                qsbTransitionManager.f7531g = false;
                if (qsbTransitionManager.f7530f) {
                    qsbTransitionManager.f7530f = false;
                    qsbTransitionManager.b(false, true);
                }
            }
        }
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i4) {
        super.onWindowVisibilityChanged(i4);
        QsbTransitionManager qsbTransitionManager = this.mWindowStateListener;
        if (qsbTransitionManager != null) {
            qsbTransitionManager.f7531g = false;
            if (qsbTransitionManager.f7530f) {
                qsbTransitionManager.f7530f = false;
                qsbTransitionManager.b(false, false);
            }
        }
    }

    public final void setDisallowBackGesture(boolean z4) {
        if (!Utilities.ATLEAST_Q || FeatureFlags.SEPARATE_RECENTS_ACTIVITY.get()) {
            return;
        }
        this.mDisallowBackGesture = z4;
        setSystemGestureExclusionRects((this.mForceHideBackArrow || z4) ? SYSTEM_GESTURE_EXCLUSION_RECT : Collections.emptyList());
    }

    public final void setForceHideBackArrow(boolean z4) {
        this.mForceHideBackArrow = z4;
        setDisallowBackGesture(this.mDisallowBackGesture);
    }

    @Override // com.android.launcher3.InsettableFrameLayout, com.android.launcher3.Insettable
    public final void setInsets(Rect rect) {
        if (rect.equals(this.mInsets)) {
            return;
        }
        super.setInsets(rect);
        this.mSysUiScrim.onInsetsChanged(rect);
    }

    public final void setWindowStateListener(QsbTransitionManager qsbTransitionManager) {
        this.mWindowStateListener = qsbTransitionManager;
    }
}
