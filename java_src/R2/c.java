package R2;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes.dex */
public final class c extends a {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f1659a;

    /* renamed from: b  reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f1660b;

    /* renamed from: c  reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f1661c;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f1662d;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f1663e;

    public c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f1659a = atomicReferenceFieldUpdater;
        this.f1660b = atomicReferenceFieldUpdater2;
        this.f1661c = atomicReferenceFieldUpdater3;
        this.f1662d = atomicReferenceFieldUpdater4;
        this.f1663e = atomicReferenceFieldUpdater5;
    }

    @Override // R2.a
    public final boolean a(com.google.common.util.concurrent.c cVar, com.google.common.util.concurrent.b bVar, com.google.common.util.concurrent.b bVar2) {
        return this.f1662d.compareAndSet(cVar, bVar, bVar2);
    }

    @Override // R2.a
    public final boolean b(com.google.common.util.concurrent.c cVar, Object obj, Object obj2) {
        return this.f1663e.compareAndSet(cVar, obj, obj2);
    }

    @Override // R2.a
    public final boolean c(com.google.common.util.concurrent.c cVar, h hVar, h hVar2) {
        return this.f1661c.compareAndSet(cVar, hVar, hVar2);
    }

    @Override // R2.a
    public final com.google.common.util.concurrent.b d(com.google.common.util.concurrent.c cVar, com.google.common.util.concurrent.b bVar) {
        return (com.google.common.util.concurrent.b) this.f1662d.getAndSet(cVar, bVar);
    }

    @Override // R2.a
    public final h e(com.google.common.util.concurrent.c cVar) {
        return (h) this.f1661c.getAndSet(cVar, h.f1670c);
    }

    @Override // R2.a
    public final void f(h hVar, h hVar2) {
        this.f1660b.lazySet(hVar, hVar2);
    }

    @Override // R2.a
    public final void g(h hVar, Thread thread) {
        this.f1659a.lazySet(hVar, thread);
    }
}
