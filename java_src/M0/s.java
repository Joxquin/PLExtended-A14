package m0;

import android.graphics.Path;
import com.airbnb.lottie.model.content.ShapeTrimPath$Type;
import java.util.ArrayList;
import java.util.List;
import n0.InterfaceC1313a;
/* loaded from: classes.dex */
public final class s implements n, InterfaceC1313a {

    /* renamed from: b  reason: collision with root package name */
    public final boolean f11711b;

    /* renamed from: c  reason: collision with root package name */
    public final com.airbnb.lottie.a f11712c;

    /* renamed from: d  reason: collision with root package name */
    public final n0.s f11713d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f11714e;

    /* renamed from: a  reason: collision with root package name */
    public final Path f11710a = new Path();

    /* renamed from: f  reason: collision with root package name */
    public final C1302c f11715f = new C1302c();

    public s(com.airbnb.lottie.a aVar, s0.b bVar, r0.p pVar) {
        pVar.getClass();
        this.f11711b = pVar.f12140d;
        this.f11712c = aVar;
        n0.s sVar = new n0.s(pVar.f12139c.f11988a);
        this.f11713d = sVar;
        bVar.d(sVar);
        sVar.a(this);
    }

    @Override // n0.InterfaceC1313a
    public final void b() {
        this.f11714e = false;
        this.f11712c.invalidateSelf();
    }

    @Override // m0.InterfaceC1303d
    public final void c(List list, List list2) {
        ArrayList arrayList = null;
        int i4 = 0;
        while (true) {
            ArrayList arrayList2 = (ArrayList) list;
            if (i4 >= arrayList2.size()) {
                this.f11713d.f11777k = arrayList;
                return;
            }
            InterfaceC1303d interfaceC1303d = (InterfaceC1303d) arrayList2.get(i4);
            if (interfaceC1303d instanceof v) {
                v vVar = (v) interfaceC1303d;
                if (vVar.f11723c == ShapeTrimPath$Type.SIMULTANEOUSLY) {
                    ((ArrayList) this.f11715f.f11601a).add(vVar);
                    vVar.d(this);
                    i4++;
                }
            }
            if (interfaceC1303d instanceof t) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add((t) interfaceC1303d);
            }
            i4++;
        }
    }

    @Override // m0.n
    public final Path g() {
        boolean z4 = this.f11714e;
        Path path = this.f11710a;
        if (z4) {
            return path;
        }
        path.reset();
        if (this.f11711b) {
            this.f11714e = true;
            return path;
        }
        Path path2 = (Path) this.f11713d.f();
        if (path2 == null) {
            return path;
        }
        path.set(path2);
        path.setFillType(Path.FillType.EVEN_ODD);
        this.f11715f.a(path);
        this.f11714e = true;
        return path;
    }
}
