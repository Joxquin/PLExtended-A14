package k0;

import java.util.Arrays;
/* renamed from: k0.H  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1183H {

    /* renamed from: a  reason: collision with root package name */
    public final Object f11089a;

    /* renamed from: b  reason: collision with root package name */
    public final Throwable f11090b;

    public C1183H(C1198m c1198m) {
        this.f11089a = c1198m;
        this.f11090b = null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1183H) {
            C1183H c1183h = (C1183H) obj;
            Object obj2 = this.f11089a;
            if (obj2 == null || !obj2.equals(c1183h.f11089a)) {
                Throwable th = this.f11090b;
                if (th == null || c1183h.f11090b == null) {
                    return false;
                }
                return th.toString().equals(th.toString());
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f11089a, this.f11090b});
    }

    public C1183H(Throwable th) {
        this.f11090b = th;
        this.f11089a = null;
    }
}
