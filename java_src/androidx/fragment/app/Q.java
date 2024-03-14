package androidx.fragment.app;

import android.animation.Animator;
import android.view.animation.Animation;
/* loaded from: classes.dex */
public final class Q {

    /* renamed from: a  reason: collision with root package name */
    public final Animation f3323a;

    /* renamed from: b  reason: collision with root package name */
    public final Animator f3324b;

    public Q(Animation animation) {
        this.f3323a = animation;
        this.f3324b = null;
    }

    public Q(Animator animator) {
        this.f3323a = null;
        this.f3324b = animator;
    }
}
