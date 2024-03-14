package a3;

import O2.i;
import O2.j;
import X2.AbstractC0123k;
/* loaded from: classes.dex */
public final class c extends com.google.common.util.concurrent.c {

    /* renamed from: k  reason: collision with root package name */
    public final AbstractC0123k f2405k;

    public c(AbstractC0123k abstractC0123k) {
        this.f2405k = abstractC0123k;
    }

    @Override // com.google.common.util.concurrent.c
    public final void h() {
        this.f2405k.a("GrpcFuture was cancelled", null);
    }

    @Override // com.google.common.util.concurrent.c
    public final String i() {
        i b4 = j.b(this);
        b4.a(this.f2405k, "clientCall");
        return b4.toString();
    }
}
