package X2;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes.dex */
public final class v0 {

    /* renamed from: a  reason: collision with root package name */
    public final int f2239a;

    /* renamed from: b  reason: collision with root package name */
    public final F0 f2240b;

    /* renamed from: c  reason: collision with root package name */
    public final P0 f2241c;

    /* renamed from: d  reason: collision with root package name */
    public final x0 f2242d;

    /* renamed from: e  reason: collision with root package name */
    public final ScheduledExecutorService f2243e;

    /* renamed from: f  reason: collision with root package name */
    public final AbstractC0119i f2244f;

    /* renamed from: g  reason: collision with root package name */
    public final Executor f2245g;

    public v0(Integer num, F0 f02, P0 p02, x0 x0Var, ScheduledExecutorService scheduledExecutorService, AbstractC0119i abstractC0119i, Executor executor) {
        O2.m.h(num, "defaultPort not set");
        this.f2239a = num.intValue();
        O2.m.h(f02, "proxyDetector not set");
        this.f2240b = f02;
        O2.m.h(p02, "syncContext not set");
        this.f2241c = p02;
        O2.m.h(x0Var, "serviceConfigParser not set");
        this.f2242d = x0Var;
        this.f2243e = scheduledExecutorService;
        this.f2244f = abstractC0119i;
        this.f2245g = executor;
    }

    public final String toString() {
        O2.i b4 = O2.j.b(this);
        b4.d(String.valueOf(this.f2239a), "defaultPort");
        b4.a(this.f2240b, "proxyDetector");
        b4.a(this.f2241c, "syncContext");
        b4.a(this.f2242d, "serviceConfigParser");
        b4.a(this.f2243e, "scheduledExecutorService");
        b4.a(this.f2244f, "channelLogger");
        b4.a(this.f2245g, "executor");
        return b4.toString();
    }
}
