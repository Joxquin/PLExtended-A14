package io.grpc.internal;
/* loaded from: classes.dex */
public final class L0 implements InterfaceC0990c0 {

    /* renamed from: a  reason: collision with root package name */
    public static final Throwable f9939a;

    static {
        try {
            Class.forName("javax.naming.directory.InitialDirContext");
            Class.forName("com.sun.jndi.dns.DnsContextFactory");
            e = null;
        } catch (ClassNotFoundException | Error | RuntimeException e4) {
            e = e4;
        }
        f9939a = e;
    }

    @Override // io.grpc.internal.InterfaceC0990c0
    public final J0 a() {
        if (f9939a != null) {
            return null;
        }
        return new J0(new I0());
    }

    @Override // io.grpc.internal.InterfaceC0990c0
    public final Throwable b() {
        return f9939a;
    }
}
