package s;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes.dex */
public abstract class i implements Future {

    /* renamed from: g  reason: collision with root package name */
    public static final boolean f12179g = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: h  reason: collision with root package name */
    public static final Logger f12180h = Logger.getLogger(i.class.getName());

    /* renamed from: i  reason: collision with root package name */
    public static final b f12181i;

    /* renamed from: j  reason: collision with root package name */
    public static final Object f12182j;

    /* renamed from: d  reason: collision with root package name */
    public volatile Object f12183d;

    /* renamed from: e  reason: collision with root package name */
    public volatile d f12184e;

    /* renamed from: f  reason: collision with root package name */
    public volatile h f12185f;

    static {
        b gVar;
        try {
            gVar = new e(AtomicReferenceFieldUpdater.newUpdater(h.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(h.class, h.class, "b"), AtomicReferenceFieldUpdater.newUpdater(i.class, h.class, "f"), AtomicReferenceFieldUpdater.newUpdater(i.class, d.class, "e"), AtomicReferenceFieldUpdater.newUpdater(i.class, Object.class, "d"));
            th = null;
        } catch (Throwable th) {
            th = th;
            gVar = new g();
        }
        f12181i = gVar;
        if (th != null) {
            f12180h.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f12182j = new Object();
    }

    public static void b(i iVar) {
        h hVar;
        d dVar;
        do {
            hVar = iVar.f12185f;
        } while (!f12181i.c(iVar, hVar, h.f12176c));
        while (hVar != null) {
            Thread thread = hVar.f12177a;
            if (thread != null) {
                hVar.f12177a = null;
                LockSupport.unpark(thread);
            }
            hVar = hVar.f12178b;
        }
        do {
            dVar = iVar.f12184e;
        } while (!f12181i.a(iVar, dVar, d.f12167d));
        d dVar2 = null;
        while (dVar != null) {
            d dVar3 = dVar.f12170c;
            dVar.f12170c = dVar2;
            dVar2 = dVar;
            dVar = dVar3;
        }
        while (dVar2 != null) {
            d dVar4 = dVar2.f12170c;
            Runnable runnable = dVar2.f12168a;
            if (runnable instanceof f) {
                ((f) runnable).getClass();
                throw null;
            } else {
                c(runnable, dVar2.f12169b);
                dVar2 = dVar4;
            }
        }
    }

    public static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e4) {
            Logger logger = f12180h;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e4);
        }
    }

    public final void a(StringBuilder sb) {
        Object obj;
        boolean z4 = false;
        while (true) {
            try {
                try {
                    obj = get();
                    break;
                } catch (InterruptedException unused) {
                    z4 = true;
                } catch (Throwable th) {
                    if (z4) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            } catch (CancellationException unused2) {
                sb.append("CANCELLED");
                return;
            } catch (RuntimeException e4) {
                sb.append("UNKNOWN, cause=[");
                sb.append(e4.getClass());
                sb.append(" thrown from get()]");
                return;
            } catch (ExecutionException e5) {
                sb.append("FAILURE, cause=[");
                sb.append(e5.getCause());
                sb.append("]");
                return;
            }
        }
        if (z4) {
            Thread.currentThread().interrupt();
        }
        sb.append("SUCCESS, result=[");
        sb.append(obj == this ? "this future" : String.valueOf(obj));
        sb.append("]");
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z4) {
        Object obj = this.f12183d;
        if (!(obj == null) && !(obj instanceof f)) {
            return false;
        }
        c cVar = f12179g ? new c(new CancellationException("Future.cancel() was called."), z4) : z4 ? c.f12164b : c.f12165c;
        while (!f12181i.b(this, obj, cVar)) {
            obj = this.f12183d;
            if (!(obj instanceof f)) {
                return false;
            }
        }
        b(this);
        if (obj instanceof f) {
            ((f) obj).getClass();
            throw null;
        }
        return true;
    }

    public final Object d(Object obj) {
        if (obj instanceof c) {
            Throwable th = ((c) obj).f12166a;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (obj instanceof androidx.concurrent.futures.a) {
            throw new ExecutionException(((androidx.concurrent.futures.a) obj).f2707a);
        } else {
            if (obj == f12182j) {
                return null;
            }
            return obj;
        }
    }

    public final String e() {
        Object obj = this.f12183d;
        if (obj instanceof f) {
            StringBuilder sb = new StringBuilder("setFuture=[");
            ((f) obj).getClass();
            sb.append("null");
            sb.append("]");
            return sb.toString();
        } else if (this instanceof ScheduledFuture) {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        } else {
            return null;
        }
    }

    public final void f(h hVar) {
        hVar.f12177a = null;
        while (true) {
            h hVar2 = this.f12185f;
            if (hVar2 == h.f12176c) {
                return;
            }
            h hVar3 = null;
            while (hVar2 != null) {
                h hVar4 = hVar2.f12178b;
                if (hVar2.f12177a != null) {
                    hVar3 = hVar2;
                } else if (hVar3 != null) {
                    hVar3.f12178b = hVar4;
                    if (hVar3.f12177a == null) {
                        break;
                    }
                } else if (!f12181i.c(this, hVar2, hVar4)) {
                    break;
                }
                hVar2 = hVar4;
            }
            return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00c5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x00b6 -> B:56:0x00bc). Please submit an issue!!! */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(long r18, java.util.concurrent.TimeUnit r20) {
        /*
            Method dump skipped, instructions count: 392
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: s.i.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f12183d instanceof c;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f12183d;
        return (!(obj instanceof f)) & (obj != null);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.f12183d instanceof c) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                str = e();
            } catch (RuntimeException e4) {
                str = "Exception thrown from implementation: " + e4.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f12183d;
            if ((obj2 != null) & (!(obj2 instanceof f))) {
                return d(obj2);
            }
            h hVar = this.f12185f;
            h hVar2 = h.f12176c;
            if (hVar != hVar2) {
                h hVar3 = new h();
                do {
                    b bVar = f12181i;
                    bVar.d(hVar3, hVar);
                    if (bVar.c(this, hVar, hVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f12183d;
                            } else {
                                f(hVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof f))));
                        return d(obj);
                    }
                    hVar = this.f12185f;
                } while (hVar != hVar2);
                return d(this.f12183d);
            }
            return d(this.f12183d);
        }
        throw new InterruptedException();
    }
}
