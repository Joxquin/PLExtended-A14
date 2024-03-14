package androidx.lifecycle;

import java.util.HashMap;
import java.util.List;
@Deprecated
/* loaded from: classes.dex */
class ReflectiveGenericLifecycleObserver implements InterfaceC0249o {

    /* renamed from: d  reason: collision with root package name */
    public final Object f3588d;

    /* renamed from: e  reason: collision with root package name */
    public final C0236b f3589e;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f3588d = obj;
        this.f3589e = C0238d.f3607c.b(obj.getClass());
    }

    @Override // androidx.lifecycle.InterfaceC0249o
    public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
        HashMap hashMap = (HashMap) this.f3589e.f3603a;
        Object obj = this.f3588d;
        C0236b.a((List) hashMap.get(lifecycle$Event), interfaceC0251q, lifecycle$Event, obj);
        C0236b.a((List) hashMap.get(Lifecycle$Event.ON_ANY), interfaceC0251q, lifecycle$Event, obj);
    }
}
