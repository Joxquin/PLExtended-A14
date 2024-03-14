package q0;

import java.util.List;
import n0.p;
import n0.q;
import x0.C1456a;
/* loaded from: classes.dex */
public final class e implements m {

    /* renamed from: a  reason: collision with root package name */
    public final List f11972a;

    public e(List list) {
        this.f11972a = list;
    }

    @Override // q0.m
    public final n0.f a() {
        List list = this.f11972a;
        return ((C1456a) list.get(0)).c() ? new q(list) : new p(list);
    }

    @Override // q0.m
    public final List b() {
        return this.f11972a;
    }

    @Override // q0.m
    public final boolean c() {
        List list = this.f11972a;
        return list.size() == 1 && ((C1456a) list.get(0)).c();
    }
}
