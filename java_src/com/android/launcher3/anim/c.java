package com.android.launcher3.anim;

import android.animation.Animator;
import java.util.function.BiConsumer;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements BiConsumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4551a;

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f4551a) {
            case 0:
                ((Animator.AnimatorListener) obj).onAnimationStart((Animator) obj2);
                return;
            case 1:
                ((Animator.AnimatorListener) obj).onAnimationEnd((Animator) obj2);
                return;
            default:
                ((Animator.AnimatorListener) obj).onAnimationCancel((Animator) obj2);
                return;
        }
    }
}
