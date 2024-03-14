package v3;

import com.android.launcher3.util.C0479l;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.locks.LockSupport;
import kotlinx.coroutines.D;
import kotlinx.coroutines.internal.E;
import kotlinx.coroutines.internal.z;
import kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState;
import s.C1391a;
/* loaded from: classes.dex */
public final class b implements Executor, Closeable {

    /* renamed from: n  reason: collision with root package name */
    public static final E f12653n = new E("NOT_IN_STACK");

    /* renamed from: d  reason: collision with root package name */
    public final int f12654d;

    /* renamed from: e  reason: collision with root package name */
    public final int f12655e;

    /* renamed from: f  reason: collision with root package name */
    public final long f12656f;

    /* renamed from: g  reason: collision with root package name */
    public final String f12657g;

    /* renamed from: h  reason: collision with root package name */
    public final e f12658h;

    /* renamed from: i  reason: collision with root package name */
    public final e f12659i;

    /* renamed from: j  reason: collision with root package name */
    public final t3.e f12660j;

    /* renamed from: k  reason: collision with root package name */
    public final z f12661k;

    /* renamed from: l  reason: collision with root package name */
    public final t3.e f12662l;

    /* renamed from: m  reason: collision with root package name */
    public final t3.b f12663m;

    public b(int i4, int i5, long j4, String schedulerName) {
        kotlin.jvm.internal.h.e(schedulerName, "schedulerName");
        this.f12654d = i4;
        this.f12655e = i5;
        this.f12656f = j4;
        this.f12657g = schedulerName;
        if (!(i4 >= 1)) {
            throw new IllegalArgumentException(("Core pool size " + i4 + " should be at least 1").toString());
        }
        if (!(i5 >= i4)) {
            throw new IllegalArgumentException(C0479l.a("Max pool size ", i5, " should be greater than or equals to core pool size ", i4).toString());
        }
        if (!(i5 <= 2097150)) {
            throw new IllegalArgumentException(("Max pool size " + i5 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (!(j4 > 0)) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j4 + " must be positive").toString());
        }
        this.f12658h = new e();
        this.f12659i = new e();
        this.f12660j = t3.c.c(0L);
        this.f12661k = new z((i4 + 1) * 2);
        this.f12662l = t3.c.c(i4 << 42);
        this.f12663m = t3.c.a(false);
    }

