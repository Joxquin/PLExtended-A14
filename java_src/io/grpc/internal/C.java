package io.grpc.internal;
/* loaded from: classes.dex */
public abstract class C implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final X2.C f9835d;

    public C(X2.C c4) {
        this.f9835d = c4;
    }

    public abstract void a();

    @Override // java.lang.Runnable
    public final void run() {
        X2.C a4 = this.f9835d.a();
        try {
            a();
        } finally {
            this.f9835d.c(a4);
        }
    }
}
