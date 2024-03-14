package k0;
/* loaded from: classes.dex */
public final /* synthetic */ class x implements InterfaceC1178C {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11163a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ com.airbnb.lottie.a f11164b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f11165c;

    public /* synthetic */ x(com.airbnb.lottie.a aVar, String str, int i4) {
        this.f11163a = i4;
        this.f11164b = aVar;
        this.f11165c = str;
    }

    @Override // k0.InterfaceC1178C
    public final void run() {
        int i4 = this.f11163a;
        String str = this.f11165c;
        com.airbnb.lottie.a aVar = this.f11164b;
        switch (i4) {
            case 0:
                aVar.q(str);
                return;
            case 1:
                aVar.x(str);
                return;
            default:
                aVar.t(str);
                return;
        }
    }
}
