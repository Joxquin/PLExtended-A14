package androidx.lifecycle;

import a0.InterfaceC0151d;
import a0.InterfaceC0154g;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class I {

    /* renamed from: a  reason: collision with root package name */
    public static final H f3557a = new H();

    /* renamed from: b  reason: collision with root package name */
    public static final H f3558b = new H();

    /* renamed from: c  reason: collision with root package name */
    public static final H f3559c = new H();

    public static final G a(V.d dVar) {
        H h4 = f3557a;
        Map map = dVar.f1779a;
        InterfaceC0154g interfaceC0154g = (InterfaceC0154g) ((LinkedHashMap) map).get(h4);
        if (interfaceC0154g != null) {
            V v4 = (V) ((LinkedHashMap) map).get(f3558b);
            if (v4 != null) {
                Bundle bundle = (Bundle) ((LinkedHashMap) map).get(f3559c);
                String str = (String) ((LinkedHashMap) map).get(O.f3584b);
                if (str != null) {
                    InterfaceC0151d b4 = interfaceC0154g.getSavedStateRegistry().b();
                    J j4 = b4 instanceof J ? (J) b4 : null;
                    if (j4 != null) {
                        Map map2 = c(v4).f3564d;
                        G g4 = (G) ((LinkedHashMap) map2).get(str);
                        if (g4 == null) {
                            Class[] clsArr = G.f3551f;
                            boolean z4 = true;
                            if (!j4.f3561b) {
                                j4.f3562c = j4.f3560a.a("androidx.lifecycle.internal.SavedStateHandlesProvider");
                                j4.f3561b = true;
                                K k4 = (K) j4.f3563d.getValue();
                            }
                            Bundle bundle2 = j4.f3562c;
                            Bundle bundle3 = bundle2 != null ? bundle2.getBundle(str) : null;
                            Bundle bundle4 = j4.f3562c;
                            if (bundle4 != null) {
                                bundle4.remove(str);
                            }
                            Bundle bundle5 = j4.f3562c;
                            if ((bundle5 == null || !bundle5.isEmpty()) ? false : false) {
                                j4.f3562c = null;
                            }
                            G a4 = F.a(bundle3, bundle);
                            map2.put(str, a4);
                            return a4;
                        }
                        return g4;
                    }
                    throw new IllegalStateException("enableSavedStateHandles() wasn't called prior to createSavedStateHandle() call");
                }
                throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_KEY`");
            }
            throw new IllegalArgumentException("CreationExtras must have a value by `VIEW_MODEL_STORE_OWNER_KEY`");
        }
        throw new IllegalArgumentException("CreationExtras must have a value by `SAVED_STATE_REGISTRY_OWNER_KEY`");
    }

    public static final void b(InterfaceC0154g interfaceC0154g) {
        kotlin.jvm.internal.h.e(interfaceC0154g, "<this>");
        Lifecycle$State b4 = interfaceC0154g.getLifecycle().b();
        kotlin.jvm.internal.h.d(b4, "lifecycle.currentState");
        if (!(b4 == Lifecycle$State.INITIALIZED || b4 == Lifecycle$State.CREATED)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (interfaceC0154g.getSavedStateRegistry().b() == null) {
            J j4 = new J(interfaceC0154g.getSavedStateRegistry(), (V) interfaceC0154g);
            interfaceC0154g.getSavedStateRegistry().c("androidx.lifecycle.internal.SavedStateHandlesProvider", j4);
            interfaceC0154g.getLifecycle().a(new SavedStateHandleAttacher(j4));
        }
    }

    public static final K c(V v4) {
        kotlin.jvm.internal.h.e(v4, "<this>");
        ArrayList arrayList = new ArrayList();
        SavedStateHandleSupport$savedStateHandlesVM$1$1 initializer = new m3.l() { // from class: androidx.lifecycle.SavedStateHandleSupport$savedStateHandlesVM$1$1
            @Override // m3.l
            public final Object invoke(Object obj) {
                V.b initializer2 = (V.b) obj;
                kotlin.jvm.internal.h.e(initializer2, "$this$initializer");
                return new K();
            }
        };
        kotlin.jvm.internal.d a4 = kotlin.jvm.internal.j.a(K.class);
        kotlin.jvm.internal.h.e(initializer, "initializer");
        Class a5 = a4.a();
        kotlin.jvm.internal.h.c(a5, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>");
        arrayList.add(new V.e(a5, initializer));
        V.e[] eVarArr = (V.e[]) arrayList.toArray(new V.e[0]);
        return (K) new T(v4.getViewModelStore(), new V.c((V.e[]) Arrays.copyOf(eVarArr, eVarArr.length)), v4 instanceof InterfaceC0242h ? ((InterfaceC0242h) v4).getDefaultViewModelCreationExtras() : V.a.f1778b).b(K.class, "androidx.lifecycle.internal.SavedStateHandlesVM");
    }
}
