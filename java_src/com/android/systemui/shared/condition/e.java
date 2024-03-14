package com.android.systemui.shared.condition;

import com.android.systemui.shared.condition.Monitor;
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6212d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f6213e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f6214f;

    public /* synthetic */ e(int i4, Object obj, Object obj2) {
        this.f6212d = i4;
        this.f6213e = obj;
        this.f6214f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f6212d) {
            case 0:
                Monitor.AnonymousClass1.a((Monitor.AnonymousClass1) this.f6213e, (Condition) this.f6214f);
                return;
            default:
                Monitor.d((Monitor) this.f6213e, (Monitor.Subscription.Token) this.f6214f);
                return;
        }
    }
}
