package kotlinx.coroutines;

import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Ref$ObjectRef;
/* renamed from: kotlinx.coroutines.v  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1256v {
    public static final kotlin.coroutines.i a(kotlin.coroutines.i iVar, kotlin.coroutines.i iVar2, final boolean z4) {
        boolean b4 = b(iVar);
        boolean b5 = b(iVar2);
        if (b4 || b5) {
            final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = iVar2;
            EmptyCoroutineContext emptyCoroutineContext = EmptyCoroutineContext.f11247d;
            kotlin.coroutines.i iVar3 = (kotlin.coroutines.i) iVar.x(emptyCoroutineContext, new m3.p() { // from class: kotlinx.coroutines.CoroutineContextKt$foldCopies$folded$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // m3.p
                public final Object invoke(Object obj, Object obj2) {
                    kotlin.coroutines.i result = (kotlin.coroutines.i) obj;
                    kotlin.coroutines.g element = (kotlin.coroutines.g) obj2;
                    kotlin.jvm.internal.h.e(result, "result");
                    kotlin.jvm.internal.h.e(element, "element");
                    if (element instanceof InterfaceC1255u) {
                        if (((kotlin.coroutines.i) Ref$ObjectRef.this.element).e(element.getKey()) == null) {
                            return result.i(z4 ? ((InterfaceC1255u) element).j() : (InterfaceC1255u) element);
                        }
                        Ref$ObjectRef ref$ObjectRef2 = Ref$ObjectRef.this;
                        ref$ObjectRef2.element = ((kotlin.coroutines.i) ref$ObjectRef2.element).z(element.getKey());
                        return result.i(((InterfaceC1255u) element).v());
                    }
                    return result.i(element);
                }
            });
            if (b5) {
                ref$ObjectRef.element = ((kotlin.coroutines.i) ref$ObjectRef.element).x(emptyCoroutineContext, new m3.p() { // from class: kotlinx.coroutines.CoroutineContextKt$foldCopies$1
                    @Override // m3.p
                    public final Object invoke(Object obj, Object obj2) {
                        kotlin.coroutines.i result = (kotlin.coroutines.i) obj;
                        kotlin.coroutines.g element = (kotlin.coroutines.g) obj2;
                        kotlin.jvm.internal.h.e(result, "result");
                        kotlin.jvm.internal.h.e(element, "element");
                        return element instanceof InterfaceC1255u ? result.i(((InterfaceC1255u) element).j()) : result.i(element);
                    }
                });
            }
            return iVar3.i((kotlin.coroutines.i) ref$ObjectRef.element);
        }
        return iVar.i(iVar2);
    }

    public static final boolean b(kotlin.coroutines.i iVar) {
        return ((Boolean) iVar.x(Boolean.FALSE, new m3.p() { // from class: kotlinx.coroutines.CoroutineContextKt$hasCopyableElements$1
            @Override // m3.p
            public final Object invoke(Object obj, Object obj2) {
                boolean booleanValue = ((Boolean) obj).booleanValue();
                kotlin.coroutines.g it = (kotlin.coroutines.g) obj2;
                kotlin.jvm.internal.h.e(it, "it");
                return Boolean.valueOf(booleanValue || (it instanceof InterfaceC1255u));
            }
        })).booleanValue();
    }

    public static final kotlin.coroutines.i c(B b4, kotlin.coroutines.i iVar) {
        kotlin.jvm.internal.h.e(b4, "<this>");
        kotlin.coroutines.i a4 = a(b4.h(), iVar, true);
        v3.d dVar = J.f11307a;
        return (a4 == dVar || a4.e(kotlin.coroutines.d.f11251d) != null) ? a4 : a4.i(dVar);
    }

    public static final u0 d(kotlin.coroutines.c cVar, kotlin.coroutines.i iVar) {
        u0 u0Var;
        if (cVar instanceof g3.b) {
            if (iVar.e(v0.f11520d) != null) {
                g3.b bVar = (g3.b) cVar;
                while (true) {
                    bVar = bVar.getCallerFrame();
                    if (bVar != null) {
                        if (bVar instanceof u0) {
                            u0Var = (u0) bVar;
                            break;
                        }
                    } else {
                        u0Var = null;
                        break;
                    }
                }
                if (u0Var == null) {
                    return u0Var;
                }
                u0Var.g0(iVar);
                throw null;
            }
            return null;
        }
        return null;
    }
}
