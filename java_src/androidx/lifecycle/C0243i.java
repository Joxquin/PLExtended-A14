package androidx.lifecycle;

import a0.C0152e;
import a0.InterfaceC0150c;
import a0.InterfaceC0154g;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.i  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0243i implements InterfaceC0150c {
    @Override // a0.InterfaceC0150c
    public final void a(InterfaceC0154g interfaceC0154g) {
        Map map;
        if (!(interfaceC0154g instanceof V)) {
            throw new IllegalStateException("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner");
        }
        U viewModelStore = ((V) interfaceC0154g).getViewModelStore();
        C0152e savedStateRegistry = interfaceC0154g.getSavedStateRegistry();
        viewModelStore.getClass();
        Iterator it = new HashSet(((LinkedHashMap) viewModelStore.f3600a).keySet()).iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            map = viewModelStore.f3600a;
            if (!hasNext) {
                break;
            }
            String key = (String) it.next();
            kotlin.jvm.internal.h.e(key, "key");
            C0244j.a((N) ((LinkedHashMap) map).get(key), savedStateRegistry, interfaceC0154g.getLifecycle());
        }
        if (new HashSet(((LinkedHashMap) map).keySet()).isEmpty()) {
            return;
        }
        savedStateRegistry.d();
    }
}
