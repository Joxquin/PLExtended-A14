package com.android.quickstep.interaction;

import android.os.Vibrator;
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5671d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Vibrator f5672e;

    public /* synthetic */ f(Vibrator vibrator, int i4) {
        this.f5671d = i4;
        this.f5672e = vibrator;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5671d) {
            case 0:
            default:
                this.f5672e.cancel();
                return;
        }
    }
}
