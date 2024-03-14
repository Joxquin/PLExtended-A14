package io.grpc.internal;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
/* loaded from: classes.dex */
public final class V1 {

    /* renamed from: a  reason: collision with root package name */
    public final ScheduledExecutorService f10014a;

    /* renamed from: b  reason: collision with root package name */
    public final Executor f10015b;

    /* renamed from: c  reason: collision with root package name */
    public final Runnable f10016c;

    /* renamed from: d  reason: collision with root package name */
    public final O2.o f10017d;

    /* renamed from: e  reason: collision with root package name */
    public long f10018e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f10019f;

    /* renamed from: g  reason: collision with root package name */
    public ScheduledFuture f10020g;

    public V1(T0 t02, X2.P0 p02, ScheduledExecutorService scheduledExecutorService, O2.o oVar) {
        this.f10016c = t02;
        this.f10015b = p02;
        this.f10014a = scheduledExecutorService;
        this.f10017d = oVar;
        oVar.a();
    }
}
