package kotlin.coroutines;

import m3.l;
/* loaded from: classes.dex */
public abstract class b implements h {

    /* renamed from: d  reason: collision with root package name */
    public final l f11249d;

    /* renamed from: e  reason: collision with root package name */
    public final h f11250e;

    public b(h baseKey, l safeCast) {
        kotlin.jvm.internal.h.e(baseKey, "baseKey");
        kotlin.jvm.internal.h.e(safeCast, "safeCast");
        this.f11249d = safeCast;
        this.f11250e = baseKey instanceof b ? ((b) baseKey).f11250e : baseKey;
    }

    public final g a(g element) {
        kotlin.jvm.internal.h.e(element, "element");
        return (g) this.f11249d.invoke(element);
    }
}
