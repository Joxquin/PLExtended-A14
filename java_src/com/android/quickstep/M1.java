package com.android.quickstep;

import com.android.quickstep.inputconsumers.OtherActivityInputConsumer;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class M1 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5493a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ TouchInteractionService f5494b;

    public /* synthetic */ M1(int i4, TouchInteractionService touchInteractionService) {
        this.f5493a = i4;
        this.f5494b = touchInteractionService;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5493a) {
            case 0:
                this.f5494b.onConsumerInactive((OtherActivityInputConsumer) obj);
                return;
            default:
                this.f5494b.onOverviewTargetChange(((Boolean) obj).booleanValue());
                return;
        }
    }
}
