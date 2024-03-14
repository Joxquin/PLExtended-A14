package io.grpc.internal;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class o2 implements InterfaceC1055v {

    /* renamed from: a  reason: collision with root package name */
    public final p2 f10198a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ r2 f10199b;

    public o2(r2 r2Var, p2 p2Var) {
        this.f10199b = r2Var;
        this.f10198a = p2Var;
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void a() {
        r2 r2Var = this.f10199b;
        if (r2Var.e()) {
            r2Var.f10257c.execute(new m2(this, 1));
        }
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void b(X2.r0 r0Var) {
        AtomicInteger atomicInteger;
        int i4;
        int i5;
        r2.p(this.f10199b, this.f10198a);
        if (this.f10199b.f10269o.f10168f == this.f10198a) {
            q2 q2Var = this.f10199b.f10267m;
            if (q2Var != null) {
                do {
                    atomicInteger = q2Var.f10232d;
                    i4 = atomicInteger.get();
                    i5 = q2Var.f10229a;
                    if (i4 == i5) {
                        break;
                    }
                } while (!atomicInteger.compareAndSet(i4, Math.min(q2Var.f10231c + i4, i5)));
            }
            this.f10199b.f10257c.execute(new RunnableC1000e2(2, this, r0Var));
        }
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void c(io.grpc.binder.internal.e eVar) {
        C1028l2 c1028l2 = this.f10199b.f10269o;
        O2.m.k("Headers should be received prior to messages.", c1028l2.f10168f != null);
        if (c1028l2.f10168f != this.f10198a) {
            return;
        }
        this.f10199b.f10257c.execute(new RunnableC1000e2(4, this, eVar));
    }

    @Override // io.grpc.internal.InterfaceC1055v
    public final void d(X2.L0 l02, ClientStreamListener$RpcProgress clientStreamListener$RpcProgress, X2.r0 r0Var) {
        boolean z4;
        C1020j2 c1020j2;
        long nanos;
        boolean z5;
        r2 r2Var;
        C1016i2 c1016i2;
        boolean z6;
        boolean z7;
        synchronized (this.f10199b.f10263i) {
            r2 r2Var2 = this.f10199b;
            r2Var2.f10269o = r2Var2.f10269o.d(this.f10198a);
            this.f10199b.f10268n.f10381a.add(String.valueOf(l02.f2137a));
        }
        p2 p2Var = this.f10198a;
        if (p2Var.f10208c) {
            r2.p(this.f10199b, p2Var);
            if (this.f10199b.f10269o.f10168f == this.f10198a) {
                this.f10199b.f10257c.execute(new n2(this, l02, clientStreamListener$RpcProgress, r0Var, 0));
                return;
            }
            return;
        }
        if (this.f10199b.f10269o.f10168f == null) {
            boolean z8 = true;
            if (clientStreamListener$RpcProgress == ClientStreamListener$RpcProgress.REFUSED && this.f10199b.f10270p.compareAndSet(false, true)) {
                p2 s4 = this.f10199b.s(this.f10198a.f10209d, true);
                r2 r2Var3 = this.f10199b;
                if (r2Var3.f10262h) {
                    synchronized (r2Var3.f10263i) {
                        r2 r2Var4 = this.f10199b;
                        r2Var4.f10269o = r2Var4.f10269o.c(this.f10198a, s4);
                        r2 r2Var5 = this.f10199b;
                        if (r2Var5.w(r2Var5.f10269o) || this.f10199b.f10269o.f10166d.size() != 1) {
                            z8 = false;
                        }
                    }
                    if (z8) {
                        r2.p(this.f10199b, s4);
                    }
                } else {
                    s2 s2Var = r2Var3.f10260f;
                    if (s2Var == null || s2Var.f10349a == 1) {
                        r2.p(r2Var3, s4);
                    }
                }
                this.f10199b.f10256b.execute(new RunnableC1000e2(3, this, s4));
                return;
            } else if (clientStreamListener$RpcProgress == ClientStreamListener$RpcProgress.DROPPED) {
                r2 r2Var6 = this.f10199b;
                if (r2Var6.f10262h) {
                    r2Var6.v();
                }
            } else {
                this.f10199b.f10270p.set(true);
                r2 r2Var7 = this.f10199b;
                Integer num = null;
                if (r2Var7.f10262h) {
                    String str = (String) r0Var.c(r2.f10253y);
                    if (str != null) {
                        try {
                            num = Integer.valueOf(str);
                        } catch (NumberFormatException unused) {
                            num = -1;
                        }
                    }
                    r2 r2Var8 = this.f10199b;
                    boolean z9 = !r2Var8.f10261g.f10282c.contains(l02.f2137a);
                    if (r2Var8.f10267m == null || (z9 && (num == null || num.intValue() >= 0))) {
                        z6 = false;
                    } else {
                        q2 q2Var = r2Var8.f10267m;
                        while (true) {
                            AtomicInteger atomicInteger = q2Var.f10232d;
                            int i4 = atomicInteger.get();
                            if (i4 == 0) {
                                break;
                            }
                            int i5 = i4 - 1000;
                            if (atomicInteger.compareAndSet(i4, Math.max(i5, 0))) {
                                if (i5 > q2Var.f10230b) {
                                    z7 = true;
                                }
                            }
                        }
                        z7 = false;
                        z6 = !z7;
                    }
                    if (z9 || z6) {
                        z8 = false;
                    }
                    if (z8) {
                        r2.q(this.f10199b, num);
                    }
                    synchronized (this.f10199b.f10263i) {
                        r2 r2Var9 = this.f10199b;
                        r2Var9.f10269o = r2Var9.f10269o.b(this.f10198a);
                        if (z8) {
                            r2 r2Var10 = this.f10199b;
                            if (r2Var10.w(r2Var10.f10269o) || !this.f10199b.f10269o.f10166d.isEmpty()) {
                                return;
                            }
                        }
                    }
                } else {
                    s2 s2Var2 = r2Var7.f10260f;
                    long j4 = 0;
                    if (s2Var2 == null) {
                        c1020j2 = new C1020j2(0L, false);
                    } else {
                        boolean contains = s2Var2.f10354f.contains(l02.f2137a);
                        String str2 = (String) r0Var.c(r2.f10253y);
                        if (str2 != null) {
                            try {
                                num = Integer.valueOf(str2);
                            } catch (NumberFormatException unused2) {
                                num = -1;
                            }
                        }
                        if (r2Var7.f10267m == null || (!contains && (num == null || num.intValue() >= 0))) {
                            z4 = false;
                        } else {
                            q2 q2Var2 = r2Var7.f10267m;
                            while (true) {
                                AtomicInteger atomicInteger2 = q2Var2.f10232d;
                                int i6 = atomicInteger2.get();
                                if (i6 == 0) {
                                    break;
                                }
                                int i7 = i6 - 1000;
                                if (atomicInteger2.compareAndSet(i6, Math.max(i7, 0))) {
                                    if (i7 > q2Var2.f10230b) {
                                        z5 = true;
                                    }
                                }
                            }
                            z5 = false;
                            z4 = !z5;
                        }
                        if (r2Var7.f10260f.f10349a > this.f10198a.f10209d + 1 && !z4) {
                            if (num == null) {
                                if (contains) {
                                    nanos = (long) (r2.f10251A.nextDouble() * r2Var7.f10275u);
                                    s2 s2Var3 = r2Var7.f10260f;
                                    r2Var7.f10275u = Math.min((long) (r2Var7.f10275u * s2Var3.f10352d), s2Var3.f10351c);
                                    j4 = nanos;
                                }
                            } else if (num.intValue() >= 0) {
                                nanos = TimeUnit.MILLISECONDS.toNanos(num.intValue());
                                r2Var7.f10275u = r2Var7.f10260f.f10350b;
                                j4 = nanos;
                            }
                            c1020j2 = new C1020j2(j4, z8);
                        }
                        z8 = false;
                        c1020j2 = new C1020j2(j4, z8);
                    }
                    if (c1020j2.f10149a) {
                        synchronized (this.f10199b.f10263i) {
                            r2Var = this.f10199b;
                            c1016i2 = new C1016i2(r2Var.f10263i);
                            r2Var.f10273s = c1016i2;
                        }
                        c1016i2.a(r2Var.f10258d.schedule(new m2(this, 0), c1020j2.f10150b, TimeUnit.NANOSECONDS));
                        return;
                    }
                }
            }
        }
        r2.p(this.f10199b, this.f10198a);
        if (this.f10199b.f10269o.f10168f == this.f10198a) {
            this.f10199b.f10257c.execute(new n2(this, l02, clientStreamListener$RpcProgress, r0Var, 1));
        }
    }
}
