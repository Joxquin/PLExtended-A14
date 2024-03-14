package com.android.quickstep;

import android.window.BackMotionEvent;
import com.android.quickstep.LauncherBackAnimationController;
/* loaded from: classes.dex */
public final /* synthetic */ class P implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5505d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ LauncherBackAnimationController.AnonymousClass1 f5506e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ BackMotionEvent f5507f;

    public /* synthetic */ P(LauncherBackAnimationController.AnonymousClass1 anonymousClass1, BackMotionEvent backMotionEvent, int i4) {
        this.f5505d = i4;
        this.f5506e = anonymousClass1;
        this.f5507f = backMotionEvent;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5505d) {
            case 0:
                this.f5506e.lambda$onBackStarted$4(this.f5507f);
                return;
            default:
                this.f5506e.lambda$onBackProgressed$2(this.f5507f);
                return;
        }
    }
}
