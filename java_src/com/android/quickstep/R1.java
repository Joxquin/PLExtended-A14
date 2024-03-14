package com.android.quickstep;

import com.android.launcher3.taskbar.TaskbarManager;
import com.android.quickstep.TouchInteractionService;
/* loaded from: classes.dex */
public final /* synthetic */ class R1 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5517d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f5518e;

    public /* synthetic */ R1(int i4, Object obj) {
        this.f5517d = i4;
        this.f5518e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5517d) {
            case 0:
                ((TaskbarManager) this.f5518e).onUserUnlocked();
                return;
            default:
                ((TouchInteractionService.TISBinder) this.f5518e).lambda$onTaskbarToggled$3();
                return;
        }
    }
}
