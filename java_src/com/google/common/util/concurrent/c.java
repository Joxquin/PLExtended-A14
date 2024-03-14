package com.google.common.util.concurrent;

import O2.l;
import R2.g;
import R2.h;
import R2.j;
import java.util.Objects;
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
public abstract class c extends S2.a implements Future {

    /* renamed from: g  reason: collision with root package name */
    public static final boolean f8478g;

    /* renamed from: h  reason: collision with root package name */
    public static final Logger f8479h;

    /* renamed from: i  reason: collision with root package name */
    public static final R2.a f8480i;

    /* renamed from: j  reason: collision with root package name */
    public static final Object f8481j;

    /* renamed from: d  reason: collision with root package name */
    public volatile Object f8482d;

    /* renamed from: e  reason: collision with root package name */
    public volatile b f8483e;

    /* renamed from: f  reason: collision with root package name */
    public volatile h f8484f;

    static {
        boolean z4;
        R2.a eVar;
        try {
            z4 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z4 = false;
        }
        f8478g = z4;
        f8479h = Logger.getLogger(c.class.getName());
        Throwable th = null;
        try {
            eVar = new g();
            th = null;
        } catch (Throwable th2) {
            th = th2;
            try {
                eVar = new R2.c(AtomicReferenceFieldUpdater.newUpdater(h.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(h.class, h.class, "b"), AtomicReferenceFieldUpdater.newUpdater(c.class, h.class, "f"), AtomicReferenceFieldUpdater.newUpdater(c.class, b.class, "e"), AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "d"));
            } catch (Throwable th3) {
                th = th3;
                eVar = new R2.e();
            }
        }
        f8480i = eVar;
        if (th != null) {
            Logger logger = f8479h;
            Level level = Level.SEVERE;
            logger.log(level, "UnsafeAtomicHelper is broken!", th);
            logger.log(level, "SafeAtomicHelper is broken!", th);
        }
        f8481j = new Object();
    }

    public static void e(c cVar) {
        cVar.getClass();
        for (h e4 = f8480i.e(cVar); e4 != null; e4 = e4.f1672b) {
            Thread thread = e4.f1671a;
            if (thread != null) {
                e4.f1671a = null;
                LockSupport.unpark(thread);
            }
        }
        b d4 = f8480i.d(cVar, b.f8474d);
        b bVar = null;
        while (d4 != null) {
            b bVar2 = d4.f8477c;
            d4.f8477c = bVar;
            bVar = d4;
            d4 = bVar2;
        }
        while (bVar != null) {
            b bVar3 = bVar.f8477c;
            Runnable runnable = bVar.f8475a;
            Objects.requireNonNull(runnable);
            if (runnable instanceof R2.d) {
                R2.d dVar = (R2.d) runnable;
                throw null;
            }
            Executor executor = bVar.f8476b;
            Objects.requireNonNull(executor);
            f(runnable, executor);
            bVar = bVar3;
        }
    }

