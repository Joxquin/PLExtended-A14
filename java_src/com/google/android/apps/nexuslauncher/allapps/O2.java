package com.google.android.apps.nexuslauncher.allapps;

import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.animation.Interpolator;
import com.android.launcher3.util.Executors;
/* loaded from: classes.dex */
public final class O2 implements WindowInsetsController.OnControllableInsetsChangedListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Interpolator f6660a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ F f6661b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ TaskbarToastSessionController f6662c;

    public O2(Interpolator interpolator, F f4, TaskbarToastSessionController taskbarToastSessionController) {
        this.f6660a = interpolator;
        this.f6661b = f4;
        this.f6662c = taskbarToastSessionController;
    }

    @Override // android.view.WindowInsetsController.OnControllableInsetsChangedListener
    public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController, int i4) {
        if ((i4 & WindowInsets.Type.ime()) != 0) {
            windowInsetsController.controlWindowInsetsAnimation(WindowInsets.Type.ime(), -1L, this.f6660a, null, this.f6661b);
            Executors.MAIN_EXECUTOR.post(new M2(1, this.f6662c));
        }
    }
}
