package com.android.quickstep.interaction;

import android.animation.Animator;
/* loaded from: classes.dex */
public final /* synthetic */ class w implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5701d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5702e;

    public /* synthetic */ w(int i4, Object obj) {
        this.f5701d = i4;
        this.f5702e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5701d) {
            case 0:
                ((TutorialFragment) this.f5702e).continueTutorial();
                return;
            default:
                ((Animator) this.f5702e).start();
                return;
        }
    }
}
