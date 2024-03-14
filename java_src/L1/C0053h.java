package L1;

import android.os.Bundle;
import java.lang.ref.WeakReference;
/* renamed from: L1.h  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0053h implements InterfaceC0047b {

    /* renamed from: a  reason: collision with root package name */
    public final WeakReference f1178a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f1179b;

    public C0053h(InterfaceC0047b interfaceC0047b, C0054i c0054i) {
        Object obj = new Object();
        this.f1179b = obj;
        c0054i.f1185f.put(obj, interfaceC0047b);
        this.f1178a = new WeakReference(c0054i);
    }

    @Override // L1.InterfaceC0047b
    public final void a(Bundle bundle) {
        C0054i c0054i = (C0054i) this.f1178a.get();
        if (c0054i == null) {
            M1.b.c("Callback received after service wrapper was recycled");
            return;
        }
        InterfaceC0047b interfaceC0047b = (InterfaceC0047b) c0054i.f1185f.remove(this.f1179b);
        if (interfaceC0047b != null) {
            interfaceC0047b.a(bundle);
        } else {
            M1.b.c("Callback received after calling UI was recycled");
        }
    }
}
