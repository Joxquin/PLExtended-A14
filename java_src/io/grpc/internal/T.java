package io.grpc.internal;
/* loaded from: classes.dex */
public final class T implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ boolean f9992d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ W f9993e;

    public T(W w4, boolean z4) {
        this.f9993e = w4;
        this.f9992d = z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9993e.f10023c.n(this.f9992d);
    }
}
