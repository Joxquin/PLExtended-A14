package L1;

import android.os.Bundle;
import com.android.launcher3.util.LooperExecutor;
import java.util.concurrent.Executor;
import java.util.function.Supplier;
/* renamed from: L1.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0048c {

    /* renamed from: a  reason: collision with root package name */
    public final Executor f1157a;

    /* renamed from: b  reason: collision with root package name */
    public final Executor f1158b;

    /* renamed from: c  reason: collision with root package name */
    public final Executor f1159c;

    /* renamed from: d  reason: collision with root package name */
    public final Executor f1160d;

    public AbstractC0048c(LooperExecutor looperExecutor, LooperExecutor looperExecutor2, Executor executor, ExecutorC0050e executorC0050e) {
        this.f1157a = looperExecutor;
        this.f1158b = looperExecutor2;
        this.f1159c = executor;
        this.f1160d = executorC0050e;
    }

    public abstract void a(Bundle bundle, X x4);

    public abstract void b(J1.n nVar, P p4, String str, Supplier supplier);

    public abstract void c(int i4, Bundle bundle);

    public abstract void d(int i4, Bundle bundle, InterfaceC0047b interfaceC0047b);
}
