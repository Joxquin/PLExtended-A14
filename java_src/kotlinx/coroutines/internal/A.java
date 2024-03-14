package kotlinx.coroutines.internal;

import kotlinx.coroutines.AbstractC1225a;
import kotlinx.coroutines.C1254t;
/* loaded from: classes.dex */
public class A extends AbstractC1225a implements g3.b {

    /* renamed from: g  reason: collision with root package name */
    public final kotlin.coroutines.c f11439g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public A(kotlin.coroutines.c uCont, kotlin.coroutines.i context) {
        super(context, true);
        kotlin.jvm.internal.h.e(context, "context");
        kotlin.jvm.internal.h.e(uCont, "uCont");
        this.f11439g = uCont;
    }

    @Override // kotlinx.coroutines.h0
    public final void C(Object obj) {
        kotlin.coroutines.c cVar = this.f11439g;
        C1241h.a(kotlin.coroutines.intrinsics.a.b(cVar), C1254t.a(obj, cVar), null);
    }

    @Override // kotlinx.coroutines.h0
    public void D(Object obj) {
        kotlin.coroutines.c cVar = this.f11439g;
        cVar.resumeWith(C1254t.a(obj, cVar));
    }

    @Override // kotlinx.coroutines.h0
    public final boolean Q() {
        return true;
    }

    @Override // g3.b
    public final g3.b getCallerFrame() {
        kotlin.coroutines.c cVar = this.f11439g;
        if (cVar instanceof g3.b) {
            return (g3.b) cVar;
        }
        return null;
    }
}
