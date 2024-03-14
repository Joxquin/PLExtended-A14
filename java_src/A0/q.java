package A0;
/* loaded from: classes.dex */
public final /* synthetic */ class q implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f29d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ u f30e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ u f31f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Object f32g;

    public /* synthetic */ q(Object obj, u uVar, u uVar2, int i4) {
        this.f29d = i4;
        this.f32g = obj;
        this.f30e = uVar;
        this.f31f = uVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f29d) {
            case 0:
                x xVar = (x) this.f32g;
                u uVar = this.f30e;
                this.f31f.f57f = xVar.f76d;
                xVar.f76d = uVar;
                return;
            default:
                u uVar2 = this.f30e;
                u uVar3 = this.f31f;
                x xVar2 = ((w) this.f32g).f70m;
                uVar3.f57f = xVar2.f76d;
                xVar2.f76d = uVar2;
                return;
        }
    }
}
