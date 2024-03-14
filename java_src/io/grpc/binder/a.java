package io.grpc.binder;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: b  reason: collision with root package name */
    public static final a f9695b = new a(1);

    /* renamed from: a  reason: collision with root package name */
    public final int f9696a;

    public a(int i4) {
        this.f9696a = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && a.class == obj.getClass() && this.f9696a == ((a) obj).f9696a;
    }

    public final int hashCode() {
        return this.f9696a;
    }

    public final String toString() {
        return "BindServiceFlags{" + Integer.toHexString(this.f9696a) + "}";
    }
}
