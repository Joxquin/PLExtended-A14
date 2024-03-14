package x1;

import w1.InterfaceC1450b;
/* renamed from: x1.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1460d implements InterfaceC1450b {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1461e f12836a;

    public C1460d(C1461e c1461e) {
        this.f12836a = c1461e;
    }

    @Override // w1.InterfaceC1450b
    public final void onRotationChanged(int i4) {
        boolean z4 = i4 == 0 || i4 == 2;
        C1461e c1461e = this.f12836a;
        if (c1461e.f12840g != z4) {
            c1461e.f12840g = z4;
            c1461e.f12839f.setReadyToHandleTransition(z4);
        }
    }
}
