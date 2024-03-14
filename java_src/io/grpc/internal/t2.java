package io.grpc.internal;

import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public final class t2 extends X2.x0 {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f10377a;

    /* renamed from: b  reason: collision with root package name */
    public final int f10378b;

    /* renamed from: c  reason: collision with root package name */
    public final int f10379c;

    /* renamed from: d  reason: collision with root package name */
    public final C1001f f10380d;

    public t2(boolean z4, int i4, int i5, C1001f c1001f) {
        this.f10377a = z4;
        this.f10378b = i4;
        this.f10379c = i5;
        this.f10380d = c1001f;
    }

    @Override // X2.x0
    public final X2.w0 e(Map map) {
        List d4;
        X2.w0 w0Var;
        try {
            C1001f c1001f = this.f10380d;
            c1001f.getClass();
            Object obj = null;
            if (map != null) {
                try {
                    d4 = B2.d(B2.b(map));
                } catch (RuntimeException e4) {
                    w0Var = new X2.w0(X2.L0.f2128g.f("can't parse load balancer configuration").e(e4));
                }
            } else {
                d4 = null;
            }
            w0Var = (d4 == null || d4.isEmpty()) ? null : B2.c(d4, c1001f.f10105a);
            if (w0Var != null) {
                X2.L0 l02 = w0Var.f2247a;
                if (l02 != null) {
                    return new X2.w0(l02);
                }
                obj = w0Var.f2248b;
            }
            return new X2.w0(C1.a(map, this.f10377a, this.f10378b, this.f10379c, obj));
        } catch (RuntimeException e5) {
            return new X2.w0(X2.L0.f2128g.f("failed to parse service config").e(e5));
        }
    }
}