    public final int a() {
        synchronized (this.f12661k) {
            if (this.f12663m.f12357b != 0) {
                return -1;
            }
            long j4 = this.f12662l.f12363b;
            int i4 = (int) (j4 & 2097151);
            int i5 = i4 - ((int) ((j4 & 4398044413952L) >> 21));
            if (i5 < 0) {
                i5 = 0;
            }
            if (i5 >= this.f12654d) {
                return 0;
            }
            if (i4 >= this.f12655e) {
                return 0;
            }
            int i6 = ((int) (this.f12662l.f12363b & 2097151)) + 1;
            if (i6 > 0 && this.f12661k.b(i6) == null) {
                a aVar = new a(this, i6);
                this.f12661k.c(i6, aVar);
                t3.e eVar = this.f12662l;
                eVar.getClass();
                long incrementAndGet = t3.e.f12361c.incrementAndGet(eVar);
                t3.g gVar = t3.g.f12367a;
                t3.h hVar = eVar.f12362a;
                if (hVar != gVar) {
                    hVar.getClass();
                    t3.h.a("incAndGet():" + incrementAndGet);
                }
                if (i6 == ((int) (2097151 & incrementAndGet))) {
                    int i7 = i5 + 1;
                    aVar.start();
                    return i7;
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
    }

    public final void b(Runnable block, j taskContext, boolean z4) {
        i lVar;
        kotlin.jvm.internal.h.e(block, "block");
        kotlin.jvm.internal.h.e(taskContext, "taskContext");
        m.f12678f.getClass();
        long nanoTime = System.nanoTime();
        if (block instanceof i) {
            lVar = (i) block;
            lVar.f12669d = nanoTime;
            lVar.f12670e = taskContext;
        } else {
            lVar = new l(block, nanoTime, taskContext);
        }
        boolean z5 = false;
        boolean z6 = lVar.f12670e.b() == 1;
        long a4 = z6 ? this.f12662l.a(2097152L) : 0L;
        Thread currentThread = Thread.currentThread();
        a aVar = currentThread instanceof a ? (a) currentThread : null;
        if (aVar == null || !kotlin.jvm.internal.h.a(aVar.f12652l, this)) {
            aVar = null;
        }
        if (aVar != null && aVar.f12646f != CoroutineScheduler$WorkerState.TERMINATED && (lVar.f12670e.b() != 0 || aVar.f12646f != CoroutineScheduler$WorkerState.BLOCKING)) {
            aVar.f12651k = true;
            o oVar = aVar.f12644d;
            oVar.getClass();
            if (z4) {
                lVar = oVar.a(lVar);
            } else {
                i iVar = (i) oVar.f12683b.b(lVar);
                lVar = iVar == null ? null : oVar.a(iVar);
            }
        }
        if (lVar != null) {
            if (!(lVar.f12670e.b() == 1 ? this.f12659i.a(lVar) : this.f12658h.a(lVar))) {
                throw new RejectedExecutionException(C1391a.a(this.f12657g, " was terminated"));
            }
        }
        if (z4 && aVar != null) {
            z5 = true;
        }
        if (z6) {
            if (z5 || e() || d(a4)) {
                return;
            }
            e();
        } else if (z5 || e() || d(this.f12662l.f12363b)) {
        } else {
            e();
        }
    }

    public final void c(a worker, int i4, int i5) {
        kotlin.jvm.internal.h.e(worker, "worker");
        t3.e eVar = this.f12660j;
        while (true) {
            long j4 = eVar.f12363b;
            int i6 = (int) (2097151 & j4);
            long j5 = (2097152 + j4) & (-2097152);
            if (i6 == i4) {
                if (i5 == 0) {
                    Object c4 = worker.c();
                    while (true) {
                        if (c4 == f12653n) {
                            i6 = -1;
                            break;
                        } else if (c4 == null) {
                            i6 = 0;
                            break;
                        } else {
                            a aVar = (a) c4;
                            int b4 = aVar.b();
                            if (b4 != 0) {
                                i6 = b4;
                                break;
                            }
                            c4 = aVar.c();
                        }
                    }
                } else {
                    i6 = i5;
                }
            }
            if (i6 >= 0 && this.f12660j.b(j4, j5 | i6)) {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x009e, code lost:
        if (r1 == null) goto L60;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0079 A[LOOP:0: B:22:0x0034->B:36:0x0079, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x007c A[EDGE_INSN: B:67:0x007c->B:37:0x007c ?: BREAK  , SYNTHETIC] */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void close() {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v3.b.close():void");
    }

    public final boolean d(long j4) {
        int i4 = ((int) (2097151 & j4)) - ((int) ((j4 & 4398044413952L) >> 21));
        if (i4 < 0) {
            i4 = 0;
        }
        if (i4 < this.f12654d) {
            int a4 = a();
            if (a4 == 1 && this.f12654d > 1) {
                a();
            }
            if (a4 > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean e() {
        a aVar;
        E e4;
        int i4;
        do {
            t3.e eVar = this.f12660j;
            while (true) {
                long j4 = eVar.f12363b;
                aVar = (a) this.f12661k.b((int) (2097151 & j4));
                if (aVar != null) {
                    long j5 = (2097152 + j4) & (-2097152);
                    Object c4 = aVar.c();
                    while (true) {
                        e4 = f12653n;
                        if (c4 == e4) {
                            i4 = -1;
                            break;
                        } else if (c4 == null) {
                            i4 = 0;
                            break;
                        } else {
                            a aVar2 = (a) c4;
                            i4 = aVar2.b();
                            if (i4 != 0) {
                                break;
                            }
                            c4 = aVar2.c();
                        }
                    }
                    if (i4 >= 0 && this.f12660j.b(j4, j5 | i4)) {
                        aVar.g(e4);
                        break;
                    }
                } else {
                    aVar = null;
                    break;
                }
            }
            if (aVar == null) {
                return false;
            }
        } while (!aVar.f12647g.a(-1, 0));
        LockSupport.unpark(aVar);
        return true;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable command) {
        kotlin.jvm.internal.h.e(command, "command");
        b(command, m.f12679g, false);
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        int a4 = this.f12661k.a();
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 1; i9 < a4; i9++) {
            a aVar = (a) this.f12661k.b(i9);
            if (aVar != null) {
                o oVar = aVar.f12644d;
                Object obj = oVar.f12683b.f12366b;
                int i10 = oVar.f12684c.f12360b - oVar.f12685d.f12360b;
                if (obj != null) {
                    i10++;
                }
                int ordinal = aVar.f12646f.ordinal();
                if (ordinal == 0) {
                    i4++;
                    arrayList.add(i10 + "c");
                } else if (ordinal == 1) {
                    i5++;
                    arrayList.add(i10 + "b");
                } else if (ordinal == 2) {
                    i6++;
                } else if (ordinal == 3) {
                    i7++;
                    if (i10 > 0) {
                        arrayList.add(i10 + "d");
                    }
                } else if (ordinal == 4) {
                    i8++;
                }
            }
        }
        long j4 = this.f12662l.f12363b;
        return this.f12657g + "@" + D.b(this) + "[Pool Size {core = " + this.f12654d + ", max = " + this.f12655e + "}, Worker States {CPU = " + i4 + ", blocking = " + i5 + ", parked = " + i6 + ", dormant = " + i7 + ", terminated = " + i8 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f12658h.b() + ", global blocking queue size = " + this.f12659i.b() + ", Control State {created workers= " + ((int) (j4 & 2097151)) + ", blocking tasks = " + ((int) ((4398044413952L & j4) >> 21)) + ", CPUs acquired = " + (this.f12654d - ((int) ((j4 & 9223367638808264704L) >> 42))) + "}]";
    }
}
