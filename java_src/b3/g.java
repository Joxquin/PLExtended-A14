package b3;

import X2.AbstractC0104a0;
import X2.AbstractC0108c0;
import X2.V;
import X2.w0;
import java.util.Map;
/* loaded from: classes.dex */
public final class g extends AbstractC0108c0 {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f4251b = 0;

    @Override // X2.V
    public final AbstractC0104a0 d(V v4) {
        return new f(v4);
    }

    @Override // X2.AbstractC0108c0
    public String h() {
        return "round_robin";
    }

    @Override // X2.AbstractC0108c0
    public int i() {
        return 5;
    }

    @Override // X2.AbstractC0108c0
    public boolean j() {
        return true;
    }

    @Override // X2.AbstractC0108c0
    public w0 k(Map map) {
        return new w0("no service config");
    }
}
