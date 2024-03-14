package v3;

import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicReferenceArray f12682a = new AtomicReferenceArray(128);

    /* renamed from: b  reason: collision with root package name */
    public final t3.f f12683b = t3.c.d(null);

    /* renamed from: c  reason: collision with root package name */
    public final t3.d f12684c = t3.c.b(0);

    /* renamed from: d  reason: collision with root package name */
    public final t3.d f12685d = t3.c.b(0);

    /* renamed from: e  reason: collision with root package name */
    public final t3.d f12686e = t3.c.b(0);

    public final i a(i iVar) {
        if (this.f12684c.f12360b - this.f12685d.f12360b == 127) {
            return iVar;
        }
        if (iVar.f12670e.b() == 1) {
            this.f12686e.c();
        }
        int i4 = this.f12684c.f12360b & 127;
        while (this.f12682a.get(i4) != null) {
            Thread.yield();
        }
        this.f12682a.lazySet(i4, iVar);
        this.f12684c.c();
        return null;
    }

    public final i b() {
        i iVar;
        while (true) {
            int i4 = this.f12685d.f12360b;
            if (i4 - this.f12684c.f12360b == 0) {
                return null;
            }
            int i5 = i4 & 127;
            if (this.f12685d.a(i4, i4 + 1) && (iVar = (i) this.f12682a.getAndSet(i5, null)) != null) {
                if (iVar.f12670e.b() == 1) {
                    this.f12686e.b();
                }
                return iVar;
            }
        }
    }

    public final i c(int i4, boolean z4) {
        int i5 = i4 & 127;
        AtomicReferenceArray atomicReferenceArray = this.f12682a;
        i iVar = (i) atomicReferenceArray.get(i5);
        if (iVar != null) {
            if ((iVar.f12670e.b() == 1) == z4 && atomicReferenceArray.compareAndSet(i5, iVar, null)) {
                if (z4) {
                    this.f12686e.b();
                }
                return iVar;
            }
        }
        return null;
    }
}
