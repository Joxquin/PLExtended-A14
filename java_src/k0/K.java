package k0;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import w0.C1446c;
/* loaded from: classes.dex */
public final class K {

    /* renamed from: e  reason: collision with root package name */
    public static final Executor f11093e = Executors.newCachedThreadPool();

    /* renamed from: a  reason: collision with root package name */
    public final Set f11094a;

    /* renamed from: b  reason: collision with root package name */
    public final Set f11095b;

    /* renamed from: c  reason: collision with root package name */
    public final Handler f11096c;

    /* renamed from: d  reason: collision with root package name */
    public volatile C1183H f11097d;

    public K() {
        throw null;
    }

    public K(Callable callable, boolean z4) {
        this.f11094a = new LinkedHashSet(1);
        this.f11095b = new LinkedHashSet(1);
        this.f11096c = new Handler(Looper.getMainLooper());
        this.f11097d = null;
        if (z4) {
            try {
                b((C1183H) callable.call());
                return;
            } catch (Throwable th) {
                b(new C1183H(th));
                return;
            }
        }
        f11093e.execute(new C1185J(this, callable));
    }

    public final synchronized void a(InterfaceC1180E interfaceC1180E) {
        Object obj;
        C1183H c1183h = this.f11097d;
        if (c1183h != null && (obj = c1183h.f11089a) != null) {
            interfaceC1180E.a(obj);
        }
        this.f11094a.add(interfaceC1180E);
    }

    public final void b(C1183H c1183h) {
        if (this.f11097d != null) {
            throw new IllegalStateException("A task may only be set once.");
        }
        this.f11097d = c1183h;
        this.f11096c.post(new Runnable() { // from class: k0.I
            @Override // java.lang.Runnable
            public final void run() {
                K k4 = K.this;
                C1183H c1183h2 = k4.f11097d;
                if (c1183h2 == null) {
                    return;
                }
                Object obj = c1183h2.f11089a;
                if (obj != null) {
                    synchronized (k4) {
                        Iterator it = new ArrayList(k4.f11094a).iterator();
                        while (it.hasNext()) {
                            ((InterfaceC1180E) it.next()).a(obj);
                        }
                    }
                    return;
                }
                Throwable th = c1183h2.f11090b;
                synchronized (k4) {
                    ArrayList arrayList = new ArrayList(k4.f11095b);
                    if (arrayList.isEmpty()) {
                        C1446c.c("Lottie encountered an error but no failure listener was added:", th);
                        return;
                    }
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        ((InterfaceC1180E) it2.next()).a(th);
                    }
                }
            }
        });
    }
}
