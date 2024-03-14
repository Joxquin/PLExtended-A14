package com.google.common.util.concurrent;

import R2.j;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class b {

    /* renamed from: d  reason: collision with root package name */
    public static final b f8474d = new b();

    /* renamed from: a  reason: collision with root package name */
    public final Runnable f8475a;

    /* renamed from: b  reason: collision with root package name */
    public final Executor f8476b;

    /* renamed from: c  reason: collision with root package name */
    public b f8477c;

    public b(j jVar) {
        DirectExecutor directExecutor = DirectExecutor.f8471d;
        this.f8475a = jVar;
        this.f8476b = directExecutor;
    }

    public b() {
        this.f8475a = null;
        this.f8476b = null;
    }
}
