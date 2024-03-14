package com.android.quickstep;

import com.android.launcher3.taskbar.TaskbarManager;
import com.android.quickstep.TouchInteractionService;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class f2 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5622a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ boolean f5623b;

    public /* synthetic */ f2(int i4, boolean z4) {
        this.f5622a = i4;
        this.f5623b = z4;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5622a) {
            case 0:
                ((TaskbarManager) obj).onLongPressHomeEnabled(this.f5623b);
                return;
            case 1:
                TouchInteractionService.TISBinder.lambda$onOverviewShown$5(this.f5623b, (TouchInteractionService) obj);
                return;
            default:
                TouchInteractionService.TISBinder.lambda$enterStageSplitFromRunningApp$17(this.f5623b, (TouchInteractionService) obj);
                return;
        }
    }
}
