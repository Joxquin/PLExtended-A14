package L1;

import android.content.Context;
import android.os.Handler;
import com.android.launcher3.util.LooperExecutor;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.function.Supplier;
/* loaded from: classes.dex */
public final class O {

    /* renamed from: a  reason: collision with root package name */
    public final Context f1099a;

    /* renamed from: b  reason: collision with root package name */
    public final Handler f1100b;

    /* renamed from: c  reason: collision with root package name */
    public final C0054i f1101c;

    /* renamed from: d  reason: collision with root package name */
    public final K1.a f1102d = new K1.a();

    /* renamed from: e  reason: collision with root package name */
    public final Context f1103e;

    public O(Context context, Context context2, Handler handler, LooperExecutor looperExecutor, LooperExecutor looperExecutor2, Executor executor) {
        this.f1103e = context;
        this.f1099a = context2;
        this.f1100b = handler;
        this.f1101c = new C0054i(context, looperExecutor, looperExecutor2, executor);
    }

    public void reportMetricsToService(String str, final J1.n nVar, P p4) {
        List list = nVar.f761a;
        int i4 = M1.c.f1362a;
        list.getClass();
        if (list.isEmpty()) {
            return;
        }
        this.f1101c.b(nVar, p4, str, new Supplier() { // from class: L1.L
            @Override // java.util.function.Supplier
            public final Object get() {
                O o4 = O.this;
                J1.n nVar2 = nVar;
                o4.f1102d.getClass();
                return K1.a.b(nVar2);
            }
        });
    }
}
