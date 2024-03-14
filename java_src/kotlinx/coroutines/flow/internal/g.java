package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.i;
/* loaded from: classes.dex */
public final class g implements kotlin.coroutines.c, g3.b {

    /* renamed from: d  reason: collision with root package name */
    public final kotlin.coroutines.c f11416d;

    /* renamed from: e  reason: collision with root package name */
    public final i f11417e;

    public g(kotlin.coroutines.c uCont, i context) {
        kotlin.jvm.internal.h.e(uCont, "uCont");
        kotlin.jvm.internal.h.e(context, "context");
        this.f11416d = uCont;
        this.f11417e = context;
    }

    @Override // g3.b
    public final g3.b getCallerFrame() {
        kotlin.coroutines.c cVar = this.f11416d;
        if (cVar instanceof g3.b) {
            return (g3.b) cVar;
        }
        return null;
    }

    @Override // kotlin.coroutines.c
    public final i getContext() {
        return this.f11417e;
    }

    @Override // kotlin.coroutines.c
    public final void resumeWith(Object obj) {
        this.f11416d.resumeWith(obj);
    }
}
