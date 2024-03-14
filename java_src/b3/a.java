package b3;

import O2.m;
import X2.C0107c;
import X2.C0144z;
import X2.I;
import X2.Y;
import X2.Z;
import io.grpc.ConnectivityState;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class a implements Z {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Y f4237a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ f f4238b;

    public a(f fVar, Y y4) {
        this.f4238b = fVar;
        this.f4237a = y4;
    }

    @Override // X2.Z
    public final void a(C0144z c0144z) {
        f fVar = this.f4238b;
        Map map = fVar.f4247c;
        Y y4 = this.f4237a;
        List a4 = y4.a();
        m.l("%s does not have exactly one group", a4, a4.size() == 1);
        if (((HashMap) map).get(new I(((I) a4.get(0)).f2114a, C0107c.f2181b)) != y4) {
            return;
        }
        ConnectivityState connectivityState = ConnectivityState.TRANSIENT_FAILURE;
        ConnectivityState connectivityState2 = ConnectivityState.IDLE;
        ConnectivityState connectivityState3 = c0144z.f2251a;
        if (connectivityState3 == connectivityState || connectivityState3 == connectivityState2) {
            fVar.f4246b.f();
        }
        if (connectivityState3 == connectivityState2) {
            y4.d();
        }
        d d4 = f.d(y4);
        if (((C0144z) d4.f4243a).f2251a.equals(connectivityState) && (connectivityState3.equals(ConnectivityState.CONNECTING) || connectivityState3.equals(connectivityState2))) {
            return;
        }
        d4.f4243a = c0144z;
        fVar.e();
    }
}
