package com.android.launcher3.anim;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import java.util.function.BiConsumer;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f4552a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f4553b;

    public /* synthetic */ d(int i4, Object obj) {
        this.f4552a = i4;
        this.f4553b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f4552a) {
            case 0:
                ((Animator) obj).setInterpolator((TimeInterpolator) this.f4553b);
                return;
            default:
                AnimatorPlaybackController.a((Animator) obj, (BiConsumer) this.f4553b);
                return;
        }
    }
}
