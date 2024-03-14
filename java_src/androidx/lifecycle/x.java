package androidx.lifecycle;

import android.os.Looper;
import androidx.fragment.app.C0228u;
import java.util.Map;
import l.C1261a;
import m.C1295c;
import m.C1296d;
import m.C1299g;
/* loaded from: classes.dex */
public abstract class x {

    /* renamed from: j  reason: collision with root package name */
    public static final Object f3628j = new Object();

    /* renamed from: a  reason: collision with root package name */
    public final Object f3629a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public final C1299g f3630b = new C1299g();

    /* renamed from: c  reason: collision with root package name */
    public int f3631c = 0;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3632d;

    /* renamed from: e  reason: collision with root package name */
    public volatile Object f3633e;

    /* renamed from: f  reason: collision with root package name */
    public volatile Object f3634f;

    /* renamed from: g  reason: collision with root package name */
    public int f3635g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f3636h;

    /* renamed from: i  reason: collision with root package name */
    public boolean f3637i;

    public x() {
        Object obj = f3628j;
        this.f3634f = obj;
        this.f3633e = obj;
        this.f3635g = -1;
    }

    public static void a(String str) {
        C1261a c1261a;
        if (C1261a.f11524c != null) {
            c1261a = C1261a.f11524c;
        } else {
            synchronized (C1261a.class) {
                if (C1261a.f11524c == null) {
                    C1261a.f11524c = new C1261a();
                }
            }
            c1261a = C1261a.f11524c;
        }
        c1261a.f11525a.getClass();
        if (!(Looper.getMainLooper().getThread() == Thread.currentThread())) {
            throw new IllegalStateException(E.c.a("Cannot invoke ", str, " on a background thread"));
        }
    }

    public final void b(AbstractC0256w abstractC0256w) {
        if (abstractC0256w.f3625e) {
            if (!abstractC0256w.e()) {
                abstractC0256w.c(false);
                return;
            }
            int i4 = abstractC0256w.f3626f;
            int i5 = this.f3635g;
            if (i4 >= i5) {
                return;
            }
            abstractC0256w.f3626f = i5;
            abstractC0256w.f3624d.i(this.f3633e);
        }
    }

    public final void c(AbstractC0256w abstractC0256w) {
        if (this.f3636h) {
            this.f3637i = true;
            return;
        }
        this.f3636h = true;
        do {
            this.f3637i = false;
            if (abstractC0256w == null) {
                C1299g c1299g = this.f3630b;
                c1299g.getClass();
                C1296d c1296d = new C1296d(c1299g);
                c1299g.f11580f.put(c1296d, Boolean.FALSE);
                while (c1296d.hasNext()) {
                    b((AbstractC0256w) ((Map.Entry) c1296d.next()).getValue());
                    if (this.f3637i) {
                        break;
                    }
                }
            } else {
                b(abstractC0256w);
                abstractC0256w = null;
            }
        } while (this.f3637i);
        this.f3636h = false;
    }

    public final void d(C0228u c0228u) {
        Object obj;
        a("observeForever");
        C0255v c0255v = new C0255v(this, c0228u);
        C1299g c1299g = this.f3630b;
        C1295c h4 = c1299g.h(c0228u);
        if (h4 != null) {
            obj = h4.f11570e;
        } else {
            C1295c c1295c = new C1295c(c0228u, c0255v);
            c1299g.f11581g++;
            C1295c c1295c2 = c1299g.f11579e;
            if (c1295c2 == null) {
                c1299g.f11578d = c1295c;
                c1299g.f11579e = c1295c;
            } else {
                c1295c2.f11571f = c1295c;
                c1295c.f11572g = c1295c2;
                c1299g.f11579e = c1295c;
            }
            obj = null;
        }
        AbstractC0256w abstractC0256w = (AbstractC0256w) obj;
        if (abstractC0256w instanceof LiveData$LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (abstractC0256w != null) {
            return;
        }
        c0255v.c(true);
    }

    public void e() {
    }

    public void f() {
    }

    public void g(z zVar) {
        a("removeObserver");
        AbstractC0256w abstractC0256w = (AbstractC0256w) this.f3630b.i(zVar);
        if (abstractC0256w == null) {
            return;
        }
        abstractC0256w.d();
        abstractC0256w.c(false);
    }
}
