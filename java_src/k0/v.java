package k0;
/* loaded from: classes.dex */
public final /* synthetic */ class v implements InterfaceC1178C {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11158a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ com.airbnb.lottie.a f11159b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f11160c;

    public /* synthetic */ v(com.airbnb.lottie.a aVar, int i4, int i5) {
        this.f11158a = i5;
        this.f11159b = aVar;
        this.f11160c = i4;
    }

    @Override // k0.InterfaceC1178C
    public final void run() {
        int i4 = this.f11158a;
        int i5 = this.f11160c;
        com.airbnb.lottie.a aVar = this.f11159b;
        switch (i4) {
            case 0:
                aVar.w(i5);
                return;
            case 1:
                aVar.p(i5);
                return;
            default:
                aVar.o(i5);
                return;
        }
    }
}
