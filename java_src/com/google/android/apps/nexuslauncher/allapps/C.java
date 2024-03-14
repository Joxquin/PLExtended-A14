package com.google.android.apps.nexuslauncher.allapps;

import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import com.android.launcher3.logging.StatsLogManager;
/* loaded from: classes.dex */
public final class C implements WindowInsetsAnimationControlListener {

    /* renamed from: a  reason: collision with root package name */
    public final com.google.android.apps.nexuslauncher.logging.b f6511a;

    public C(com.google.android.apps.nexuslauncher.logging.b bVar) {
        this.f6511a = bVar;
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public final void onCancelled(WindowInsetsAnimationController windowInsetsAnimationController) {
        this.f6511a.a(windowInsetsAnimationController, StatsLogManager.StatsLatencyLogger.LatencyType.ATOMIC);
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public final void onFinished(WindowInsetsAnimationController windowInsetsAnimationController) {
        this.f6511a.b(windowInsetsAnimationController, StatsLogManager.StatsLatencyLogger.LatencyType.ATOMIC);
    }

    @Override // android.view.WindowInsetsAnimationControlListener
    public final void onReady(WindowInsetsAnimationController windowInsetsAnimationController, int i4) {
        this.f6511a.c(windowInsetsAnimationController, StatsLogManager.StatsLatencyLogger.LatencyType.ATOMIC);
    }
}
