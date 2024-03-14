package kotlin.coroutines;

import java.io.Serializable;
import kotlin.jvm.internal.Ref$IntRef;
import m3.p;
/* loaded from: classes.dex */
public final class CombinedContext implements i, Serializable {
    private final g element;
    private final i left;

    /* loaded from: classes.dex */
    final class Serialized implements Serializable {
        private static final long serialVersionUID = 0;
        private final i[] elements;

        public Serialized(i[] iVarArr) {
            this.elements = iVarArr;
        }

        private final Object readResolve() {
            i[] iVarArr = this.elements;
            i iVar = EmptyCoroutineContext.f11247d;
            for (i iVar2 : iVarArr) {
                iVar = iVar.i(iVar2);
            }
            return iVar;
        }
    }

    public CombinedContext(g element, i left) {
        kotlin.jvm.internal.h.e(left, "left");
        kotlin.jvm.internal.h.e(element, "element");
        this.left = left;
        this.element = element;
    }

    private final Object writeReplace() {
        int f4 = f();
        final i[] iVarArr = new i[f4];
        final Ref$IntRef ref$IntRef = new Ref$IntRef();
        x(e3.f.f9037a, new p() { // from class: kotlin.coroutines.CombinedContext$writeReplace$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(2);
            }

            @Override // m3.p
            public final Object invoke(Object obj, Object obj2) {
                g element = (g) obj2;
                kotlin.jvm.internal.h.e((e3.f) obj, "<anonymous parameter 0>");
                kotlin.jvm.internal.h.e(element, "element");
                i[] iVarArr2 = iVarArr;
                Ref$IntRef ref$IntRef2 = ref$IntRef;
                int i4 = ref$IntRef2.element;
                ref$IntRef2.element = i4 + 1;
                iVarArr2[i4] = element;
                return e3.f.f9037a;
            }
        });
        if (ref$IntRef.element == f4) {
            return new Serialized(iVarArr);
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    @Override // kotlin.coroutines.i
    public final g e(h key) {
        kotlin.jvm.internal.h.e(key, "key");
        while (true) {
            g e4 = this.element.e(key);
            if (e4 != null) {
                return e4;
            }
            i iVar = this.left;
            if (!(iVar instanceof CombinedContext)) {
                return iVar.e(key);
            }
            this = (CombinedContext) iVar;
        }
    }

    public final boolean equals(Object obj) {
        boolean z4;
        if (this != obj) {
            if (!(obj instanceof CombinedContext)) {
                return false;
            }
            CombinedContext combinedContext = (CombinedContext) obj;
            if (combinedContext.f() != f()) {
                return false;
            }
            while (true) {
                g gVar = this.element;
                if (!kotlin.jvm.internal.h.a(combinedContext.e(gVar.getKey()), gVar)) {
                    z4 = false;
                    break;
                }
                i iVar = this.left;
                if (!(iVar instanceof CombinedContext)) {
                    kotlin.jvm.internal.h.c(iVar, "null cannot be cast to non-null type kotlin.coroutines.CoroutineContext.Element");
                    g gVar2 = (g) iVar;
                    z4 = kotlin.jvm.internal.h.a(combinedContext.e(gVar2.getKey()), gVar2);
                    break;
                }
                this = (CombinedContext) iVar;
            }
            if (!z4) {
                return false;
            }
        }
        return true;
    }

    public final int f() {
        int i4 = 2;
        while (true) {
            i iVar = this.left;
            this = iVar instanceof CombinedContext ? (CombinedContext) iVar : null;
            if (this == null) {
                return i4;
            }
            i4++;
        }
    }

    public final int hashCode() {
        return this.element.hashCode() + this.left.hashCode();
    }

    @Override // kotlin.coroutines.i
    public final i i(i iVar) {
        return f.e(this, iVar);
    }

    public final String toString() {
        return "[" + ((String) x("", new p() { // from class: kotlin.coroutines.CombinedContext$toString$1
            @Override // m3.p
            public final Object invoke(Object obj, Object obj2) {
                String acc = (String) obj;
                g element = (g) obj2;
                kotlin.jvm.internal.h.e(acc, "acc");
                kotlin.jvm.internal.h.e(element, "element");
                if (acc.length() == 0) {
                    return element.toString();
                }
                return acc + ", " + element;
            }
        })) + ']';
    }

    @Override // kotlin.coroutines.i
    public final Object x(Object obj, p operation) {
        kotlin.jvm.internal.h.e(operation, "operation");
        return operation.invoke(this.left.x(obj, operation), this.element);
    }

    @Override // kotlin.coroutines.i
    public final i z(h key) {
        kotlin.jvm.internal.h.e(key, "key");
        if (this.element.e(key) != null) {
            return this.left;
        }
        i z4 = this.left.z(key);
        return z4 == this.left ? this : z4 == EmptyCoroutineContext.f11247d ? this.element : new CombinedContext(this.element, z4);
    }
}
