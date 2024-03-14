package X2;

import io.grpc.ConnectivityState;
/* renamed from: X2.z  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0144z {

    /* renamed from: a  reason: collision with root package name */
    public final ConnectivityState f2251a;

    /* renamed from: b  reason: collision with root package name */
    public final L0 f2252b;

    public C0144z(ConnectivityState connectivityState, L0 l02) {
        this.f2251a = connectivityState;
        O2.m.h(l02, "status is null");
        this.f2252b = l02;
    }

    public static C0144z a(ConnectivityState connectivityState) {
        O2.m.b("state is TRANSIENT_ERROR. Use forError() instead", connectivityState != ConnectivityState.TRANSIENT_FAILURE);
        return new C0144z(connectivityState, L0.f2126e);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0144z) {
            C0144z c0144z = (C0144z) obj;
            return this.f2251a.equals(c0144z.f2251a) && this.f2252b.equals(c0144z.f2252b);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2252b.hashCode() ^ this.f2251a.hashCode();
    }

    public final String toString() {
        L0 l02 = this.f2252b;
        boolean d4 = l02.d();
        ConnectivityState connectivityState = this.f2251a;
        if (d4) {
            return connectivityState.toString();
        }
        return connectivityState + "(" + l02 + ")";
    }
}
