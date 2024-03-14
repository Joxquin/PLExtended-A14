package com.android.launcher3.dragndrop;

import android.graphics.drawable.Drawable;
import android.view.View;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.statemanager.StateManager;
/* loaded from: classes.dex */
public final class LauncherDragView extends DragView implements StateManager.StateListener {
    public LauncherDragView(Launcher launcher, Drawable drawable, int i4, int i5, float f4, float f5, float f6) {
        super(launcher, drawable, i4, i5, f4, f5, f6);
    }

    @Override // com.android.launcher3.dragndrop.DragView
    public final void animateTo(int i4, int i5, Runnable runnable, int i6) {
        int[] iArr = this.mTempLoc;
        iArr[0] = i4 - this.mRegistrationX;
        iArr[1] = i5 - this.mRegistrationY;
        DragLayer dragLayer = ((Launcher) this.mActivity).getDragLayer();
        int[] iArr2 = this.mTempLoc;
        float f4 = this.mScaleOnDrop;
        dragLayer.getClass();
        dragLayer.animateViewIntoPosition(this, iArr2[0], iArr2[1], 1.0f, f4, f4, runnable, 0, i6, null);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((Launcher) this.mActivity).getStateManager().addStateListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((Launcher) this.mActivity).getStateManager().removeStateListener(this);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public final void onStateTransitionComplete(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        setVisibility((launcherState == LauncherState.NORMAL || launcherState == LauncherState.SPRING_LOADED || launcherState == LauncherState.EDIT_MODE) ? 0 : 4);
    }

    public LauncherDragView(Launcher launcher, View view, int i4, int i5, int i6, int i7, float f4, float f5, float f6) {
        super(launcher, view, i4, i5, i6, i7, f4, f5, f6);
    }
}
