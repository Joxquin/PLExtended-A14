package androidx.lifecycle;
/* loaded from: classes.dex */
public final class DefaultLifecycleObserverAdapter implements InterfaceC0249o {

    /* renamed from: d  reason: collision with root package name */
    public final InterfaceC0239e f3547d;

    /* renamed from: e  reason: collision with root package name */
    public final InterfaceC0249o f3548e;

    public DefaultLifecycleObserverAdapter(InterfaceC0239e defaultLifecycleObserver, InterfaceC0249o interfaceC0249o) {
        kotlin.jvm.internal.h.e(defaultLifecycleObserver, "defaultLifecycleObserver");
        this.f3547d = defaultLifecycleObserver;
        this.f3548e = interfaceC0249o;
    }

    @Override // androidx.lifecycle.InterfaceC0249o
    public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
        int i4 = C0240f.f3610a[lifecycle$Event.ordinal()];
        InterfaceC0239e interfaceC0239e = this.f3547d;
        switch (i4) {
            case 1:
                interfaceC0239e.getClass();
                break;
            case 2:
                interfaceC0239e.getClass();
                break;
            case 3:
                interfaceC0239e.a(interfaceC0251q);
                break;
            case 4:
                interfaceC0239e.getClass();
                break;
            case 5:
                interfaceC0239e.getClass();
                break;
            case 6:
                interfaceC0239e.getClass();
                break;
            case 7:
                throw new IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        InterfaceC0249o interfaceC0249o = this.f3548e;
        if (interfaceC0249o != null) {
            interfaceC0249o.b(interfaceC0251q, lifecycle$Event);
        }
    }
}
