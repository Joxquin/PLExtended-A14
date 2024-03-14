package androidx.core.view;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
/* renamed from: androidx.core.view.j  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0173j {

    /* renamed from: a  reason: collision with root package name */
    public final Runnable f3117a;

    /* renamed from: b  reason: collision with root package name */
    public final CopyOnWriteArrayList f3118b = new CopyOnWriteArrayList();

    /* renamed from: c  reason: collision with root package name */
    public final Map f3119c = new HashMap();

    public C0173j(Runnable runnable) {
        this.f3117a = runnable;
    }

    public final void a(InterfaceC0174k interfaceC0174k) {
        this.f3118b.remove(interfaceC0174k);
        C0172i c0172i = (C0172i) ((HashMap) this.f3119c).remove(interfaceC0174k);
        if (c0172i != null) {
            c0172i.f3115a.c(c0172i.f3116b);
            c0172i.f3116b = null;
        }
        this.f3117a.run();
    }
}
