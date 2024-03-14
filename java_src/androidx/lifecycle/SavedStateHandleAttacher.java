package androidx.lifecycle;
/* loaded from: classes.dex */
public final class SavedStateHandleAttacher implements InterfaceC0249o {

    /* renamed from: d  reason: collision with root package name */
    public final J f3591d;

    public SavedStateHandleAttacher(J j4) {
        this.f3591d = j4;
    }

    @Override // androidx.lifecycle.InterfaceC0249o
    public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
        if (!(lifecycle$Event == Lifecycle$Event.ON_CREATE)) {
            throw new IllegalStateException(("Next event must be ON_CREATE, it was " + lifecycle$Event).toString());
        }
        interfaceC0251q.getLifecycle().c(this);
        J j4 = this.f3591d;
        if (j4.f3561b) {
            return;
        }
        j4.f3562c = j4.f3560a.a("androidx.lifecycle.internal.SavedStateHandlesProvider");
        j4.f3561b = true;
        K k4 = (K) j4.f3563d.getValue();
    }
}
