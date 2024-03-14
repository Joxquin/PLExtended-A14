package J;
/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ E.f f577d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ int f578e;

    public b(E.f fVar, int i4) {
        this.f577d = fVar;
        this.f578e = i4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        E.f fVar = this.f577d;
        int i4 = this.f578e;
        D.m mVar = fVar.f335a;
        if (mVar != null) {
            mVar.c(i4);
        }
    }
}
