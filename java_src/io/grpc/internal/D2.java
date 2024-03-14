package io.grpc.internal;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes.dex */
public final class D2 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ E2 f9855d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ F2 f9856e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f9857f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ G2 f9858g;

    public D2(G2 g22, E2 e22, F2 f22, Object obj) {
        this.f9858g = g22;
        this.f9855d = e22;
        this.f9856e = f22;
        this.f9857f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9858g) {
            if (this.f9855d.f9867b == 0) {
                F2 f22 = this.f9856e;
                Object obj = this.f9857f;
                switch (((C1033n0) f22).f10180a) {
                    case 0:
                        ((ExecutorService) ((Executor) obj)).shutdown();
                        break;
                    default:
                        ((ScheduledExecutorService) obj).shutdown();
                        break;
                }
                this.f9858g.f9885a.remove(this.f9856e);
                if (this.f9858g.f9885a.isEmpty()) {
                    this.f9858g.f9887c.shutdown();
                    this.f9858g.f9887c = null;
                }
            }
        }
    }
}
