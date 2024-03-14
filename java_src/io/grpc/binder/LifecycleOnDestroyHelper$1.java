package io.grpc.binder;

import androidx.lifecycle.InterfaceC0249o;
import androidx.lifecycle.InterfaceC0251q;
import androidx.lifecycle.Lifecycle$Event;
/* loaded from: classes.dex */
class LifecycleOnDestroyHelper$1 implements InterfaceC0249o {
    @Override // androidx.lifecycle.InterfaceC0249o
    public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event != Lifecycle$Event.ON_DESTROY) {
            return;
        }
        interfaceC0251q.getLifecycle().c(this);
        throw null;
    }
}
