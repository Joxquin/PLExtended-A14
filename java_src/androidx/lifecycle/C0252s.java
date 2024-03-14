package androidx.lifecycle;

import android.os.Looper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import l.C1261a;
import m.C1293a;
import m.C1295c;
/* renamed from: androidx.lifecycle.s  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0252s extends AbstractC0247m {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f3614a;

    /* renamed from: b  reason: collision with root package name */
    public C1293a f3615b;

    /* renamed from: c  reason: collision with root package name */
    public Lifecycle$State f3616c;

    /* renamed from: d  reason: collision with root package name */
    public final WeakReference f3617d;

    /* renamed from: e  reason: collision with root package name */
    public int f3618e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f3619f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f3620g;

    /* renamed from: h  reason: collision with root package name */
    public final ArrayList f3621h;

    public C0252s(InterfaceC0251q provider) {
        kotlin.jvm.internal.h.e(provider, "provider");
        this.f3614a = true;
        this.f3615b = new C1293a();
        this.f3616c = Lifecycle$State.INITIALIZED;
        this.f3621h = new ArrayList();
        this.f3617d = new WeakReference(provider);
    }

    @Override // androidx.lifecycle.AbstractC0247m
    public final void a(InterfaceC0250p observer) {
        InterfaceC0251q interfaceC0251q;
        kotlin.jvm.internal.h.e(observer, "observer");
        e("addObserver");
        Lifecycle$State lifecycle$State = this.f3616c;
        Lifecycle$State lifecycle$State2 = Lifecycle$State.DESTROYED;
        if (lifecycle$State != lifecycle$State2) {
            lifecycle$State2 = Lifecycle$State.INITIALIZED;
        }
        r rVar = new r(observer, lifecycle$State2);
        if (((r) this.f3615b.j(observer, rVar)) == null && (interfaceC0251q = (InterfaceC0251q) this.f3617d.get()) != null) {
            boolean z4 = this.f3618e != 0 || this.f3619f;
            Lifecycle$State d4 = d(observer);
            this.f3618e++;
            while (rVar.f3612a.compareTo(d4) < 0 && this.f3615b.f11567h.containsKey(observer)) {
                Lifecycle$State lifecycle$State3 = rVar.f3612a;
                ArrayList arrayList = this.f3621h;
                arrayList.add(lifecycle$State3);
                C0245k c0245k = Lifecycle$Event.Companion;
                Lifecycle$State lifecycle$State4 = rVar.f3612a;
                c0245k.getClass();
                Lifecycle$Event b4 = C0245k.b(lifecycle$State4);
                if (b4 == null) {
                    throw new IllegalStateException("no event up from " + rVar.f3612a);
                }
                rVar.a(interfaceC0251q, b4);
                arrayList.remove(arrayList.size() - 1);
                d4 = d(observer);
            }
            if (!z4) {
                i();
            }
            this.f3618e--;
        }
    }

    @Override // androidx.lifecycle.AbstractC0247m
    public final Lifecycle$State b() {
        return this.f3616c;
    }

    @Override // androidx.lifecycle.AbstractC0247m
    public final void c(InterfaceC0250p observer) {
        kotlin.jvm.internal.h.e(observer, "observer");
        e("removeObserver");
        this.f3615b.i(observer);
    }

    public final Lifecycle$State d(InterfaceC0250p interfaceC0250p) {
        r rVar;
        C1293a c1293a = this.f3615b;
        C1295c c1295c = c1293a.f11567h.containsKey(interfaceC0250p) ? ((C1295c) c1293a.f11567h.get(interfaceC0250p)).f11572g : null;
        Lifecycle$State lifecycle$State = (c1295c == null || (rVar = (r) c1295c.f11570e) == null) ? null : rVar.f3612a;
        ArrayList arrayList = this.f3621h;
        Lifecycle$State lifecycle$State2 = arrayList.isEmpty() ^ true ? (Lifecycle$State) arrayList.get(arrayList.size() - 1) : null;
        Lifecycle$State state1 = this.f3616c;
        kotlin.jvm.internal.h.e(state1, "state1");
        if (lifecycle$State == null || lifecycle$State.compareTo(state1) >= 0) {
            lifecycle$State = state1;
        }
        return (lifecycle$State2 == null || lifecycle$State2.compareTo(lifecycle$State) >= 0) ? lifecycle$State : lifecycle$State2;
    }

    public final void e(String str) {
        C1261a c1261a;
        if (this.f3614a) {
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
                throw new IllegalStateException(E.c.a("Method ", str, " must be called on the main thread").toString());
            }
        }
    }

    public final void f(Lifecycle$Event event) {
        kotlin.jvm.internal.h.e(event, "event");
        e("handleLifecycleEvent");
        g(event.a());
    }

    public final void g(Lifecycle$State lifecycle$State) {
        Lifecycle$State lifecycle$State2 = this.f3616c;
        if (lifecycle$State2 == lifecycle$State) {
            return;
        }
        Lifecycle$State lifecycle$State3 = Lifecycle$State.INITIALIZED;
        Lifecycle$State lifecycle$State4 = Lifecycle$State.DESTROYED;
        if (!((lifecycle$State2 == lifecycle$State3 && lifecycle$State == lifecycle$State4) ? false : true)) {
            throw new IllegalStateException(("no event down from " + this.f3616c + " in component " + this.f3617d.get()).toString());
        }
        this.f3616c = lifecycle$State;
        if (this.f3619f || this.f3618e != 0) {
            this.f3620g = true;
            return;
        }
        this.f3619f = true;
        i();
        this.f3619f = false;
        if (this.f3616c == lifecycle$State4) {
            this.f3615b = new C1293a();
        }
    }

    public final void h(Lifecycle$State state) {
        kotlin.jvm.internal.h.e(state, "state");
        e("setCurrentState");
        g(state);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0166 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i() {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.lifecycle.C0252s.i():void");
    }
}
