package m0;

import com.airbnb.lottie.model.content.ShapeTrimPath$Type;
import java.util.ArrayList;
import java.util.List;
import n0.InterfaceC1313a;
/* loaded from: classes.dex */
public final class v implements InterfaceC1303d, InterfaceC1313a {

    /* renamed from: a  reason: collision with root package name */
    public final boolean f11721a;

    /* renamed from: b  reason: collision with root package name */
    public final List f11722b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public final ShapeTrimPath$Type f11723c;

    /* renamed from: d  reason: collision with root package name */
    public final n0.j f11724d;

    /* renamed from: e  reason: collision with root package name */
    public final n0.j f11725e;

    /* renamed from: f  reason: collision with root package name */
    public final n0.j f11726f;

    public v(s0.b bVar, r0.r rVar) {
        rVar.getClass();
        this.f11721a = rVar.f12155e;
        this.f11723c = rVar.f12151a;
        n0.f a4 = rVar.f12152b.a();
        this.f11724d = (n0.j) a4;
        n0.f a5 = rVar.f12153c.a();
        this.f11725e = (n0.j) a5;
        n0.f a6 = rVar.f12154d.a();
        this.f11726f = (n0.j) a6;
        bVar.d(a4);
        bVar.d(a5);
        bVar.d(a6);
        a4.a(this);
        a5.a(this);
        a6.a(this);
    }

    @Override // n0.InterfaceC1313a
    public final void b() {
        int i4 = 0;
        while (true) {
            List list = this.f11722b;
            if (i4 >= ((ArrayList) list).size()) {
                return;
            }
            ((InterfaceC1313a) ((ArrayList) list).get(i4)).b();
            i4++;
        }
    }

    @Override // m0.InterfaceC1303d
    public final void c(List list, List list2) {
    }

    public final void d(InterfaceC1313a interfaceC1313a) {
        ((ArrayList) this.f11722b).add(interfaceC1313a);
    }
}
