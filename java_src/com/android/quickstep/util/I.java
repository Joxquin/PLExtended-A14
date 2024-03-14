package com.android.quickstep.util;

import android.os.IInterface;
import com.android.quickstep.util.SplitSelectStateController;
/* loaded from: classes.dex */
public final /* synthetic */ class I implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5811d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ IInterface f5812e;

    public /* synthetic */ I(IInterface iInterface, int i4) {
        this.f5811d = i4;
        this.f5812e = iInterface;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5811d) {
            case 0:
                SplitSelectStateController.RemoteSplitLaunchAnimationRunner.d((SplitSelectStateController.RemoteSplitLaunchAnimationRunner) this.f5812e);
                return;
            default:
                SplitSelectStateController.RemoteSplitLaunchTransitionRunner.a(this.f5812e);
                return;
        }
    }
}
