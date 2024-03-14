package kotlin.sequences;

import java.util.Iterator;
/* loaded from: classes.dex */
public final class p implements g {

    /* renamed from: a  reason: collision with root package name */
    public final g f11292a;

    /* renamed from: b  reason: collision with root package name */
    public final m3.l f11293b;

    public p(g gVar, m3.l transformer) {
        kotlin.jvm.internal.h.e(transformer, "transformer");
        this.f11292a = gVar;
        this.f11293b = transformer;
    }

    @Override // kotlin.sequences.g
    public final Iterator iterator() {
        return new o(this);
    }
}
