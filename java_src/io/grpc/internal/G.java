package io.grpc.internal;
/* loaded from: classes.dex */
public final class G implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f9880d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ L f9881e;

    public G(L l4, int i4) {
        this.f9881e = l4;
        this.f9880d = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9881e.f9935f.c(this.f9880d);
    }
}
