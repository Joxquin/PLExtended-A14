package com.android.quickstep;

import com.android.quickstep.RemoteTargetGluer;
import com.android.quickstep.views.RecentsView;
/* renamed from: com.android.quickstep.z1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0619z1 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6023d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f6024e;

    public /* synthetic */ RunnableC0619z1(int i4, Object obj) {
        this.f6023d = i4;
        this.f6024e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6023d) {
            case 0:
                TaskViewUtils.lambda$createRecentsWindowAnimator$0((RemoteTargetGluer.RemoteTargetHandle[]) this.f6024e);
                return;
            default:
                ((RecentsView) this.f6024e).redrawLiveTile();
                return;
        }
    }
}
