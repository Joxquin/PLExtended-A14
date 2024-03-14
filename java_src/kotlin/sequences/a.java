package kotlin.sequences;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public final class a implements g {

    /* renamed from: a  reason: collision with root package name */
    public final AtomicReference f11270a;

    public a(m mVar) {
        this.f11270a = new AtomicReference(mVar);
    }

    @Override // kotlin.sequences.g
    public final Iterator iterator() {
        g gVar = (g) this.f11270a.getAndSet(null);
        if (gVar != null) {
            return gVar.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
