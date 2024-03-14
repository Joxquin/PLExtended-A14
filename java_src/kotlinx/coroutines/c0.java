package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
/* loaded from: classes.dex */
public final class c0 {
    public static final void a(kotlin.coroutines.i iVar, CancellationException cancellationException) {
        kotlin.jvm.internal.h.e(iVar, "<this>");
        int i4 = a0.f11331b;
        a0 a0Var = (a0) iVar.e(Z.f11329d);
        if (a0Var != null) {
            a0Var.b(cancellationException);
        }
    }
}
