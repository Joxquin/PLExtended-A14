package com.android.quickstep;

import java.util.ArrayList;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class N0 implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5496a = 1;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f5497b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Object f5498c;

    public /* synthetic */ N0(int i4, Consumer consumer) {
        this.f5497b = i4;
        this.f5498c = consumer;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5496a) {
            case 0:
                RecentsModel.b((RecentsModel) this.f5498c, this.f5497b, (ArrayList) obj);
                return;
            default:
                RecentsModel.c(this.f5497b, (Consumer) this.f5498c, (ArrayList) obj);
                return;
        }
    }

    public /* synthetic */ N0(RecentsModel recentsModel, int i4) {
        this.f5498c = recentsModel;
        this.f5497b = i4;
    }
}
