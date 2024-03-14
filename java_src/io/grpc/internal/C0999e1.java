package io.grpc.internal;
/* renamed from: io.grpc.internal.e1  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0999e1 extends AbstractC1050t0 {

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ C1048s1 f10101b;

    public C0999e1(C1048s1 c1048s1) {
        this.f10101b = c1048s1;
    }

    @Override // io.grpc.internal.AbstractC1050t0
    public final void a() {
        this.f10101b.m();
    }

    @Override // io.grpc.internal.AbstractC1050t0
    public final void b() {
        C1048s1 c1048s1 = this.f10101b;
        if (c1048s1.f10301K.get()) {
            return;
        }
        c1048s1.o();
    }
}
