package kotlinx.coroutines.internal;

import kotlinx.coroutines.r0;
/* loaded from: classes.dex */
public final class H {

    /* renamed from: a  reason: collision with root package name */
    public static final E f11446a = new E("NO_THREAD_ELEMENTS");

    /* renamed from: b  reason: collision with root package name */
    public static final m3.p f11447b = new m3.p() { // from class: kotlinx.coroutines.internal.ThreadContextKt$countAll$1
        @Override // m3.p
        public final Object invoke(Object obj, Object obj2) {
            kotlin.coroutines.g element = (kotlin.coroutines.g) obj2;
            kotlin.jvm.internal.h.e(element, "element");
            if (element instanceof r0) {
                Integer num = obj instanceof Integer ? (Integer) obj : null;
                int intValue = num != null ? num.intValue() : 1;
                return intValue == 0 ? element : Integer.valueOf(intValue + 1);
            }
            return obj;
        }
    };

    /* renamed from: c  reason: collision with root package name */
    public static final m3.p f11448c = new m3.p() { // from class: kotlinx.coroutines.internal.ThreadContextKt$findOne$1
        @Override // m3.p
        public final Object invoke(Object obj, Object obj2) {
            r0 r0Var = (r0) obj;
            kotlin.coroutines.g element = (kotlin.coroutines.g) obj2;
            kotlin.jvm.internal.h.e(element, "element");
            if (r0Var != null) {
                return r0Var;
            }
            if (element instanceof r0) {
                return (r0) element;
            }
            return null;
        }
    };

    /* renamed from: d  reason: collision with root package name */
    public static final m3.p f11449d = new m3.p() { // from class: kotlinx.coroutines.internal.ThreadContextKt$updateState$1
        @Override // m3.p
        public final Object invoke(Object obj, Object obj2) {
            K state = (K) obj;
            kotlin.coroutines.g element = (kotlin.coroutines.g) obj2;
            kotlin.jvm.internal.h.e(state, "state");
            kotlin.jvm.internal.h.e(element, "element");
            if (element instanceof r0) {
                r0 r0Var = (r0) element;
                Object A3 = r0Var.A(state.f11452a);
                int i4 = state.f11455d;
                state.f11453b[i4] = A3;
                state.f11455d = i4 + 1;
                state.f11454c[i4] = r0Var;
            }
            return state;
        }
    };

    public static final void a(kotlin.coroutines.i context, Object obj) {
        kotlin.jvm.internal.h.e(context, "context");
        if (obj == f11446a) {
            return;
        }
        if (!(obj instanceof K)) {
            Object x4 = context.x(null, f11448c);
            kotlin.jvm.internal.h.c(x4, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
            ((r0) x4).k(context, obj);
            return;
        }
        K k4 = (K) obj;
        k4.getClass();
        r0[] r0VarArr = k4.f11454c;
        int length = r0VarArr.length - 1;
        if (length < 0) {
            return;
        }
        while (true) {
            int i4 = length - 1;
            r0 r0Var = r0VarArr[length];
            kotlin.jvm.internal.h.b(r0Var);
            r0Var.k(context, k4.f11453b[length]);
            if (i4 < 0) {
                return;
            }
            length = i4;
        }
    }

    public static final Object b(kotlin.coroutines.i context) {
        kotlin.jvm.internal.h.e(context, "context");
        Object x4 = context.x(0, f11447b);
        kotlin.jvm.internal.h.b(x4);
        return x4;
    }

    public static final Object c(kotlin.coroutines.i context, Object obj) {
        kotlin.jvm.internal.h.e(context, "context");
        if (obj == null) {
            obj = b(context);
        }
        if (obj == 0) {
            return f11446a;
        }
        if (obj instanceof Integer) {
            return context.x(new K(context, ((Number) obj).intValue()), f11449d);
        }
        kotlin.jvm.internal.h.c(obj, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        return ((r0) obj).A(context);
    }
}
