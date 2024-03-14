package com.android.systemui.animation;

import android.util.Log;
/* renamed from: com.android.systemui.animation.a  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0620a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6036d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f6037e;

    public /* synthetic */ RunnableC0620a(int i4, Object obj) {
        this.f6036d = i4;
        this.f6037e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6036d) {
            case 0:
                C0622c c0622c = (C0622c) this.f6037e;
                if (c0622c.f6057n) {
                    return;
                }
                Log.i("ActivityLaunchAnimator", "Remote animation timed out");
                c0622c.f6056m = true;
                if (f.f6062c) {
                    Log.d("ActivityLaunchAnimator", "Calling controller.onLaunchAnimationCancelled() [animation timed out]");
                }
                c0622c.f6044a.onLaunchAnimationCancelled(null);
                e eVar = c0622c.f6046c;
                if (eVar != null) {
                    eVar.b();
                    return;
                }
                return;
            case 1:
                if (((C0622c) this.f6037e) == null) {
                    Log.wtf("ActivityLaunchAnimator", "onAnimationCancelled called after completion");
                }
                C0622c c0622c2 = (C0622c) this.f6037e;
                if (c0622c2 != null) {
                    c0622c2.onAnimationCancelled();
                    return;
                }
                return;
            default:
                ((ActivityLaunchAnimator$Runner) this.f6037e).setDelegate();
                return;
        }
    }
}
