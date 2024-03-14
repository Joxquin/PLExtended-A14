package v;

import java.util.ArrayList;
/* loaded from: classes.dex */
public class l extends f implements k {

    /* renamed from: s0  reason: collision with root package name */
    public f[] f12613s0 = new f[4];

    /* renamed from: t0  reason: collision with root package name */
    public int f12614t0 = 0;

    public final void R(int i4, w.m mVar, ArrayList arrayList) {
        for (int i5 = 0; i5 < this.f12614t0; i5++) {
            f fVar = this.f12613s0[i5];
            ArrayList arrayList2 = mVar.f12714a;
            if (!arrayList2.contains(fVar)) {
                arrayList2.add(fVar);
            }
        }
        for (int i6 = 0; i6 < this.f12614t0; i6++) {
            w.i.a(this.f12613s0[i6], i4, arrayList, mVar);
        }
    }

    @Override // v.k
    public void a() {
    }
}
