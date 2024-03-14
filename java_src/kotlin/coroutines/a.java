package kotlin.coroutines;

import m3.p;
/* loaded from: classes.dex */
public abstract class a implements g {

    /* renamed from: d  reason: collision with root package name */
    public final h f11248d;

    public a(h hVar) {
        this.f11248d = hVar;
    }

    @Override // kotlin.coroutines.i
    public g e(h hVar) {
        return f.b(this, hVar);
    }

    @Override // kotlin.coroutines.g
    public final h getKey() {
        return this.f11248d;
    }

    @Override // kotlin.coroutines.i
    public final i i(i context) {
        kotlin.jvm.internal.h.e(context, "context");
        return f.e(this, context);
    }

    @Override // kotlin.coroutines.i
    public final Object x(Object obj, p operation) {
        kotlin.jvm.internal.h.e(operation, "operation");
        return operation.invoke(obj, this);
    }

    @Override // kotlin.coroutines.i
    public i z(h hVar) {
        return f.c(this, hVar);
    }
}
