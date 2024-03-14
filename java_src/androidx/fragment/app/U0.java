package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.shared.R;
import j.C1080K;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public abstract class U0 {

    /* renamed from: a  reason: collision with root package name */
    public final ViewGroup f3349a;

    /* renamed from: b  reason: collision with root package name */
    public final List f3350b;

    /* renamed from: c  reason: collision with root package name */
    public final List f3351c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3352d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f3353e;

    public U0(ViewGroup container) {
        kotlin.jvm.internal.h.e(container, "container");
        this.f3349a = container;
        this.f3350b = new ArrayList();
        this.f3351c = new ArrayList();
    }

    public static final U0 j(ViewGroup container, AbstractC0220p0 fragmentManager) {
        kotlin.jvm.internal.h.e(container, "container");
        kotlin.jvm.internal.h.e(fragmentManager, "fragmentManager");
        kotlin.jvm.internal.h.d(fragmentManager.F(), "fragmentManager.specialEffectsControllerFactory");
        Object tag = container.getTag(R.id.special_effects_controller_view_tag);
        if (tag instanceof U0) {
            return (U0) tag;
        }
        C0221q c0221q = new C0221q(container);
        container.setTag(R.id.special_effects_controller_view_tag, c0221q);
        return c0221q;
    }

    public final void a(SpecialEffectsController$Operation$State specialEffectsController$Operation$State, SpecialEffectsController$Operation$LifecycleImpact specialEffectsController$Operation$LifecycleImpact, z0 z0Var) {
        synchronized (this.f3350b) {
            I.d dVar = new I.d();
            K k4 = z0Var.f3543c;
            kotlin.jvm.internal.h.d(k4, "fragmentStateManager.fragment");
            S0 h4 = h(k4);
            if (h4 != null) {
                h4.c(specialEffectsController$Operation$State, specialEffectsController$Operation$LifecycleImpact);
                return;
            }
            final Q0 q02 = new Q0(specialEffectsController$Operation$State, specialEffectsController$Operation$LifecycleImpact, z0Var, dVar);
            ((ArrayList) this.f3350b).add(q02);
            ((ArrayList) q02.f3335d).add(new Runnable(this) { // from class: androidx.fragment.app.O0

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ U0 f3321e;

                {
                    this.f3321e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (r3) {
                        case 0:
                            U0 this$0 = this.f3321e;
                            Q0 operation = q02;
                            kotlin.jvm.internal.h.e(this$0, "this$0");
                            kotlin.jvm.internal.h.e(operation, "$operation");
                            if (((ArrayList) this$0.f3350b).contains(operation)) {
                                SpecialEffectsController$Operation$State specialEffectsController$Operation$State2 = operation.f3332a;
                                View view = operation.f3334c.mView;
                                kotlin.jvm.internal.h.d(view, "operation.fragment.mView");
                                specialEffectsController$Operation$State2.a(view);
                                return;
                            }
                            return;
                        default:
                            U0 this$02 = this.f3321e;
                            Q0 operation2 = q02;
                            kotlin.jvm.internal.h.e(this$02, "this$0");
                            kotlin.jvm.internal.h.e(operation2, "$operation");
                            ((ArrayList) this$02.f3350b).remove(operation2);
                            ((ArrayList) this$02.f3351c).remove(operation2);
                            return;
                    }
                }
            });
            ((ArrayList) q02.f3335d).add(new Runnable(this) { // from class: androidx.fragment.app.O0

                /* renamed from: e  reason: collision with root package name */
                public final /* synthetic */ U0 f3321e;

                {
                    this.f3321e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    switch (r3) {
                        case 0:
                            U0 this$0 = this.f3321e;
                            Q0 operation = q02;
                            kotlin.jvm.internal.h.e(this$0, "this$0");
                            kotlin.jvm.internal.h.e(operation, "$operation");
                            if (((ArrayList) this$0.f3350b).contains(operation)) {
                                SpecialEffectsController$Operation$State specialEffectsController$Operation$State2 = operation.f3332a;
                                View view = operation.f3334c.mView;
                                kotlin.jvm.internal.h.d(view, "operation.fragment.mView");
                                specialEffectsController$Operation$State2.a(view);
                                return;
                            }
                            return;
                        default:
                            U0 this$02 = this.f3321e;
                            Q0 operation2 = q02;
                            kotlin.jvm.internal.h.e(this$02, "this$0");
                            kotlin.jvm.internal.h.e(operation2, "$operation");
                            ((ArrayList) this$02.f3350b).remove(operation2);
                            ((ArrayList) this$02.f3351c).remove(operation2);
                            return;
                    }
                }
            });
            e3.f fVar = e3.f.f9037a;
        }
    }

    public final void b(SpecialEffectsController$Operation$State specialEffectsController$Operation$State, z0 fragmentStateManager) {
        kotlin.jvm.internal.h.e(fragmentStateManager, "fragmentStateManager");
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + fragmentStateManager.f3543c);
        }
        a(specialEffectsController$Operation$State, SpecialEffectsController$Operation$LifecycleImpact.ADDING, fragmentStateManager);
    }

    public final void c(z0 fragmentStateManager) {
        kotlin.jvm.internal.h.e(fragmentStateManager, "fragmentStateManager");
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + fragmentStateManager.f3543c);
        }
        a(SpecialEffectsController$Operation$State.GONE, SpecialEffectsController$Operation$LifecycleImpact.NONE, fragmentStateManager);
    }

    public final void d(z0 fragmentStateManager) {
        kotlin.jvm.internal.h.e(fragmentStateManager, "fragmentStateManager");
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + fragmentStateManager.f3543c);
        }
        a(SpecialEffectsController$Operation$State.REMOVED, SpecialEffectsController$Operation$LifecycleImpact.REMOVING, fragmentStateManager);
    }

    public final void e(z0 fragmentStateManager) {
        kotlin.jvm.internal.h.e(fragmentStateManager, "fragmentStateManager");
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + fragmentStateManager.f3543c);
        }
        a(SpecialEffectsController$Operation$State.VISIBLE, SpecialEffectsController$Operation$LifecycleImpact.NONE, fragmentStateManager);
    }

    public abstract void f(List list, boolean z4);

    public final void g() {
        if (this.f3353e) {
            return;
        }
        ViewGroup viewGroup = this.f3349a;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        if (!androidx.core.view.A.b(viewGroup)) {
            i();
            this.f3352d = false;
            return;
        }
        synchronized (this.f3350b) {
            if (!this.f3350b.isEmpty()) {
                List l4 = kotlin.collections.s.l(this.f3351c);
                ((ArrayList) this.f3351c).clear();
                Iterator it = ((ArrayList) l4).iterator();
                while (it.hasNext()) {
                    S0 s02 = (S0) it.next();
                    if (AbstractC0220p0.H(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + s02);
                    }
                    s02.a();
                    if (!s02.f3338g) {
                        ((ArrayList) this.f3351c).add(s02);
                    }
                }
                l();
                List l5 = kotlin.collections.s.l(this.f3350b);
                ((ArrayList) this.f3350b).clear();
                ((ArrayList) this.f3351c).addAll(l5);
                if (AbstractC0220p0.H(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Executing pending operations");
                }
                Iterator it2 = ((ArrayList) l5).iterator();
                while (it2.hasNext()) {
                    ((S0) it2.next()).d();
                }
                f(l5, this.f3352d);
                this.f3352d = false;
                if (AbstractC0220p0.H(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Finished executing pending operations");
                }
            }
            e3.f fVar = e3.f.f9037a;
        }
    }

    public final S0 h(K k4) {
        Object obj;
        boolean z4;
        Iterator it = ((ArrayList) this.f3350b).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            S0 s02 = (S0) obj;
            if (!kotlin.jvm.internal.h.a(s02.f3334c, k4) || s02.f3337f) {
                z4 = false;
                continue;
            } else {
                z4 = true;
                continue;
            }
            if (z4) {
                break;
            }
        }
        return (S0) obj;
    }

    public final void i() {
        String str;
        String str2;
        if (AbstractC0220p0.H(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Forcing all operations to complete");
        }
        ViewGroup viewGroup = this.f3349a;
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        boolean b4 = androidx.core.view.A.b(viewGroup);
        synchronized (this.f3350b) {
            l();
            Iterator it = ((ArrayList) this.f3350b).iterator();
            while (it.hasNext()) {
                ((S0) it.next()).d();
            }
            Iterator it2 = ((ArrayList) kotlin.collections.s.l(this.f3351c)).iterator();
            while (it2.hasNext()) {
                S0 s02 = (S0) it2.next();
                if (AbstractC0220p0.H(2)) {
                    if (b4) {
                        str2 = "";
                    } else {
                        str2 = "Container " + this.f3349a + " is not attached to window. ";
                    }
                    Log.v("FragmentManager", "SpecialEffectsController: " + str2 + "Cancelling running operation " + s02);
                }
                s02.a();
            }
            Iterator it3 = ((ArrayList) kotlin.collections.s.l(this.f3350b)).iterator();
            while (it3.hasNext()) {
                S0 s03 = (S0) it3.next();
                if (AbstractC0220p0.H(2)) {
                    if (b4) {
                        str = "";
                    } else {
                        str = "Container " + this.f3349a + " is not attached to window. ";
                    }
                    Log.v("FragmentManager", "SpecialEffectsController: " + str + "Cancelling pending operation " + s03);
                }
                s03.a();
            }
            e3.f fVar = e3.f.f9037a;
        }
    }

    public final void k() {
        Object obj;
        boolean z4;
        synchronized (this.f3350b) {
            l();
            ArrayList arrayList = (ArrayList) this.f3350b;
            ListIterator listIterator = arrayList.listIterator(arrayList.size());
            while (true) {
                if (!listIterator.hasPrevious()) {
                    obj = null;
                    break;
                }
                obj = listIterator.previous();
                S0 s02 = (S0) obj;
                View view = s02.f3334c.mView;
                kotlin.jvm.internal.h.d(view, "operation.fragment.mView");
                SpecialEffectsController$Operation$State a4 = P0.a(view);
                SpecialEffectsController$Operation$State specialEffectsController$Operation$State = s02.f3332a;
                SpecialEffectsController$Operation$State specialEffectsController$Operation$State2 = SpecialEffectsController$Operation$State.VISIBLE;
                if (specialEffectsController$Operation$State != specialEffectsController$Operation$State2 || a4 == specialEffectsController$Operation$State2) {
                    z4 = false;
                    continue;
                } else {
                    z4 = true;
                    continue;
                }
                if (z4) {
                    break;
                }
            }
            S0 s03 = (S0) obj;
            K k4 = s03 != null ? s03.f3334c : null;
            this.f3353e = k4 != null ? k4.isPostponed() : false;
            e3.f fVar = e3.f.f9037a;
        }
    }

    public final void l() {
        SpecialEffectsController$Operation$State specialEffectsController$Operation$State;
        Iterator it = ((ArrayList) this.f3350b).iterator();
        while (it.hasNext()) {
            S0 s02 = (S0) it.next();
            if (s02.f3333b == SpecialEffectsController$Operation$LifecycleImpact.ADDING) {
                View requireView = s02.f3334c.requireView();
                kotlin.jvm.internal.h.d(requireView, "fragment.requireView()");
                int visibility = requireView.getVisibility();
                if (visibility == 0) {
                    specialEffectsController$Operation$State = SpecialEffectsController$Operation$State.VISIBLE;
                } else if (visibility == 4) {
                    specialEffectsController$Operation$State = SpecialEffectsController$Operation$State.INVISIBLE;
                } else if (visibility != 8) {
                    throw new IllegalArgumentException(C1080K.a("Unknown visibility ", visibility));
                } else {
                    specialEffectsController$Operation$State = SpecialEffectsController$Operation$State.GONE;
                }
                s02.c(specialEffectsController$Operation$State, SpecialEffectsController$Operation$LifecycleImpact.NONE);
            }
        }
    }
}
