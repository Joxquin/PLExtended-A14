package a3;

import X2.AbstractC0121j;
import X2.L0;
import X2.r0;
import io.grpc.StatusRuntimeException;
/* loaded from: classes.dex */
public final class d extends AbstractC0121j {

    /* renamed from: a  reason: collision with root package name */
    public final c f2406a;

    /* renamed from: b  reason: collision with root package name */
    public Object f2407b;

    public d(c cVar) {
        this.f2406a = cVar;
    }

    @Override // X2.AbstractC0121j
    public final void a(L0 l02, r0 r0Var) {
        boolean d4 = l02.d();
        c cVar = this.f2406a;
        if (!d4) {
            StatusRuntimeException statusRuntimeException = new StatusRuntimeException(l02, r0Var);
            cVar.getClass();
            if (com.google.common.util.concurrent.c.f8480i.b(cVar, null, new com.google.common.util.concurrent.a(statusRuntimeException))) {
                com.google.common.util.concurrent.c.e(cVar);
                return;
            }
            return;
        }
        if (this.f2407b == null) {
            StatusRuntimeException statusRuntimeException2 = new StatusRuntimeException(L0.f2134m.f("No value received for unary call"), r0Var);
            cVar.getClass();
            if (com.google.common.util.concurrent.c.f8480i.b(cVar, null, new com.google.common.util.concurrent.a(statusRuntimeException2))) {
                com.google.common.util.concurrent.c.e(cVar);
            }
        }
        Object obj = this.f2407b;
        cVar.getClass();
        if (obj == null) {
            obj = com.google.common.util.concurrent.c.f8481j;
        }
        if (com.google.common.util.concurrent.c.f8480i.b(cVar, null, obj)) {
            com.google.common.util.concurrent.c.e(cVar);
        }
    }

    @Override // X2.AbstractC0121j
    public final void b(r0 r0Var) {
    }

    @Override // X2.AbstractC0121j
    public final void c(Object obj) {
        if (this.f2407b != null) {
            throw new StatusRuntimeException(L0.f2134m.f("More than one value received for unary call"), null);
        }
        this.f2407b = obj;
    }
}