    public static void f(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e4) {
            Logger logger = f8479h;
            Level level = Level.SEVERE;
            logger.log(level, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e4);
        }
    }

    @Override // S2.a
    public final void a() {
    }

    public final void b(StringBuilder sb) {
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
        d(sb, obj);
        sb.append("]");
    }

    public final void c(j jVar, Executor executor) {
        b bVar;
        DirectExecutor directExecutor = DirectExecutor.f8471d;
        if (isDone() || (bVar = this.f8483e) == b.f8474d) {
            f(jVar, directExecutor);
        }
        b bVar2 = new b(jVar);
        do {
            bVar2.f8477c = bVar;
            if (f8480i.a(this, bVar, bVar2)) {
                return;
            }
            bVar = this.f8483e;
        } while (bVar != b.f8474d);
        f(jVar, directExecutor);
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z4) {
        R2.b bVar;
        Object obj = this.f8482d;
        if (!(obj == null) && !(obj instanceof R2.d)) {
            return false;
        }
        if (f8478g) {
            bVar = new R2.b(new CancellationException("Future.cancel() was called."), z4);
        } else {
            bVar = z4 ? R2.b.f1656b : R2.b.f1657c;
            Objects.requireNonNull(bVar);
        }
        while (!f8480i.b(this, obj, bVar)) {
            obj = this.f8482d;
            if (!(obj instanceof R2.d)) {
                return false;
            }
        }
        if (z4) {
            h();
        }
        e(this);
        if (obj instanceof R2.d) {
            ((R2.d) obj).getClass();
            throw null;
        }
        return true;
    }

    public final void d(StringBuilder sb, Object obj) {
        if (obj == null) {
            sb.append("null");
        } else if (obj == this) {
            sb.append("this future");
        } else {
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    public final Object g(Object obj) {
        if (obj instanceof R2.b) {
            Throwable th = ((R2.b) obj).f1658a;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(th);
            throw cancellationException;
        } else if (obj instanceof a) {
            throw new ExecutionException(((a) obj).f8473a);
        } else {
            if (obj == f8481j) {
                return null;
            }
            return obj;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00d1  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x00c2 -> B:56:0x00c8). Please submit an issue!!! */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(long r18, java.util.concurrent.TimeUnit r20) {
        /*
            Method dump skipped, instructions count: 404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.c.get(long, java.util.concurrent.TimeUnit):java.lang.Object");
    }

    public void h() {
    }

    public String i() {
        if (this instanceof ScheduledFuture) {
            return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
        }
        return null;
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f8482d instanceof R2.b;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        Object obj = this.f8482d;
        return (!(obj instanceof R2.d)) & (obj != null);
    }

    public final void j(h hVar) {
        hVar.f1671a = null;
        while (true) {
            h hVar2 = this.f8484f;
            if (hVar2 == h.f1670c) {
                return;
            }
            h hVar3 = null;
            while (hVar2 != null) {
                h hVar4 = hVar2.f1672b;
                if (hVar2.f1671a != null) {
                    hVar3 = hVar2;
                } else if (hVar3 != null) {
                    hVar3.f1672b = hVar4;
                    if (hVar3.f1671a == null) {
                        break;
                    }
                } else if (!f8480i.c(this, hVar2, hVar4)) {
                    break;
                }
                hVar2 = hVar4;
            }
            return;
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (getClass().getName().startsWith("com.google.common.util.concurrent.")) {
            sb.append(getClass().getSimpleName());
        } else {
            sb.append(getClass().getName());
        }
        sb.append('@');
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[status=");
        if (this.f8482d instanceof R2.b) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            b(sb);
        } else {
            int length = sb.length();
            sb.append("PENDING");
            Object obj = this.f8482d;
            String str = null;
            if (obj instanceof R2.d) {
                sb.append(", setFuture=[");
                ((R2.d) obj).getClass();
                try {
                    sb.append((Object) null);
                } catch (RuntimeException | StackOverflowError e4) {
                    sb.append("Exception thrown from implementation: ");
                    sb.append(e4.getClass());
                }
                sb.append("]");
            } else {
                try {
                    String i4 = i();
                    if (!l.a(i4)) {
                        str = i4;
                    }
                } catch (RuntimeException | StackOverflowError e5) {
                    str = "Exception thrown from implementation: " + e5.getClass();
                }
                if (str != null) {
                    sb.append(", info=[");
                    sb.append(str);
                    sb.append("]");
                }
            }
            if (isDone()) {
                sb.delete(length, sb.length());
                b(sb);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f8482d;
            if ((obj2 != null) & (!(obj2 instanceof R2.d))) {
                return g(obj2);
            }
            h hVar = this.f8484f;
            h hVar2 = h.f1670c;
            if (hVar != hVar2) {
                h hVar3 = new h();
                do {
                    R2.a aVar = f8480i;
                    aVar.f(hVar3, hVar);
                    if (aVar.c(this, hVar, hVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f8482d;
                            } else {
                                j(hVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof R2.d))));
                        return g(obj);
                    }
                    hVar = this.f8484f;
                } while (hVar != hVar2);
                Object obj3 = this.f8482d;
                Objects.requireNonNull(obj3);
                return g(obj3);
            }
            Object obj32 = this.f8482d;
            Objects.requireNonNull(obj32);
            return g(obj32);
        }
        throw new InterruptedException();
    }
}
