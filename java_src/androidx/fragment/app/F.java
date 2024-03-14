package androidx.fragment.app;

import c.AbstractC0318b;
import java.util.concurrent.atomic.AtomicReference;
import n.InterfaceC1312a;
/* loaded from: classes.dex */
public final class F extends H {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ InterfaceC1312a f3252a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ AtomicReference f3253b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ AbstractC0318b f3254c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ androidx.activity.result.c f3255d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ K f3256e;

    public F(K k4, InterfaceC1312a interfaceC1312a, AtomicReference atomicReference, AbstractC0318b abstractC0318b, androidx.activity.result.c cVar) {
        this.f3256e = k4;
        this.f3252a = interfaceC1312a;
        this.f3253b = atomicReference;
        this.f3254c = abstractC0318b;
        this.f3255d = cVar;
    }

    @Override // androidx.fragment.app.H
    public final void a() {
        K k4 = this.f3256e;
        this.f3253b.set(this.f3252a.a().c(k4.generateActivityResultKey(), k4, this.f3254c, this.f3255d));
    }
}
