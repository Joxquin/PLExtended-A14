package io.grpc.internal;

import java.util.IdentityHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public final class G2 {

    /* renamed from: d  reason: collision with root package name */
    public static final G2 f9884d = new G2(new C2());

    /* renamed from: a  reason: collision with root package name */
    public final IdentityHashMap f9885a = new IdentityHashMap();

    /* renamed from: b  reason: collision with root package name */
    public final C2 f9886b;

    /* renamed from: c  reason: collision with root package name */
    public ScheduledExecutorService f9887c;

    public G2(C2 c22) {
        this.f9886b = c22;
    }

    public static Object a(F2 f22) {
        Object obj;
        G2 g22 = f9884d;
        synchronized (g22) {
            E2 e22 = (E2) g22.f9885a.get(f22);
            if (e22 == null) {
                C1033n0 c1033n0 = (C1033n0) f22;
                e22 = new E2(c1033n0.a());
                g22.f9885a.put(c1033n0, e22);
            }
            ScheduledFuture scheduledFuture = e22.f9868c;
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
                e22.f9868c = null;
            }
            e22.f9867b++;
            obj = e22.f9866a;
        }
        return obj;
    }

    public static void b(F2 f22, Object obj) {
        G2 g22 = f9884d;
        synchronized (g22) {
            E2 e22 = (E2) g22.f9885a.get(f22);
            if (e22 == null) {
                throw new IllegalArgumentException("No cached instance found for " + f22);
            }
            O2.m.b("Releasing the wrong instance", obj == e22.f9866a);
            O2.m.k("Refcount has already reached zero", e22.f9867b > 0);
            int i4 = e22.f9867b - 1;
            e22.f9867b = i4;
            if (i4 == 0) {
                O2.m.k("Destroy task already scheduled", e22.f9868c == null);
                if (g22.f9887c == null) {
                    g22.f9886b.getClass();
                    g22.f9887c = Executors.newSingleThreadScheduledExecutor(C1044r0.b("grpc-shared-destroyer-%d"));
                }
                e22.f9868c = g22.f9887c.schedule(new P0(new D2(g22, e22, f22, obj)), 1L, TimeUnit.SECONDS);
            }
        }
    }
}
