package com.android.quickstep;

import com.android.quickstep.TouchInteractionService;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class h2 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5639a;

    public /* synthetic */ h2(int i4) {
        this.f5639a = i4;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5639a) {
            case 0:
                TouchInteractionService.TISBinder.lambda$onOverviewToggle$4((TouchInteractionService) obj);
                return;
            case 1:
                TouchInteractionService.TISBinder.lambda$onTaskbarToggled$2((TouchInteractionService) obj);
                return;
            default:
                TouchInteractionService.TISBinder.lambda$preloadOverviewForSUWAllSet$18((TouchInteractionService) obj);
                return;
        }
    }
}
