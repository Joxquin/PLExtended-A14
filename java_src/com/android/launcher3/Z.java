package com.android.launcher3;

import android.os.Binder;
import com.android.launcher3.LauncherAnimationRunner;
/* loaded from: classes.dex */
public final /* synthetic */ class Z implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f4524d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Binder f4525e;

    public /* synthetic */ Z(Binder binder, int i4) {
        this.f4524d = i4;
        this.f4525e = binder;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f4524d) {
            case 0:
                LauncherAnimationRunner.d((LauncherAnimationRunner) this.f4525e);
                return;
            case 1:
                LauncherAnimationRunner.c((LauncherAnimationRunner) this.f4525e);
                return;
            default:
                LauncherAnimationRunner.AnimationResult.a((LauncherAnimationRunner.AnimationResult) this.f4525e);
                return;
        }
    }
}
