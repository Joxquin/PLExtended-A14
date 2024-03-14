package io.grpc.internal;
/* loaded from: classes.dex */
public final class x2 extends v2 {
    @Override // io.grpc.internal.v2
    public final boolean a(y2 y2Var) {
        synchronized (y2Var) {
            if (y2Var.f10443f == 0) {
                y2Var.f10443f = -1;
                return true;
            }
            return false;
        }
    }

    @Override // io.grpc.internal.v2
    public final void b(y2 y2Var) {
        synchronized (y2Var) {
            y2Var.f10443f = 0;
        }
    }
}
