package com.android.systemui.animation;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.android.systemui.shared.R;
import java.util.Set;
/* loaded from: classes.dex */
public final class y extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public boolean f6157d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ View f6158e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Set f6159f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ boolean f6160g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Runnable f6161h;

    public y(View view, Set set, boolean z4, Runnable runnable) {
        this.f6158e = view;
        this.f6159f = set;
        this.f6160g = z4;
        this.f6161h = runnable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animation) {
        kotlin.jvm.internal.h.e(animation, "animation");
        this.f6157d = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animation) {
        Runnable runnable;
        kotlin.jvm.internal.h.e(animation, "animation");
        this.f6158e.setTag(R.id.tag_animator, null);
        Set<ViewHierarchyAnimator$Bound> set = this.f6159f;
        View view = this.f6158e;
        for (ViewHierarchyAnimator$Bound viewHierarchyAnimator$Bound : set) {
            view.setTag(viewHierarchyAnimator$Bound.c(), null);
        }
        if (this.f6160g && !this.f6157d) {
            z zVar = A.f6025a;
            z.c(this.f6158e);
        }
        if (this.f6157d || (runnable = this.f6161h) == null) {
            return;
        }
        runnable.run();
    }
}
