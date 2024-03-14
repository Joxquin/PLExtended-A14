package androidx.savedstate;

import E.c;
import a0.InterfaceC0150c;
import a0.InterfaceC0154g;
import android.os.Bundle;
import androidx.constraintlayout.widget.j;
import androidx.lifecycle.InterfaceC0249o;
import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.Lifecycle$Event;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class Recreator implements InterfaceC0249o {

    /* renamed from: d  reason: collision with root package name */
    public final InterfaceC0154g f4049d;

    public Recreator(InterfaceC0154g owner) {
        h.e(owner, "owner");
        this.f4049d = owner;
    }

    @Override // androidx.lifecycle.InterfaceC0249o
    public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event != Lifecycle$Event.ON_CREATE) {
            throw new AssertionError("Next event must be ON_CREATE");
        }
        interfaceC0251q.getLifecycle().c(this);
        InterfaceC0154g interfaceC0154g = this.f4049d;
        Bundle a4 = interfaceC0154g.getSavedStateRegistry().a("androidx.savedstate.Restarter");
        if (a4 == null) {
            return;
        }
        ArrayList<String> stringArrayList = a4.getStringArrayList("classes_to_restore");
        if (stringArrayList == null) {
            throw new IllegalStateException("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
        }
        for (String str : stringArrayList) {
            try {
                Class<? extends U> asSubclass = Class.forName(str, false, Recreator.class.getClassLoader()).asSubclass(InterfaceC0150c.class);
                h.d(asSubclass, "{\n                Class.…class.java)\n            }");
                try {
                    Constructor declaredConstructor = asSubclass.getDeclaredConstructor(new Class[0]);
                    declaredConstructor.setAccessible(true);
                    try {
                        Object newInstance = declaredConstructor.newInstance(new Object[0]);
                        h.d(newInstance, "{\n                constr…wInstance()\n            }");
                        ((InterfaceC0150c) newInstance).a(interfaceC0154g);
                    } catch (Exception e4) {
                        throw new RuntimeException(j.a("Failed to instantiate ", str), e4);
                    }
                } catch (NoSuchMethodException e5) {
                    throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e5);
                }
            } catch (ClassNotFoundException e6) {
                throw new RuntimeException(c.a("Class ", str, " wasn't found"), e6);
            }
        }
    }
}
