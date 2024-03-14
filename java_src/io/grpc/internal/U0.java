package io.grpc.internal;

import java.util.concurrent.Executor;
/* loaded from: classes.dex */
public final class U0 {

    /* renamed from: a  reason: collision with root package name */
    public final Object f10006a;

    /* renamed from: b  reason: collision with root package name */
    public Object f10007b;

    public U0(C1048s1 c1048s1) {
        J2 j22 = K2.f9928a;
        this.f10007b = c1048s1;
        this.f10006a = j22;
    }

    public final synchronized void a() {
        Object obj = this.f10007b;
        if (((Executor) obj) != null) {
            ((H1) this.f10006a).b((Executor) obj);
            this.f10007b = null;
        }
    }

    public U0(C1043q1 c1043q1, X2.Z z4) {
        this.f10007b = c1043q1;
        this.f10006a = z4;
    }

    public U0(H2 h22) {
        this.f10006a = h22;
    }
}
