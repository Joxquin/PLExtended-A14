package kotlinx.coroutines;
/* loaded from: classes.dex */
public final class v0 implements kotlin.coroutines.g, kotlin.coroutines.h {

    /* renamed from: d  reason: collision with root package name */
    public static final v0 f11520d = new v0();

    @Override // kotlin.coroutines.i
    public final kotlin.coroutines.g e(kotlin.coroutines.h hVar) {
        return kotlin.coroutines.f.b(this, hVar);
    }

    @Override // kotlin.coroutines.g
    public final kotlin.coroutines.h getKey() {
        return this;
    }

    @Override // kotlin.coroutines.i
    public final kotlin.coroutines.i i(kotlin.coroutines.i context) {
        kotlin.jvm.internal.h.e(context, "context");
        return kotlin.coroutines.f.e(this, context);
    }

    @Override // kotlin.coroutines.i
    public final Object x(Object obj, m3.p pVar) {
        return kotlin.coroutines.f.a(this, obj, pVar);
    }

    @Override // kotlin.coroutines.i
    public final kotlin.coroutines.i z(kotlin.coroutines.h hVar) {
        return kotlin.coroutines.f.c(this, hVar);
    }
}
