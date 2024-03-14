package b3;

import O2.i;
import O2.m;
import X2.L0;
import X2.W;
import X2.Y;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
/* loaded from: classes.dex */
public final class c extends e {

    /* renamed from: c  reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f4240c = AtomicIntegerFieldUpdater.newUpdater(c.class, "b");

    /* renamed from: a  reason: collision with root package name */
    public final List f4241a;

    /* renamed from: b  reason: collision with root package name */
    public volatile int f4242b;

    public c(int i4, List list) {
        m.b("empty list", !((ArrayList) list).isEmpty());
        this.f4241a = list;
        this.f4242b = i4 - 1;
    }

    @Override // X2.V
    public final W e() {
        List list = this.f4241a;
        int size = list.size();
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f4240c;
        int incrementAndGet = atomicIntegerFieldUpdater.incrementAndGet(this);
        if (incrementAndGet >= size) {
            int i4 = incrementAndGet % size;
            atomicIntegerFieldUpdater.compareAndSet(this, incrementAndGet, i4);
            incrementAndGet = i4;
        }
        Y y4 = (Y) list.get(incrementAndGet);
        m.h(y4, "subchannel");
        return new W(y4, L0.f2126e, false);
    }

    @Override // b3.e
    public final boolean h(e eVar) {
        if (eVar instanceof c) {
            c cVar = (c) eVar;
            if (cVar != this) {
                List list = this.f4241a;
                if (list.size() != cVar.f4241a.size() || !new HashSet(list).containsAll(cVar.f4241a)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public final String toString() {
        i iVar = new i(c.class.getSimpleName());
        iVar.a(this.f4241a, "list");
        return iVar.toString();
    }
}
