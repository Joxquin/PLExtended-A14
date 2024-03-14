package com.android.quickstep;

import android.animation.ValueAnimator;
import android.view.ViewGroup;
import com.android.quickstep.views.RecentsView;
/* renamed from: com.android.quickstep.t  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0549t implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5782d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5783e;

    public /* synthetic */ RunnableC0549t(int i4, Object obj) {
        this.f5782d = i4;
        this.f5783e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5782d) {
            case 0:
                ((ViewGroup) this.f5783e).setAlpha(1.0f);
                return;
            case 1:
                ((ValueAnimator) this.f5783e).cancel();
                return;
            default:
                ((RecentsView) this.f5783e).resetTaskVisuals();
                return;
        }
    }
}
