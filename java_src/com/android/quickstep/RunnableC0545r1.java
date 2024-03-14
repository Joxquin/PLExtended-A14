package com.android.quickstep;

import com.android.quickstep.TaskShortcutFactory;
import com.android.quickstep.views.RecentsView;
/* renamed from: com.android.quickstep.r1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0545r1 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5775d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TaskShortcutFactory.FreeformSystemShortcut f5776e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ RecentsView f5777f;

    public /* synthetic */ RunnableC0545r1(TaskShortcutFactory.FreeformSystemShortcut freeformSystemShortcut, RecentsView recentsView, int i4) {
        this.f5775d = i4;
        this.f5776e = freeformSystemShortcut;
        this.f5777f = recentsView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5775d) {
            case 0:
                this.f5776e.lambda$onClick$0(this.f5777f);
                return;
            default:
                this.f5776e.lambda$onClick$1(this.f5777f);
                return;
        }
    }
}
