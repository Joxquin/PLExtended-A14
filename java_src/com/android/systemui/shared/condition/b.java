package com.android.systemui.shared.condition;

import com.android.systemui.shared.condition.Monitor;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f6204a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Monitor f6205b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Monitor.Subscription.Token f6206c;

    public /* synthetic */ b(Monitor monitor, Monitor.Subscription.Token token, int i4) {
        this.f6204a = i4;
        this.f6205b = monitor;
        this.f6206c = token;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f6204a) {
            case 0:
                this.f6205b.lambda$removeSubscription$3(this.f6206c, (Condition) obj);
                return;
            default:
                this.f6205b.lambda$addSubscription$1(this.f6206c, (Condition) obj);
                return;
        }
    }
}
