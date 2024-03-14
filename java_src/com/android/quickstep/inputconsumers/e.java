package com.android.quickstep.inputconsumers;

import com.android.quickstep.RecentsAnimationController;
import com.android.quickstep.inputconsumers.OtherActivityInputConsumer;
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5653d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5654e;

    public /* synthetic */ e(int i4, Object obj) {
        this.f5653d = i4;
        this.f5654e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5653d) {
            case 0:
                OtherActivityInputConsumer.FinishImmediatelyHandler.a((RecentsAnimationController) this.f5654e);
                return;
            default:
                OtherActivityInputConsumer.a((OtherActivityInputConsumer) this.f5654e);
                return;
        }
    }
}
