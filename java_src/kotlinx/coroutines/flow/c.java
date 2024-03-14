package kotlinx.coroutines.flow;

import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.Ref$ObjectRef;
import m3.p;
/* loaded from: classes.dex */
public final class c implements d {

    /* renamed from: a  reason: collision with root package name */
    public final d f11399a;

    /* renamed from: b  reason: collision with root package name */
    public final m3.l f11400b;

    /* renamed from: c  reason: collision with root package name */
    public final p f11401c;

    public c(d upstream) {
        m3.l keySelector = i.f11403a;
        p areEquivalent = i.f11404b;
        kotlin.jvm.internal.h.e(upstream, "upstream");
        kotlin.jvm.internal.h.e(keySelector, "keySelector");
        kotlin.jvm.internal.h.e(areEquivalent, "areEquivalent");
        this.f11399a = upstream;
        this.f11400b = keySelector;
        this.f11401c = areEquivalent;
    }

    @Override // kotlinx.coroutines.flow.d
    public final Object a(e eVar, kotlin.coroutines.c cVar) {
        Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = kotlinx.coroutines.flow.internal.e.f11414a;
        Object a4 = this.f11399a.a(new b(this, ref$ObjectRef, eVar), cVar);
        return a4 == CoroutineSingletons.COROUTINE_SUSPENDED ? a4 : e3.f.f9037a;
    }
}
