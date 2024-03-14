package k0;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
/* renamed from: k0.J  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1185J extends FutureTask {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ K f11092d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1185J(K k4, Callable callable) {
        super(callable);
        this.f11092d = k4;
    }

    @Override // java.util.concurrent.FutureTask
    public final void done() {
        if (isCancelled()) {
            return;
        }
        try {
            this.f11092d.b((C1183H) get());
        } catch (InterruptedException | ExecutionException e4) {
            this.f11092d.b(new C1183H(e4));
        }
    }
}
