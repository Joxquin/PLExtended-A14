package v3;

import java.util.concurrent.locks.LockSupport;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.internal.E;
import kotlinx.coroutines.scheduling.CoroutineScheduler$WorkerState;
/* loaded from: classes.dex */
public final class a extends Thread {

    /* renamed from: d  reason: collision with root package name */
    public final o f12644d;

    /* renamed from: e  reason: collision with root package name */
    public final Ref$ObjectRef f12645e;

    /* renamed from: f  reason: collision with root package name */
    public CoroutineScheduler$WorkerState f12646f;

    /* renamed from: g  reason: collision with root package name */
    public final t3.d f12647g;

    /* renamed from: h  reason: collision with root package name */
    public long f12648h;

    /* renamed from: i  reason: collision with root package name */
    public long f12649i;
    private volatile int indexInArray;

    /* renamed from: j  reason: collision with root package name */
    public int f12650j;

    /* renamed from: k  reason: collision with root package name */
    public boolean f12651k;

    /* renamed from: l  reason: collision with root package name */
    public final /* synthetic */ b f12652l;
    private volatile Object nextParkedWorker;

    public a(b bVar, int i4) {
        this.f12652l = bVar;
        setDaemon(true);
        this.f12644d = new o();
        this.f12645e = new Ref$ObjectRef();
        this.f12646f = CoroutineScheduler$WorkerState.DORMANT;
        this.f12647g = t3.c.b(0);
        this.nextParkedWorker = b.f12653n;
        this.f12650j = o3.d.f11877d.a();
        f(i4);
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:78:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final v3.i a(boolean r11) {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v3.a.a(boolean):v3.i");
    }

    public final int b() {
        return this.indexInArray;
    }

    public final Object c() {
        return this.nextParkedWorker;
    }

    public final int d(int i4) {
        int i5 = this.f12650j;
        int i6 = i5 ^ (i5 << 13);
        int i7 = i6 ^ (i6 >> 17);
        int i8 = i7 ^ (i7 << 5);
        this.f12650j = i8;
        int i9 = i4 - 1;
        return (i9 & i4) == 0 ? i9 & i8 : (Integer.MAX_VALUE & i8) % i4;
    }

    public final i e() {
        if (d(2) == 0) {
            i iVar = (i) this.f12652l.f12658h.c();
            return iVar != null ? iVar : (i) this.f12652l.f12659i.c();
        }
        i iVar2 = (i) this.f12652l.f12659i.c();
        return iVar2 != null ? iVar2 : (i) this.f12652l.f12658h.c();
    }

    public final void f(int i4) {
        String str = this.f12652l.f12657g;
        String valueOf = i4 == 0 ? "TERMINATED" : String.valueOf(i4);
        setName(str + "-worker-" + valueOf);
        this.indexInArray = i4;
    }

    public final void g(Object obj) {
        this.nextParkedWorker = obj;
    }

    public final boolean h(CoroutineScheduler$WorkerState coroutineScheduler$WorkerState) {
        CoroutineScheduler$WorkerState coroutineScheduler$WorkerState2 = this.f12646f;
        boolean z4 = coroutineScheduler$WorkerState2 == CoroutineScheduler$WorkerState.CPU_ACQUIRED;
        if (z4) {
            this.f12652l.f12662l.a(4398046511104L);
        }
        if (coroutineScheduler$WorkerState2 != coroutineScheduler$WorkerState) {
            this.f12646f = coroutineScheduler$WorkerState;
        }
        return z4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x008b, code lost:
        r7 = -2;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00b6 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final v3.i i(int r21) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v3.a.i(int):v3.i");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        long j4;
        int i4;
        loop0: while (true) {
            boolean z4 = 0;
            boolean z5 = false;
            while (true) {
                int i5 = 1;
                if (!(this.f12652l.f12663m.f12357b != 0 ? true : z4 ? 1 : 0)) {
                    CoroutineScheduler$WorkerState coroutineScheduler$WorkerState = this.f12646f;
                    CoroutineScheduler$WorkerState coroutineScheduler$WorkerState2 = CoroutineScheduler$WorkerState.TERMINATED;
                    if (coroutineScheduler$WorkerState == coroutineScheduler$WorkerState2) {
                        break loop0;
                    }
                    i a4 = a(this.f12651k);
                    if (a4 != null) {
                        this.f12649i = 0L;
                        int b4 = a4.f12670e.b();
                        this.f12648h = 0L;
                        CoroutineScheduler$WorkerState coroutineScheduler$WorkerState3 = this.f12646f;
                        CoroutineScheduler$WorkerState coroutineScheduler$WorkerState4 = CoroutineScheduler$WorkerState.PARKING;
                        CoroutineScheduler$WorkerState coroutineScheduler$WorkerState5 = CoroutineScheduler$WorkerState.BLOCKING;
                        if (coroutineScheduler$WorkerState3 == coroutineScheduler$WorkerState4) {
                            this.f12646f = coroutineScheduler$WorkerState5;
                        }
                        if (b4 != 0 && h(coroutineScheduler$WorkerState5)) {
                            b bVar = this.f12652l;
                            if (!bVar.e() && !bVar.d(bVar.f12662l.f12363b)) {
                                bVar.e();
                            }
                        }
                        this.f12652l.getClass();
                        try {
                            a4.run();
                        } catch (Throwable th) {
                            Thread currentThread = Thread.currentThread();
                            currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th);
                        }
                        if (b4 != 0) {
                            this.f12652l.f12662l.a(-2097152L);
                            if (this.f12646f != coroutineScheduler$WorkerState2) {
                                this.f12646f = CoroutineScheduler$WorkerState.DORMANT;
                            }
                        }
                    } else {
                        this.f12651k = z4;
                        if (this.f12649i == 0) {
                            Object obj = this.nextParkedWorker;
                            E e4 = b.f12653n;
                            if (obj != e4 ? true : z4 ? 1 : 0) {
                                this.f12647g.d(-1);
                                int i6 = z4;
                                while (true) {
                                    if ((this.nextParkedWorker != b.f12653n ? i5 : i6) == 0 || this.f12647g.f12360b != -1) {
                                        break;
                                    }
                                    if ((this.f12652l.f12663m.f12357b != 0 ? i5 : i6) != 0) {
                                        break;
                                    }
                                    CoroutineScheduler$WorkerState coroutineScheduler$WorkerState6 = this.f12646f;
                                    CoroutineScheduler$WorkerState coroutineScheduler$WorkerState7 = CoroutineScheduler$WorkerState.TERMINATED;
                                    if (coroutineScheduler$WorkerState6 == coroutineScheduler$WorkerState7) {
                                        break;
                                    }
                                    h(CoroutineScheduler$WorkerState.PARKING);
                                    Thread.interrupted();
                                    if (this.f12648h == 0) {
                                        this.f12648h = System.nanoTime() + this.f12652l.f12656f;
                                    }
                                    LockSupport.parkNanos(this.f12652l.f12656f);
                                    if (System.nanoTime() - this.f12648h >= 0) {
                                        this.f12648h = 0L;
                                        b bVar2 = this.f12652l;
                                        synchronized (bVar2.f12661k) {
                                            if ((bVar2.f12663m.f12357b != 0 ? i5 : i6) == 0) {
                                                if (((int) (bVar2.f12662l.f12363b & 2097151)) > bVar2.f12654d) {
                                                    if (this.f12647g.a(-1, i5)) {
                                                        int i7 = this.indexInArray;
                                                        f(i6);
                                                        bVar2.c(this, i7, i6);
                                                        t3.e eVar = bVar2.f12662l;
                                                        eVar.getClass();
                                                        long andDecrement = t3.e.f12361c.getAndDecrement(eVar);
                                                        t3.g gVar = t3.g.f12367a;
                                                        t3.h hVar = eVar.f12362a;
                                                        if (hVar != gVar) {
                                                            hVar.getClass();
                                                            t3.h.a("getAndDec():" + andDecrement);
                                                        }
                                                        int i8 = (int) (andDecrement & 2097151);
                                                        if (i8 != i7) {
                                                            Object b5 = bVar2.f12661k.b(i8);
                                                            kotlin.jvm.internal.h.b(b5);
                                                            a aVar = (a) b5;
                                                            bVar2.f12661k.c(i7, aVar);
                                                            aVar.f(i7);
                                                            bVar2.c(aVar, i8, i7);
                                                        }
                                                        bVar2.f12661k.c(i8, null);
                                                        e3.f fVar = e3.f.f9037a;
                                                        this.f12646f = coroutineScheduler$WorkerState7;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i6 = 0;
                                    i5 = 1;
                                }
                            } else {
                                b bVar3 = this.f12652l;
                                bVar3.getClass();
                                if (this.nextParkedWorker == e4) {
                                    t3.e eVar2 = bVar3.f12660j;
                                    do {
                                        j4 = eVar2.f12363b;
                                        i4 = this.indexInArray;
                                        this.nextParkedWorker = bVar3.f12661k.b((int) (j4 & 2097151));
                                    } while (!bVar3.f12660j.b(j4, ((2097152 + j4) & (-2097152)) | i4));
                                }
                            }
                            z4 = 0;
                        } else if (z5) {
                            h(CoroutineScheduler$WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.f12649i);
                            this.f12649i = 0L;
                            break;
                        } else {
                            z5 = true;
                        }
                    }
                } else {
                    break loop0;
                }
            }
        }
        h(CoroutineScheduler$WorkerState.TERMINATED);
    }
}
