package com.android.quickstep;

import android.view.View;
import com.android.quickstep.OverviewCommandHelper;
/* loaded from: classes.dex */
public final /* synthetic */ class Y implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5561d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5562e;

    public /* synthetic */ Y(int i4, Object obj) {
        this.f5561d = i4;
        this.f5562e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5561d) {
            case 0:
                OverviewCommandHelper.AnonymousClass1.lambda$onRecentsAnimationStart$0((AbsSwipeUpHandler) this.f5562e);
                return;
            default:
                OverviewCommandHelper.lambda$requestFocus$4((View) this.f5562e);
                return;
        }
    }
}
