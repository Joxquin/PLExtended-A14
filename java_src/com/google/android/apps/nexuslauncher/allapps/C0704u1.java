package com.google.android.apps.nexuslauncher.allapps;

import android.animation.Animator;
import com.android.launcher3.anim.AnimationSuccessListener;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.u1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0704u1 extends AnimationSuccessListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ DeviceSearchInputView f7228d;

    public C0704u1(DeviceSearchInputView deviceSearchInputView) {
        this.f7228d = deviceSearchInputView;
    }

    @Override // com.android.launcher3.anim.AnimationSuccessListener
    public final void onAnimationSuccess(Animator animator) {
        this.f7228d.resetSearch();
        this.f7228d.f6531j.performClick();
    }
}
