package k0;
/* loaded from: classes.dex */
public final /* synthetic */ class w implements InterfaceC1178C {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11161a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ com.airbnb.lottie.a f11162b;

    public /* synthetic */ w(com.airbnb.lottie.a aVar, int i4) {
        this.f11161a = i4;
        this.f11162b = aVar;
    }

    @Override // k0.InterfaceC1178C
    public final void run() {
        int i4 = this.f11161a;
        com.airbnb.lottie.a aVar = this.f11162b;
        switch (i4) {
            case 0:
                aVar.m();
                return;
            default:
                aVar.j();
                return;
        }
    }
}
