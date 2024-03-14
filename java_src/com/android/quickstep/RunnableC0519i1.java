package com.android.quickstep;

import android.content.Intent;
import com.android.quickstep.views.RecentsView;
/* renamed from: com.android.quickstep.i1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0519i1 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5645d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5646e;

    public /* synthetic */ RunnableC0519i1(int i4, Object obj) {
        this.f5645d = i4;
        this.f5646e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5645d) {
            case 0:
                ((RecentsView) this.f5646e).finishRecentsAnimation(true, false, null);
                return;
            default:
                TaskAnimationManager.lambda$preloadRecentsAnimation$0((Intent) this.f5646e);
                return;
        }
    }
}
