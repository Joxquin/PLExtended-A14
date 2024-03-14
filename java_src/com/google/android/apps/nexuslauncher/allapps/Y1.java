package com.google.android.apps.nexuslauncher.allapps;

import android.graphics.drawable.Animatable2;
import android.graphics.drawable.Drawable;
/* loaded from: classes.dex */
public final class Y1 extends Animatable2.AnimationCallback {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Animatable2 f6978a;

    public Y1(Animatable2 animatable2) {
        this.f6978a = animatable2;
    }

    @Override // android.graphics.drawable.Animatable2.AnimationCallback
    public final void onAnimationEnd(Drawable drawable) {
        this.f6978a.start();
    }
}
