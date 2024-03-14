package com.android.quickstep.inputconsumers;
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5656d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ProgressDelegateInputConsumer f5657e;

    public /* synthetic */ g(ProgressDelegateInputConsumer progressDelegateInputConsumer, int i4) {
        this.f5656d = i4;
        this.f5657e = progressDelegateInputConsumer;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5656d) {
            case 0:
                ProgressDelegateInputConsumer.b(this.f5657e);
                return;
            case 1:
                ProgressDelegateInputConsumer.a(this.f5657e);
                return;
            default:
                ProgressDelegateInputConsumer.d(this.f5657e);
                return;
        }
    }
}
