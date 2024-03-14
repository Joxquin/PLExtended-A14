package kotlin.coroutines;

import m3.p;
/* loaded from: classes.dex */
public final class f {
    public static Object a(g gVar, Object obj, p operation) {
        kotlin.jvm.internal.h.e(operation, "operation");
        return operation.invoke(obj, gVar);
    }

    public static g b(g gVar, h key) {
        kotlin.jvm.internal.h.e(key, "key");
        if (kotlin.jvm.internal.h.a(gVar.getKey(), key)) {
            return gVar;
        }
        return null;
    }

    public static i c(g gVar, h key) {
        kotlin.jvm.internal.h.e(key, "key");
        return kotlin.jvm.internal.h.a(gVar.getKey(), key) ? EmptyCoroutineContext.f11247d : gVar;
    }

    public static i d(g gVar, i context) {
        kotlin.jvm.internal.h.e(context, "context");
        return e(gVar, context);
    }

    public static i e(i iVar, i context) {
        kotlin.jvm.internal.h.e(context, "context");
        return context == EmptyCoroutineContext.f11247d ? iVar : (i) context.x(iVar, new p() { // from class: kotlin.coroutines.CoroutineContext$plus$1
            @Override // m3.p
            public final Object invoke(Object obj, Object obj2) {
                CombinedContext combinedContext;
                i acc = (i) obj;
                g element = (g) obj2;
                kotlin.jvm.internal.h.e(acc, "acc");
                kotlin.jvm.internal.h.e(element, "element");
                i z4 = acc.z(element.getKey());
                EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f11247d;
                if (z4 == emptyCoroutineContext) {
                    return element;
                }
                int i4 = e.f11252a;
                d dVar = d.f11251d;
                e eVar = (e) z4.e(dVar);
                if (eVar == null) {
                    combinedContext = new CombinedContext(element, z4);
                } else {
                    i z5 = z4.z(dVar);
                    if (z5 == emptyCoroutineContext) {
                        return new CombinedContext(eVar, element);
                    }
                    combinedContext = new CombinedContext(eVar, new CombinedContext(element, z5));
                }
                return combinedContext;
            }
        });
    }
}
