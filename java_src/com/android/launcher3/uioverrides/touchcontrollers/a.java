package com.android.launcher3.uioverrides.touchcontrollers;

import com.android.quickstep.views.RecentsView;
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5248d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RecentsView f5249e;

    public /* synthetic */ a(RecentsView recentsView, int i4) {
        this.f5248d = i4;
        this.f5249e = recentsView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5248d) {
            case 0:
                this.f5249e.redrawLiveTile();
                return;
            default:
                this.f5249e.finishRecentsAnimation(true, null);
                return;
        }
    }
}
