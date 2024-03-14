package com.google.android.apps.nexuslauncher.allapps;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.util.Executors;
/* loaded from: classes.dex */
public final class K extends AnimatorListenerAdapter {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0719y0 f6605d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ ExtendedEditText f6606e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ float f6607f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ P f6608g;

    public K(P p4, U u4, ExtendedEditText extendedEditText, float f4) {
        this.f6608g = p4;
        this.f6605d = u4;
        this.f6606e = extendedEditText;
        this.f6607f = f4;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        if (this.f6605d.m()) {
            this.f6606e.showKeyboard(true);
        }
        L l4 = this.f6608g.f6669e;
        l4.f6615a = (int) (this.f6607f * 0.5f);
        l4.a(1);
        l4.a(2);
        Executors.MAIN_EXECUTOR.getHandler().postDelayed(new J(0, l4), 1500L);
    }
}
