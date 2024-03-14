package com.android.quickstep.interaction;

import com.android.quickstep.TouchInteractionService;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5664d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5665e;

    public /* synthetic */ b(int i4, Object obj) {
        this.f5664d = i4;
        this.f5665e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5664d) {
            case 0:
                ((TouchInteractionService.TISBinder) this.f5665e).preloadOverviewForSUWAllSet();
                return;
            default:
                ((AllSetActivity) this.f5665e).onSwipeProgressUpdate();
                return;
        }
    }
}
