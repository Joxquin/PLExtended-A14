package v3;

import java.util.concurrent.Executor;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.AbstractC1258x;
import kotlinx.coroutines.T;
import kotlinx.coroutines.internal.C1244k;
import kotlinx.coroutines.internal.F;
import kotlinx.coroutines.internal.G;
/* loaded from: classes.dex */
public final class c extends T implements Executor {

    /* renamed from: f  reason: collision with root package name */
    public static final c f12664f = new c();

    /* renamed from: g  reason: collision with root package name */
    public static final AbstractC1258x f12665g;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v3, types: [kotlinx.coroutines.internal.k] */
    static {
        n nVar = n.f12681f;
        int i4 = G.f11445a;
        if (64 >= i4) {
            i4 = 64;
        }
        int c4 = F.c("kotlinx.coroutines.io.parallelism", i4, 0, 0, 12);
        nVar.getClass();
        kotlinx.coroutines.internal.l.a(c4);
        if (c4 < m.f12676d) {
            kotlinx.coroutines.internal.l.a(c4);
            nVar = new C1244k(nVar, c4);
        }
        f12665g = nVar;
    }

    @Override // kotlinx.coroutines.AbstractC1258x
    public final void B(kotlin.coroutines.i context, Runnable block) {
        kotlin.jvm.internal.h.e(context, "context");
        kotlin.jvm.internal.h.e(block, "block");
        f12665g.B(context, block);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO".toString());
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable command) {
        kotlin.jvm.internal.h.e(command, "command");
        B(EmptyCoroutineContext.f11247d, command);
    }

    @Override // kotlinx.coroutines.AbstractC1258x
    public final String toString() {
        return "Dispatchers.IO";
    }
}
