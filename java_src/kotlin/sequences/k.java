package kotlin.sequences;

import java.util.Iterator;
/* loaded from: classes.dex */
public final class k implements g {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ m3.p f11288a;

    public k(m3.p pVar) {
        this.f11288a = pVar;
    }

    @Override // kotlin.sequences.g
    public final Iterator iterator() {
        m3.p block = this.f11288a;
        kotlin.jvm.internal.h.e(block, "block");
        h hVar = new h();
        hVar.f11287g = kotlin.coroutines.intrinsics.a.a(hVar, hVar, block);
        return hVar;
    }
}
