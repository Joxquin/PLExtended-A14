package io.grpc.internal;

import java.net.URI;
/* renamed from: io.grpc.internal.e0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0998e0 extends X2.B0 {
    @Override // X2.x0
    public final String b() {
        return "dns";
    }

    @Override // X2.x0
    public final X2.A0 c(URI uri, X2.v0 v0Var) {
        boolean z4;
        if ("dns".equals(uri.getScheme())) {
            String path = uri.getPath();
            O2.m.h(path, "targetPath");
            O2.m.f(path.startsWith("/"), "the path component (%s) of the target (%s) must start with '/'", path, uri);
            String substring = path.substring(1);
            uri.getAuthority();
            C1033n0 c1033n0 = C1044r0.f10244k;
            O2.o oVar = new O2.o();
            try {
                Class.forName("android.app.Application", false, C0998e0.class.getClassLoader());
                z4 = true;
            } catch (Exception unused) {
                z4 = false;
            }
            return new C0994d0(substring, v0Var, c1033n0, oVar, z4);
        }
        return null;
    }

    @Override // X2.B0
    public boolean f() {
        return true;
    }

    @Override // X2.B0
    public int g() {
        return 5;
    }
}
