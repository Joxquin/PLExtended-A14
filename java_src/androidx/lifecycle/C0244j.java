package androidx.lifecycle;

import a0.C0152e;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.lifecycle.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0244j {
    public static void a(N n4, C0152e c0152e, AbstractC0247m abstractC0247m) {
        Object obj;
        boolean z4;
        Map map = n4.f3580a;
        if (map == null) {
            obj = null;
        } else {
            synchronized (map) {
                obj = ((HashMap) n4.f3580a).get("androidx.lifecycle.savedstate.vm.tag");
            }
        }
        SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
        if (savedStateHandleController == null || (z4 = savedStateHandleController.f3593e)) {
            return;
        }
        if (z4) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        savedStateHandleController.f3593e = true;
        abstractC0247m.a(savedStateHandleController);
        c0152e.c(savedStateHandleController.f3592d, savedStateHandleController.f3594f.f3556e);
        b(abstractC0247m, c0152e);
    }

    public static void b(final AbstractC0247m abstractC0247m, final C0152e c0152e) {
        Lifecycle$State b4 = abstractC0247m.b();
        if (b4 != Lifecycle$State.INITIALIZED) {
            if (!(b4.compareTo(Lifecycle$State.STARTED) >= 0)) {
                abstractC0247m.a(new InterfaceC0249o() { // from class: androidx.lifecycle.LegacySavedStateHandleController$1
                    @Override // androidx.lifecycle.InterfaceC0249o
                    public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
                        if (lifecycle$Event == Lifecycle$Event.ON_START) {
                            AbstractC0247m.this.c(this);
                            c0152e.d();
                        }
                    }
                });
                return;
            }
        }
        c0152e.d();
    }
}
