package com.android.quickstep;

import com.android.quickstep.TouchInteractionService;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class e2 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5618a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f5619b;

    public /* synthetic */ e2(int i4, int i5) {
        this.f5618a = i5;
        this.f5619b = i4;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5618a) {
            case 0:
                TouchInteractionService.TISBinder.lambda$onSystemUiStateChanged$13(this.f5619b, (TouchInteractionService) obj);
                return;
            default:
                TouchInteractionService.TISBinder.lambda$onAssistantOverrideInvoked$12(this.f5619b, (TouchInteractionService) obj);
                return;
        }
    }
}
