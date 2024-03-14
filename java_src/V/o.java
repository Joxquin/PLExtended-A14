package v;

import java.util.ArrayList;
/* loaded from: classes.dex */
public class o extends f {

    /* renamed from: s0  reason: collision with root package name */
    public ArrayList f12627s0 = new ArrayList();

    @Override // v.f
    public void D() {
        this.f12627s0.clear();
        super.D();
    }

    @Override // v.f
    public final void G(t.e eVar) {
        super.G(eVar);
        int size = this.f12627s0.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((f) this.f12627s0.get(i4)).G(eVar);
        }
    }

    public void R() {
        ArrayList arrayList = this.f12627s0;
        if (arrayList == null) {
            return;
        }
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            f fVar = (f) this.f12627s0.get(i4);
            if (fVar instanceof o) {
                ((o) fVar).R();
            }
        }
    }
}
