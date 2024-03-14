package androidx.lifecycle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class SavedStateHandleController implements InterfaceC0249o {

    /* renamed from: d  reason: collision with root package name */
    public final String f3592d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f3593e = false;

    /* renamed from: f  reason: collision with root package name */
    public final G f3594f;

    public SavedStateHandleController(String str, G g4) {
        this.f3592d = str;
        this.f3594f = g4;
    }

    @Override // androidx.lifecycle.InterfaceC0249o
    public final void b(InterfaceC0251q interfaceC0251q, Lifecycle$Event lifecycle$Event) {
        if (lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
            this.f3593e = false;
            interfaceC0251q.getLifecycle().c(this);
        }
    }
}
