package e;

import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class K implements Executor {

    /* renamed from: d  reason: collision with root package name */
    public final Object f8856d = new Object();

    /* renamed from: e  reason: collision with root package name */
    public final Queue f8857e = new ArrayDeque();

    /* renamed from: f  reason: collision with root package name */
    public final Executor f8858f;

    /* renamed from: g  reason: collision with root package name */
    public Runnable f8859g;

    public K(L l4) {
        this.f8858f = l4;
    }

    public final void a() {
        synchronized (this.f8856d) {
            Runnable runnable = (Runnable) ((ArrayDeque) this.f8857e).poll();
            this.f8859g = runnable;
            if (runnable != null) {
                this.f8858f.execute(runnable);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(final Runnable runnable) {
        synchronized (this.f8856d) {
            ((ArrayDeque) this.f8857e).add(new Runnable() { // from class: e.J
                @Override // java.lang.Runnable
                public final void run() {
                    K k4 = K.this;
                    Runnable runnable2 = runnable;
                    k4.getClass();
                    try {
                        runnable2.run();
                    } finally {
                        k4.a();
                    }
                }
            });
            if (this.f8859g == null) {
                a();
            }
        }
    }
}
