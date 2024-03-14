package kotlinx.coroutines;

import kotlin.coroutines.EmptyCoroutineContext;
/* renamed from: kotlinx.coroutines.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1228d {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v9, types: [kotlinx.coroutines.q0, kotlinx.coroutines.a] */
    public static q0 a(B b4, CoroutineStart start, m3.p pVar, int i4) {
        EmptyCoroutineContext context = (i4 & 1) != 0 ? EmptyCoroutineContext.f11247d : null;
        if ((i4 & 2) != 0) {
            start = CoroutineStart.DEFAULT;
        }
        kotlin.jvm.internal.h.e(b4, "<this>");
        kotlin.jvm.internal.h.e(context, "context");
        kotlin.jvm.internal.h.e(start, "start");
        kotlin.coroutines.i c4 = C1256v.c(b4, context);
        j0 j0Var = start == CoroutineStart.LAZY ? new j0(c4, pVar) : new q0(c4, true);
        j0Var.e0(start, j0Var, pVar);
        return j0Var;
    }
}
