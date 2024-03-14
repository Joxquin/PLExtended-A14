package w;

import java.util.ArrayList;
/* loaded from: classes.dex */
public final class j extends androidx.constraintlayout.core.widgets.analyzer.f {
    public j(v.f fVar) {
        super(fVar);
        fVar.f12505d.f();
        fVar.f12507e.f();
        this.f2760f = ((v.j) fVar).f12611w0;
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f, w.InterfaceC1443e
    public final void a(InterfaceC1443e interfaceC1443e) {
        androidx.constraintlayout.core.widgets.analyzer.a aVar = this.f2762h;
        if (aVar.f2741c && !aVar.f2748j) {
            aVar.d((int) ((((androidx.constraintlayout.core.widgets.analyzer.a) ((ArrayList) aVar.f2750l).get(0)).f2745g * ((v.j) this.f2756b).f12607s0) + 0.5f));
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void d() {
        v.f fVar = this.f2756b;
        v.j jVar = (v.j) fVar;
        int i4 = jVar.f12608t0;
        int i5 = jVar.f12609u0;
        int i6 = jVar.f12611w0;
        androidx.constraintlayout.core.widgets.analyzer.a aVar = this.f2762h;
        if (i6 == 1) {
            if (i4 != -1) {
                ((ArrayList) aVar.f2750l).add(fVar.f12495W.f12505d.f2762h);
                ((ArrayList) this.f2756b.f12495W.f12505d.f2762h.f2749k).add(aVar);
                aVar.f2744f = i4;
            } else if (i5 != -1) {
                ((ArrayList) aVar.f2750l).add(fVar.f12495W.f12505d.f2763i);
                ((ArrayList) this.f2756b.f12495W.f12505d.f2763i.f2749k).add(aVar);
                aVar.f2744f = -i5;
            } else {
                aVar.f2740b = true;
                ((ArrayList) aVar.f2750l).add(fVar.f12495W.f12505d.f2763i);
                ((ArrayList) this.f2756b.f12495W.f12505d.f2763i.f2749k).add(aVar);
            }
            m(this.f2756b.f12505d.f2762h);
            m(this.f2756b.f12505d.f2763i);
            return;
        }
        if (i4 != -1) {
            ((ArrayList) aVar.f2750l).add(fVar.f12495W.f12507e.f2762h);
            ((ArrayList) this.f2756b.f12495W.f12507e.f2762h.f2749k).add(aVar);
            aVar.f2744f = i4;
        } else if (i5 != -1) {
            ((ArrayList) aVar.f2750l).add(fVar.f12495W.f12507e.f2763i);
            ((ArrayList) this.f2756b.f12495W.f12507e.f2763i.f2749k).add(aVar);
            aVar.f2744f = -i5;
        } else {
            aVar.f2740b = true;
            ((ArrayList) aVar.f2750l).add(fVar.f12495W.f12507e.f2763i);
            ((ArrayList) this.f2756b.f12495W.f12507e.f2763i.f2749k).add(aVar);
        }
        m(this.f2756b.f12507e.f2762h);
        m(this.f2756b.f12507e.f2763i);
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void e() {
        v.f fVar = this.f2756b;
        int i4 = ((v.j) fVar).f12611w0;
        androidx.constraintlayout.core.widgets.analyzer.a aVar = this.f2762h;
        if (i4 == 1) {
            fVar.f12502b0 = aVar.f2745g;
        } else {
            fVar.f12504c0 = aVar.f2745g;
        }
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final void f() {
        this.f2762h.c();
    }

    @Override // androidx.constraintlayout.core.widgets.analyzer.f
    public final boolean k() {
        return false;
    }

    public final void m(androidx.constraintlayout.core.widgets.analyzer.a aVar) {
        androidx.constraintlayout.core.widgets.analyzer.a aVar2 = this.f2762h;
        ((ArrayList) aVar2.f2749k).add(aVar);
        ((ArrayList) aVar.f2750l).add(aVar2);
    }
}
