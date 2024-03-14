package kotlinx.coroutines;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.locks.LockSupport;
/* loaded from: classes.dex */
public abstract class Q extends N implements G {

    /* renamed from: i  reason: collision with root package name */
    public final t3.f f11318i = t3.c.d(null);

    /* renamed from: j  reason: collision with root package name */
    public final t3.f f11319j = t3.c.d(null);

    /* renamed from: k  reason: collision with root package name */
    public final t3.b f11320k = t3.c.a(false);

    public static final boolean H(E e4) {
        return e4.f11320k.f12357b != 0;
    }

    @Override // kotlinx.coroutines.AbstractC1258x
    public final void B(kotlin.coroutines.i context, Runnable block) {
        kotlin.jvm.internal.h.e(context, "context");
        kotlin.jvm.internal.h.e(block, "block");
        I(block);
    }

    public void I(Runnable task) {
        kotlin.jvm.internal.h.e(task, "task");
        if (!J(task)) {
            E.f11302l.I(task);
            return;
        }
        Thread K3 = K();
        if (Thread.currentThread() != K3) {
            LockSupport.unpark(K3);
        }
    }

    public final boolean J(Runnable runnable) {
        t3.f fVar = this.f11318i;
        while (true) {
            Object obj = fVar.f12366b;
            if (this.f11320k.f12357b != 0) {
                return false;
            }
            if (obj == null) {
                if (this.f11318i.a(null, runnable)) {
                    return true;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.s) {
                kotlinx.coroutines.internal.s sVar = (kotlinx.coroutines.internal.s) obj;
                int a4 = sVar.a(runnable);
                if (a4 == 0) {
                    return true;
                }
                if (a4 == 1) {
                    this.f11318i.a(obj, sVar.c());
                } else if (a4 == 2) {
                    return false;
                }
            } else if (obj == S.f11322b) {
                return false;
            } else {
                kotlinx.coroutines.internal.s sVar2 = new kotlinx.coroutines.internal.s(8, true);
                sVar2.a((Runnable) obj);
                sVar2.a(runnable);
                if (this.f11318i.a(obj, sVar2)) {
                    return true;
                }
            }
        }
    }

    public abstract Thread K();

    public final boolean L() {
        kotlin.collections.j jVar = this.f11314h;
        if (jVar != null ? jVar.isEmpty() : true) {
            P p4 = (P) this.f11319j.f12366b;
            if (p4 != null) {
                if (!(p4.f11451b.f12360b == 0)) {
                    return false;
                }
            }
            Object obj = this.f11318i.f12366b;
            if (obj == null) {
                return true;
            }
            if (obj instanceof kotlinx.coroutines.internal.s) {
                long j4 = ((kotlinx.coroutines.internal.s) obj).f11493e.f12363b;
                if (((int) ((1073741823 & j4) >> 0)) == ((int) ((j4 & 1152921503533105152L) >> 30))) {
                    return true;
                }
            } else if (obj == S.f11322b) {
                return true;
            }
            return false;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [kotlinx.coroutines.internal.J[]] */
    /* JADX WARN: Type inference failed for: r12v0, types: [kotlinx.coroutines.N, kotlinx.coroutines.Q] */
    /* JADX WARN: Type inference failed for: r4v3 */
    public final long M() {
        Runnable runnable;
        O o4;
        kotlinx.coroutines.internal.J b4;
        if (G()) {
            return 0L;
        }
        P p4 = (P) this.f11319j.f12366b;
        if (p4 != null) {
            if (!(p4.f11451b.f12360b == 0)) {
                long nanoTime = System.nanoTime();
                do {
                    synchronized (p4) {
                        kotlinx.coroutines.internal.J[] jArr = p4.f11450a;
                        O o5 = jArr != null ? jArr[0] : null;
                        if (o5 == null) {
                            b4 = null;
                        } else {
                            O o6 = o5;
                            b4 = ((nanoTime - o6.f11315d) > 0L ? 1 : ((nanoTime - o6.f11315d) == 0L ? 0 : -1)) >= 0 ? J(o6) : false ? p4.b(0) : null;
                        }
                    }
                } while (((O) b4) != null);
            }
        }
        t3.f fVar = this.f11318i;
        while (true) {
            Object obj = fVar.f12366b;
            if (obj == null) {
                break;
            } else if (obj instanceof kotlinx.coroutines.internal.s) {
                kotlinx.coroutines.internal.s sVar = (kotlinx.coroutines.internal.s) obj;
                Object d4 = sVar.d();
                if (d4 != kotlinx.coroutines.internal.s.f11488g) {
                    runnable = (Runnable) d4;
                    break;
                }
                this.f11318i.a(obj, sVar.c());
            } else if (obj == S.f11322b) {
                break;
            } else if (this.f11318i.a(obj, null)) {
                runnable = (Runnable) obj;
                break;
            }
        }
        runnable = null;
        if (runnable != null) {
            runnable.run();
            return 0L;
        }
        kotlin.collections.j jVar = this.f11314h;
        if (((jVar == null || jVar.isEmpty()) ? Long.MAX_VALUE : 0L) == 0) {
            return 0L;
        }
        Object obj2 = this.f11318i.f12366b;
        if (obj2 != null) {
            if (!(obj2 instanceof kotlinx.coroutines.internal.s)) {
                if (obj2 != S.f11322b) {
                    return 0L;
                }
                return Long.MAX_VALUE;
            }
            long j4 = ((kotlinx.coroutines.internal.s) obj2).f11493e.f12363b;
            if (!(((int) ((1073741823 & j4) >> 0)) == ((int) ((j4 & 1152921503533105152L) >> 30)))) {
                return 0L;
            }
        }
        P p5 = (P) this.f11319j.f12366b;
        if (p5 != null) {
            synchronized (p5) {
                ?? r02 = p5.f11450a;
                o4 = r02 != null ? r02[0] : null;
            }
            O o7 = o4;
            if (o7 != null) {
                long nanoTime2 = o7.f11315d - System.nanoTime();
                if (nanoTime2 < 0) {
                    return 0L;
                }
                return nanoTime2;
            }
        }
        return Long.MAX_VALUE;
    }

    public void N(long j4, O o4) {
        int g4;
        Thread K3;
        E e4 = E.f11302l;
        e4.getClass();
        if (e4.f11320k.f12357b != 0) {
            g4 = 1;
        } else {
            P p4 = (P) e4.f11319j.f12366b;
            if (p4 == null) {
                e4.f11319j.a(null, new P(j4));
                Object obj = e4.f11319j.f12366b;
                kotlin.jvm.internal.h.b(obj);
                p4 = (P) obj;
            }
            g4 = o4.g(j4, p4, e4);
        }
        if (g4 != 0) {
            if (g4 == 1) {
                throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
            }
            if (g4 != 2) {
                throw new IllegalStateException("unexpected result".toString());
            }
            return;
        }
        P p5 = (P) e4.f11319j.f12366b;
        if (p5 != null) {
            synchronized (p5) {
                kotlinx.coroutines.internal.J[] jArr = p5.f11450a;
                r3 = jArr != null ? jArr[0] : null;
            }
            r3 = (O) r3;
        }
        if (!(r3 == o4) || Thread.currentThread() == (K3 = e4.K())) {
            return;
        }
        LockSupport.unpark(K3);
    }

    @Override // kotlinx.coroutines.N
    public void shutdown() {
        kotlinx.coroutines.internal.J b4;
        s0.f11512a.set(null);
        this.f11320k.b();
        t3.f fVar = this.f11318i;
        while (true) {
            Object obj = fVar.f12366b;
            if (obj == null) {
                if (this.f11318i.a(null, S.f11322b)) {
                    break;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.s) {
                ((kotlinx.coroutines.internal.s) obj).b();
                break;
            } else if (obj == S.f11322b) {
                break;
            } else {
                kotlinx.coroutines.internal.s sVar = new kotlinx.coroutines.internal.s(8, true);
                sVar.a((Runnable) obj);
                if (this.f11318i.a(obj, sVar)) {
                    break;
                }
            }
        }
        do {
        } while (M() <= 0);
        long nanoTime = System.nanoTime();
        while (true) {
            P p4 = (P) this.f11319j.f12366b;
            if (p4 == null) {
                return;
            }
            synchronized (p4) {
                b4 = p4.f11451b.f12360b > 0 ? p4.b(0) : null;
            }
            O o4 = (O) b4;
            if (o4 == null) {
                return;
            }
            N(nanoTime, o4);
        }
    }
}
