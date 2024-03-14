package q0;

import java.util.List;
import n0.t;
/* loaded from: classes.dex */
public final class i implements m {

    /* renamed from: a  reason: collision with root package name */
    public final C1360b f11973a;

    /* renamed from: b  reason: collision with root package name */
    public final C1360b f11974b;

    public i(C1360b c1360b, C1360b c1360b2) {
        this.f11973a = c1360b;
        this.f11974b = c1360b2;
    }

    @Override // q0.m
    public final n0.f a() {
        return new t((n0.j) this.f11973a.a(), (n0.j) this.f11974b.a());
    }

    @Override // q0.m
    public final List b() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // q0.m
    public final boolean c() {
        return this.f11973a.c() && this.f11974b.c();
    }
}
