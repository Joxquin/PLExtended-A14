package io.grpc.internal;

import X2.AbstractC0104a0;
import X2.AbstractC0108c0;
import java.util.Map;
/* loaded from: classes.dex */
public final class O1 extends AbstractC0108c0 {

    /* renamed from: b  reason: collision with root package name */
    public static final /* synthetic */ int f9972b = 0;

    @Override // X2.V
    public final AbstractC0104a0 d(X2.V v4) {
        return new N1(v4);
    }

    @Override // X2.AbstractC0108c0
    public String h() {
        return "pick_first";
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
    public X2.w0 k(Map map) {
        return new X2.w0("no service config");
    }
}
