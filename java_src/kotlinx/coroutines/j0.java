package kotlinx.coroutines;

import kotlinx.coroutines.internal.C1241h;
/* loaded from: classes.dex */
public final class j0 extends q0 {

    /* renamed from: g  reason: collision with root package name */
    public final kotlin.coroutines.c f11497g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j0(kotlin.coroutines.i parentContext, m3.p pVar) {
        super(parentContext, false);
        kotlin.jvm.internal.h.e(parentContext, "parentContext");
        this.f11497g = kotlin.coroutines.intrinsics.a.a(this, this, pVar);
    }

    @Override // kotlinx.coroutines.h0
    public final void W() {
        kotlin.coroutines.c cVar = this.f11497g;
        kotlin.jvm.internal.h.e(cVar, "<this>");
        try {
            C1241h.a(kotlin.coroutines.intrinsics.a.b(cVar), e3.f.f9037a, null);
        } catch (Throwable th) {
            resumeWith(e3.d.a(th));
            throw th;
        }
    }
}
