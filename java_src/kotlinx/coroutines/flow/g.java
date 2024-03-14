package kotlinx.coroutines.flow;

import kotlin.coroutines.intrinsics.CoroutineSingletons;
/* loaded from: classes.dex */
public final class g implements d {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Object f11402a;

    public g(Object obj) {
        this.f11402a = obj;
    }

    @Override // kotlinx.coroutines.flow.d
    public final Object a(e eVar, kotlin.coroutines.c cVar) {
        Object emit = eVar.emit(this.f11402a, cVar);
        return emit == CoroutineSingletons.COROUTINE_SUSPENDED ? emit : e3.f.f9037a;
    }
}
