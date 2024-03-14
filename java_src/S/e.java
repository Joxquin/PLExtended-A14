package s;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
/* loaded from: classes.dex */
public final class e extends b {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f12171a;

    /* renamed from: b  reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f12172b;

    /* renamed from: c  reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f12173c;

    /* renamed from: d  reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f12174d;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f12175e;

    public e(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f12171a = atomicReferenceFieldUpdater;
        this.f12172b = atomicReferenceFieldUpdater2;
        this.f12173c = atomicReferenceFieldUpdater3;
        this.f12174d = atomicReferenceFieldUpdater4;
        this.f12175e = atomicReferenceFieldUpdater5;
    }

    @Override // s.b
    public final boolean a(i iVar, d dVar, d dVar2) {
        return this.f12174d.compareAndSet(iVar, dVar, dVar2);
    }

    @Override // s.b
    public final boolean b(i iVar, Object obj, Object obj2) {
        return this.f12175e.compareAndSet(iVar, obj, obj2);
    }

    @Override // s.b
    public final boolean c(i iVar, h hVar, h hVar2) {
        return this.f12173c.compareAndSet(iVar, hVar, hVar2);
    }

    @Override // s.b
    public final void d(h hVar, h hVar2) {
        this.f12172b.lazySet(hVar, hVar2);
    }

    @Override // s.b
    public final void e(h hVar, Thread thread) {
        this.f12171a.lazySet(hVar, thread);
    }
}
