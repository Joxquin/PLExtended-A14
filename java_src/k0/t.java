package k0;
/* loaded from: classes.dex */
public final /* synthetic */ class t implements InterfaceC1178C {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11152a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ com.airbnb.lottie.a f11153b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ float f11154c;

    public /* synthetic */ t(com.airbnb.lottie.a aVar, float f4, int i4) {
        this.f11152a = i4;
        this.f11153b = aVar;
        this.f11154c = f4;
    }

    @Override // k0.InterfaceC1178C
    public final void run() {
        int i4 = this.f11152a;
        float f4 = this.f11154c;
        com.airbnb.lottie.a aVar = this.f11153b;
        switch (i4) {
            case 0:
                aVar.z(f4);
                return;
            case 1:
                aVar.y(f4);
                return;
            default:
                aVar.r(f4);
                return;
        }
    }
}
