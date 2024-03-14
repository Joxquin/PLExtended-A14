package androidx.constraintlayout.core.widgets.analyzer;

import java.util.ArrayList;
import java.util.Iterator;
import v.C1425a;
import w.InterfaceC1443e;
/* loaded from: classes.dex */
public final class c extends f {
    @Override // androidx.constraintlayout.core.widgets.analyzer.f, w.InterfaceC1443e
    public final void a(InterfaceC1443e interfaceC1443e) {
        C1425a c1425a = (C1425a) this.f2756b;
        int i4 = c1425a.f12443u0;
        a aVar = this.f2762h;
        Iterator it = ((ArrayList) aVar.f2750l).iterator();
        int i5 = 0;
        int i6 = -1;
        while (it.hasNext()) {
            int i7 = ((a) it.next()).f2745g;
            if (i6 == -1 || i7 < i6) {
                i6 = i7;
            }
            if (i5 < i7) {
                i5 = i7;
            }
        }
        if (i4 == 0 || i4 == 2) {
            aVar.d(i6 + c1425a.f12445w0);
        } else {
            aVar.d(i5 + c1425a.f12445w0);
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void d() {
        v.f fVar = this.f2756b;
        if (fVar instanceof C1425a) {
            a aVar = this.f2762h;
            aVar.f2740b = true;
            C1425a c1425a = (C1425a) fVar;
            int i4 = c1425a.f12443u0;
            boolean z4 = c1425a.f12444v0;
            int i5 = 0;
            if (i4 == 0) {
                aVar.f2743e = DependencyNode$Type.LEFT;
                while (i5 < c1425a.f12614t0) {
                    v.f fVar2 = c1425a.f12613s0[i5];
                    if (z4 || fVar2.f12518j0 != 8) {
                        a aVar2 = fVar2.f12505d.f2762h;
                        ((ArrayList) aVar2.f2749k).add(aVar);
                        ((ArrayList) aVar.f2750l).add(aVar2);
                    }
                    i5++;
                }
                m(this.f2756b.f12505d.f2762h);
                m(this.f2756b.f12505d.f2763i);
            } else if (i4 == 1) {
                aVar.f2743e = DependencyNode$Type.RIGHT;
                while (i5 < c1425a.f12614t0) {
                    v.f fVar3 = c1425a.f12613s0[i5];
                    if (z4 || fVar3.f12518j0 != 8) {
                        a aVar3 = fVar3.f12505d.f2763i;
                        ((ArrayList) aVar3.f2749k).add(aVar);
                        ((ArrayList) aVar.f2750l).add(aVar3);
                    }
                    i5++;
                }
                m(this.f2756b.f12505d.f2762h);
                m(this.f2756b.f12505d.f2763i);
            } else if (i4 == 2) {
                aVar.f2743e = DependencyNode$Type.TOP;
                while (i5 < c1425a.f12614t0) {
                    v.f fVar4 = c1425a.f12613s0[i5];
                    if (z4 || fVar4.f12518j0 != 8) {
                        a aVar4 = fVar4.f12507e.f2762h;
                        ((ArrayList) aVar4.f2749k).add(aVar);
                        ((ArrayList) aVar.f2750l).add(aVar4);
                    }
                    i5++;
                }
                m(this.f2756b.f12507e.f2762h);
                m(this.f2756b.f12507e.f2763i);
            } else if (i4 != 3) {
            } else {
                aVar.f2743e = DependencyNode$Type.BOTTOM;
                while (i5 < c1425a.f12614t0) {
                    v.f fVar5 = c1425a.f12613s0[i5];
                    if (z4 || fVar5.f12518j0 != 8) {
                        a aVar5 = fVar5.f12507e.f2763i;
                        ((ArrayList) aVar5.f2749k).add(aVar);
                        ((ArrayList) aVar.f2750l).add(aVar5);
                    }
                    i5++;
                }
                m(this.f2756b.f12507e.f2762h);
                m(this.f2756b.f12507e.f2763i);
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void e() {
        v.f fVar = this.f2756b;
        if (fVar instanceof C1425a) {
            int i4 = ((C1425a) fVar).f12443u0;
            a aVar = this.f2762h;
            if (i4 == 0 || i4 == 1) {
                fVar.f12502b0 = aVar.f2745g;
            } else {
                fVar.f12504c0 = aVar.f2745g;
            }
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void f() {
        this.f2757c = null;
        this.f2762h.c();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final boolean k() {
        return false;
    }

    public final void m(a aVar) {
        a aVar2 = this.f2762h;
        ((ArrayList) aVar2.f2749k).add(aVar);
        ((ArrayList) aVar.f2750l).add(aVar2);
    }
}
