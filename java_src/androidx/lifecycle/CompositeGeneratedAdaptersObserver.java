package androidx.lifecycle;

import java.util.HashMap;
/* loaded from: classes.dex */
public final class CompositeGeneratedAdaptersObserver implements InterfaceC0249o {

    /* renamed from: d  reason: collision with root package name */
    public final InterfaceC0241g[] f3546d;

    public CompositeGeneratedAdaptersObserver(InterfaceC0241g[] interfaceC0241gArr) {
        this.f3546d = interfaceC0241gArr;
    }

    @Override // androidx.lifecycle.InterfaceC0249o
    public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
        new HashMap();
        InterfaceC0241g[] interfaceC0241gArr = this.f3546d;
        for (InterfaceC0241g interfaceC0241g : interfaceC0241gArr) {
            interfaceC0241g.a();
        }
        for (InterfaceC0241g interfaceC0241g2 : interfaceC0241gArr) {
            interfaceC0241g2.a();
        }
    }
}
