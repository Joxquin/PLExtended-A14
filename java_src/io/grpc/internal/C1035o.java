package io.grpc.internal;

import X2.AbstractC0121j;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: io.grpc.internal.o  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1035o extends C {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f10190e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f10191f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Object f10192g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ Object f10193h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1035o(C1041q c1041q, X2.r0 r0Var) {
        super(c1041q.f10212c.f10362f);
        c3.b bVar = c3.a.f4273b;
        this.f10190e = 1;
        this.f10193h = c1041q;
        this.f10191f = bVar;
        this.f10192g = r0Var;
    }

    @Override // io.grpc.internal.C
    public final void a() {
        switch (this.f10190e) {
            case 0:
                X2.L0 f4 = X2.L0.f2134m.f(String.format("Unable to find compressor by name %s", (String) this.f10192g));
                X2.r0 r0Var = new X2.r0();
                ((C1049t) this.f10193h).getClass();
                ((AbstractC0121j) this.f10191f).a(f4, r0Var);
                return;
            case 1:
                c3.d dVar = ((C1041q) this.f10193h).f10212c.f10358b;
                c3.c.a();
                c3.c.f4274a.getClass();
                try {
                    b();
                    return;
                } finally {
                }
            default:
                c3.d dVar2 = ((C1041q) this.f10193h).f10212c.f10358b;
                c3.c.a();
                c3.c.f4274a.getClass();
                try {
                    b();
                    return;
                } finally {
                }
        }
    }

    public final void b() {
        switch (this.f10190e) {
            case 1:
                Object obj = this.f10193h;
                if (((C1041q) obj).f10211b != null) {
                    return;
                }
                try {
                    ((C1041q) obj).f10210a.b((X2.r0) this.f10192g);
                    return;
                } catch (Throwable th) {
                    C1041q c1041q = (C1041q) this.f10193h;
                    X2.L0 f4 = X2.L0.f2127f.e(th).f("Failed to read headers");
                    c1041q.f10211b = f4;
                    c1041q.f10212c.f10366j.g(f4);
                    return;
                }
            default:
                if (((C1041q) this.f10193h).f10211b != null) {
                    io.grpc.binder.internal.e eVar = (io.grpc.binder.internal.e) this.f10192g;
                    Logger logger = C1044r0.f10234a;
                    while (true) {
                        InputStream l4 = eVar.l();
                        if (l4 == null) {
                            return;
                        }
                        try {
                            l4.close();
                        } catch (IOException e4) {
                            C1044r0.f10234a.log(Level.WARNING, "exception caught in closeQuietly", (Throwable) e4);
                        }
                    }
                } else {
                    while (true) {
                        try {
                            InputStream l5 = ((io.grpc.binder.internal.e) this.f10192g).l();
                            if (l5 == null) {
                                return;
                            }
                            Object obj2 = this.f10193h;
                            ((C1041q) obj2).f10210a.c(((C1041q) obj2).f10212c.f10357a.f2234e.b(l5));
                            l5.close();
                        } catch (Throwable th2) {
                            io.grpc.binder.internal.e eVar2 = (io.grpc.binder.internal.e) this.f10192g;
                            Logger logger2 = C1044r0.f10234a;
                            while (true) {
                                InputStream l6 = eVar2.l();
                                if (l6 == null) {
                                    C1041q c1041q2 = (C1041q) this.f10193h;
                                    X2.L0 f5 = X2.L0.f2127f.e(th2).f("Failed to read message.");
                                    c1041q2.f10211b = f5;
                                    c1041q2.f10212c.f10366j.g(f5);
                                    return;
                                }
                                try {
                                    l6.close();
                                } catch (IOException e5) {
                                    C1044r0.f10234a.log(Level.WARNING, "exception caught in closeQuietly", (Throwable) e5);
                                }
                            }
                        }
                    }
                }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1035o(C1041q c1041q, io.grpc.binder.internal.e eVar) {
        super(c1041q.f10212c.f10362f);
        c3.b bVar = c3.a.f4273b;
        this.f10190e = 2;
        this.f10193h = c1041q;
        this.f10191f = bVar;
        this.f10192g = eVar;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1035o(C1049t c1049t, AbstractC0121j abstractC0121j, String str) {
        super(c1049t.f10362f);
        this.f10190e = 0;
        this.f10193h = c1049t;
        this.f10191f = abstractC0121j;
        this.f10192g = str;
    }
}
