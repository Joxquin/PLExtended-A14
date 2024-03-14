package com.android.systemui.animation;

import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes.dex */
public class g implements d {
    private final d delegate;

    public g(j jVar) {
        this.delegate = jVar;
    }

    @Override // com.android.systemui.animation.l
    public final n createAnimatorState() {
        return this.delegate.createAnimatorState();
    }

    @Override // com.android.systemui.animation.l
    public final ViewGroup getLaunchContainer() {
        return this.delegate.getLaunchContainer();
    }

    @Override // com.android.systemui.animation.l
    public final View getOpeningWindowSyncView() {
        return this.delegate.getOpeningWindowSyncView();
    }

    @Override // com.android.systemui.animation.d
    public final boolean isDialogLaunch() {
        return this.delegate.isDialogLaunch();
    }

    @Override // com.android.systemui.animation.d
    public final void onLaunchAnimationCancelled(Boolean bool) {
        this.delegate.onLaunchAnimationCancelled(bool);
    }

    @Override // com.android.systemui.animation.l
    public final void onLaunchAnimationEnd(boolean z4) {
        this.delegate.onLaunchAnimationEnd(z4);
    }

    @Override // com.android.systemui.animation.l
    public final void onLaunchAnimationProgress(n state, float f4, float f5) {
        kotlin.jvm.internal.h.e(state, "state");
        this.delegate.onLaunchAnimationProgress(state, f4, f5);
    }

    @Override // com.android.systemui.animation.l
    public final void onLaunchAnimationStart(boolean z4) {
        this.delegate.onLaunchAnimationStart(z4);
    }
}
