package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    public Lifecycle$State f3612a;

    /* renamed from: b  reason: collision with root package name */
    public final InterfaceC0249o f3613b;

    public r(InterfaceC0250p interfaceC0250p, Lifecycle$State lifecycle$State) {
        InterfaceC0249o reflectiveGenericLifecycleObserver;
        kotlin.jvm.internal.h.b(interfaceC0250p);
        Map map = C0254u.f3622a;
        boolean z4 = interfaceC0250p instanceof InterfaceC0249o;
        boolean z5 = interfaceC0250p instanceof InterfaceC0239e;
        if (z4 && z5) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((InterfaceC0239e) interfaceC0250p, (InterfaceC0249o) interfaceC0250p);
        } else if (z5) {
            reflectiveGenericLifecycleObserver = new DefaultLifecycleObserverAdapter((InterfaceC0239e) interfaceC0250p, null);
        } else if (z4) {
            reflectiveGenericLifecycleObserver = (InterfaceC0249o) interfaceC0250p;
        } else {
            Class<?> cls = interfaceC0250p.getClass();
            if (C0254u.b(cls) == 2) {
                Object obj = ((HashMap) C0254u.f3623b).get(cls);
                kotlin.jvm.internal.h.b(obj);
                List list = (List) obj;
                if (list.size() == 1) {
                    reflectiveGenericLifecycleObserver = new SingleGeneratedAdapterObserver(C0254u.a((Constructor) list.get(0), interfaceC0250p));
                } else {
                    int size = list.size();
                    InterfaceC0241g[] interfaceC0241gArr = new InterfaceC0241g[size];
                    for (int i4 = 0; i4 < size; i4++) {
                        interfaceC0241gArr[i4] = C0254u.a((Constructor) list.get(i4), interfaceC0250p);
                    }
                    reflectiveGenericLifecycleObserver = new CompositeGeneratedAdaptersObserver(interfaceC0241gArr);
                }
            } else {
                reflectiveGenericLifecycleObserver = new ReflectiveGenericLifecycleObserver(interfaceC0250p);
            }
        }
        this.f3613b = reflectiveGenericLifecycleObserver;
        this.f3612a = lifecycle$State;
    }

    public final void a(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
        Lifecycle$State a4 = lifecycle$Event.a();
        Lifecycle$State state1 = this.f3612a;
        kotlin.jvm.internal.h.e(state1, "state1");
        if (a4.compareTo(state1) < 0) {
            state1 = a4;
        }
        this.f3612a = state1;
        this.f3613b.b(interfaceC0251q, lifecycle$Event);
        this.f3612a = a4;
    }
}
