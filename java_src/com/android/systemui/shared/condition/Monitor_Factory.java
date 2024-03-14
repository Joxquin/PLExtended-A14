package com.android.systemui.shared.condition;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class Monitor_Factory implements d3.a {
    private final d3.a executorProvider;

    public Monitor_Factory(d3.a aVar) {
        this.executorProvider = aVar;
    }

    public static Monitor_Factory create(d3.a aVar) {
        return new Monitor_Factory(aVar);
    }

    public static Monitor newInstance(Executor executor) {
        return new Monitor(executor);
    }

    @Override // d3.a
    public Monitor get() {
        return newInstance((Executor) this.executorProvider.get());
    }
}
