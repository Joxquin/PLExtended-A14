package x3;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final l f12915a = new l(new byte[0], 0, 0, false);

    /* renamed from: b  reason: collision with root package name */
    public static final int f12916b;

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicReference[] f12917c;

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f12916b = highestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i4 = 0; i4 < highestOneBit; i4++) {
            atomicReferenceArr[i4] = new AtomicReference();
        }
        f12917c = atomicReferenceArr;
    }

    public static final void a(l lVar) {
        if (!(lVar.f12913f == null && lVar.f12914g == null)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        if (lVar.f12911d) {
            return;
        }
        AtomicReference atomicReference = f12917c[(int) (Thread.currentThread().getId() & (f12916b - 1))];
        l lVar2 = (l) atomicReference.get();
        if (lVar2 == f12915a) {
            return;
        }
        int i4 = lVar2 != null ? lVar2.f12910c : 0;
        if (i4 >= 65536) {
            return;
        }
        lVar.f12913f = lVar2;
        lVar.f12909b = 0;
        lVar.f12910c = i4 + 8192;
        if (atomicReference.compareAndSet(lVar2, lVar)) {
            return;
        }
        lVar.f12913f = null;
    }

    public static final l b() {
        AtomicReference atomicReference = f12917c[(int) (Thread.currentThread().getId() & (f12916b - 1))];
        l lVar = f12915a;
        l lVar2 = (l) atomicReference.getAndSet(lVar);
        if (lVar2 == lVar) {
            return new l();
        }
        if (lVar2 == null) {
            atomicReference.set(null);
            return new l();
        }
        atomicReference.set(lVar2.f12913f);
        lVar2.f12913f = null;
        lVar2.f12910c = 0;
        return lVar2;
    }
}
