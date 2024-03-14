package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.i;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.internal.l;
import kotlinx.coroutines.internal.H;
import m3.p;
/* loaded from: classes.dex */
public final class h implements kotlinx.coroutines.flow.e {

    /* renamed from: a  reason: collision with root package name */
    public final i f11418a;

    /* renamed from: b  reason: collision with root package name */
    public final Object f11419b;

    /* renamed from: c  reason: collision with root package name */
    public final p f11420c;

    public h(kotlinx.coroutines.flow.e eVar, i emitContext) {
        kotlin.jvm.internal.h.e(emitContext, "emitContext");
        this.f11418a = emitContext;
        this.f11419b = H.b(emitContext);
        this.f11420c = new UndispatchedContextCollector$emitRef$1(eVar, null);
    }

    @Override // kotlinx.coroutines.flow.e
    public final Object emit(Object obj, kotlin.coroutines.c cVar) {
        p pVar = this.f11420c;
        i iVar = this.f11418a;
        Object c4 = H.c(iVar, this.f11419b);
        try {
            g gVar = new g(cVar, iVar);
            l.a(2, pVar);
            Object invoke = ((UndispatchedContextCollector$emitRef$1) pVar).invoke(obj, gVar);
            H.a(iVar, c4);
            return invoke == CoroutineSingletons.COROUTINE_SUSPENDED ? invoke : e3.f.f9037a;
        } catch (Throwable th) {
            H.a(iVar, c4);
            throw th;
        }
    }
}
