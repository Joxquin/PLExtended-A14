package com.google.android.apps.nexuslauncher.qsb;

import W1.q;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.statemanager.StateManager;
import y0.e;
/* loaded from: classes.dex */
public final class QsbTransitionManager implements StateManager.StateListener {

    /* renamed from: d  reason: collision with root package name */
    public final Launcher f7528d;

    /* renamed from: e  reason: collision with root package name */
    public AnimatorSet f7529e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f7530f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f7531g;

    public QsbTransitionManager(Launcher launcher) {
        this.f7528d = launcher;
        launcher.getStateManager().addStateListener(this);
        launcher.getRootView().setWindowStateListener(this);
    }

    public final void a() {
        this.f7531g = false;
        this.f7530f = true;
        b(true, true);
    }

    public final void b(boolean z4, boolean z5) {
        AnimatorSet animatorSet = this.f7529e;
        if (animatorSet != null) {
            animatorSet.cancel();
            this.f7529e = null;
        }
        Launcher launcher = this.f7528d;
        DragLayer dragLayer = launcher.getDragLayer();
        if (launcher.isInState(LauncherState.ALL_APPS)) {
            dragLayer.setAlpha(1.0f);
            dragLayer.setTranslationY(0.0f);
            return;
        }
        AnimatorSet animatorSet2 = new AnimatorSet();
        this.f7529e = animatorSet2;
        animatorSet2.addListener(new q(this));
        if (z4) {
            this.f7529e.play(ObjectAnimator.ofFloat(dragLayer, View.ALPHA, 0.0f));
            ObjectAnimator ofFloat = ObjectAnimator.ofFloat(dragLayer, View.TRANSLATION_Y, (-launcher.getHotseat().getHeight()) / 2);
            ofFloat.setInterpolator(e.f12957u);
            this.f7529e.play(ofFloat);
            this.f7529e.setDuration(200L);
        } else {
            this.f7529e.play(ObjectAnimator.ofFloat(dragLayer, View.ALPHA, 1.0f));
            ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(dragLayer, View.TRANSLATION_Y, 0.0f);
            ofFloat2.setInterpolator(e.f12962z);
            this.f7529e.play(ofFloat2);
            this.f7529e.setDuration(200L);
        }
        this.f7529e.start();
        if (z5) {
            return;
        }
        this.f7529e.end();
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public final void onStateTransitionComplete(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        if (!this.f7530f || launcherState == LauncherState.ALL_APPS || this.f7528d.hasWindowFocus()) {
            return;
        }
        b(true, false);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public final /* bridge */ /* synthetic */ void onStateTransitionStart(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
    }
}
