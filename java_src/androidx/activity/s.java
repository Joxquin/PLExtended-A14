package androidx.activity;

import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.fragment.app.C0200f0;
import androidx.lifecycle.AbstractC0247m;
import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.Lifecycle$State;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
/* loaded from: classes.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    public final Runnable f2478a;

    /* renamed from: b  reason: collision with root package name */
    public final kotlin.collections.j f2479b = new kotlin.collections.j();

    /* renamed from: c  reason: collision with root package name */
    public final m3.a f2480c = new m3.a() { // from class: androidx.activity.OnBackPressedDispatcher$1
        {
            super(0);
        }

        @Override // m3.a
        public final Object invoke() {
            s.this.c();
            return e3.f.f9037a;
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public final q f2481d;

    /* renamed from: e  reason: collision with root package name */
    public OnBackInvokedDispatcher f2482e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f2483f;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.activity.q] */
    public s(Runnable runnable) {
        this.f2478a = runnable;
        final m3.a aVar = new m3.a() { // from class: androidx.activity.OnBackPressedDispatcher$2
            {
                super(0);
            }

            @Override // m3.a
            public final Object invoke() {
                s.this.b();
                return e3.f.f9037a;
            }
        };
        this.f2481d = new OnBackInvokedCallback() { // from class: androidx.activity.q
            public final void onBackInvoked() {
                m3.a onBackInvoked = m3.a.this;
                kotlin.jvm.internal.h.e(onBackInvoked, "$onBackInvoked");
                onBackInvoked.invoke();
            }
        };
    }

    public final void a(InterfaceC0251q interfaceC0251q, C0200f0 onBackPressedCallback) {
        kotlin.jvm.internal.h.e(onBackPressedCallback, "onBackPressedCallback");
        AbstractC0247m lifecycle = interfaceC0251q.getLifecycle();
        if (lifecycle.b() == Lifecycle$State.DESTROYED) {
            return;
        }
        onBackPressedCallback.f2447b.add(new OnBackPressedDispatcher$LifecycleOnBackPressedCancellable(this, lifecycle, onBackPressedCallback));
        c();
        onBackPressedCallback.f2448c = this.f2480c;
    }

    public final void b() {
        Object obj;
        kotlin.collections.j jVar = this.f2479b;
        ListIterator<E> listIterator = jVar.listIterator(jVar.size());
        while (true) {
            if (!listIterator.hasPrevious()) {
                obj = null;
                break;
            }
            obj = listIterator.previous();
            if (((p) obj).f2446a) {
                break;
            }
        }
        p pVar = (p) obj;
        if (pVar != null) {
            pVar.a();
            return;
        }
        Runnable runnable = this.f2478a;
        if (runnable != null) {
            runnable.run();
        }
    }

    public final void c() {
        boolean z4;
        q qVar;
        kotlin.collections.j jVar = this.f2479b;
        if (!(jVar instanceof Collection) || !jVar.isEmpty()) {
            Iterator it = jVar.iterator();
            while (it.hasNext()) {
                if (((p) it.next()).f2446a) {
                    z4 = true;
                    break;
                }
            }
        }
        z4 = false;
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f2482e;
        if (onBackInvokedDispatcher == null || (qVar = this.f2481d) == null) {
            return;
        }
        if (z4 && !this.f2483f) {
            onBackInvokedDispatcher.registerOnBackInvokedCallback(0, qVar);
            this.f2483f = true;
        } else if (z4 || !this.f2483f) {
        } else {
            onBackInvokedDispatcher.unregisterOnBackInvokedCallback(qVar);
            this.f2483f = false;
        }
    }
}
