package io.grpc.internal;
/* renamed from: io.grpc.internal.b2  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0988b2 implements InterfaceC1004f2 {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f10061a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f10062b;

    public /* synthetic */ C0988b2(int i4, int i5) {
        this.f10061a = i5;
        this.f10062b = i4;
    }

    @Override // io.grpc.internal.InterfaceC1004f2
    public final void a(p2 p2Var) {
        int i4 = this.f10061a;
        int i5 = this.f10062b;
        switch (i4) {
            case 0:
                p2Var.f10206a.b(i5);
                return;
            case 1:
                p2Var.f10206a.h(i5);
                return;
            default:
                p2Var.f10206a.a(i5);
                return;
        }
    }
}
