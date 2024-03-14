package androidx.constraintlayout.core.widgets.analyzer;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.ArrayList;
import v.C1428d;
import w.InterfaceC1443e;
import w.k;
/* loaded from: classes.dex */
public abstract class f implements InterfaceC1443e {

    /* renamed from: a  reason: collision with root package name */
    public int f2755a;

    /* renamed from: b  reason: collision with root package name */
    public v.f f2756b;

    /* renamed from: c  reason: collision with root package name */
    public k f2757c;

    /* renamed from: d  reason: collision with root package name */
    public ConstraintWidget$DimensionBehaviour f2758d;

    /* renamed from: e  reason: collision with root package name */
    public final b f2759e = new b(this);

    /* renamed from: f  reason: collision with root package name */
    public int f2760f = 0;

    /* renamed from: g  reason: collision with root package name */
    public boolean f2761g = false;

    /* renamed from: h  reason: collision with root package name */
    public final a f2762h = new a(this);

    /* renamed from: i  reason: collision with root package name */
    public final a f2763i = new a(this);

    /* renamed from: j  reason: collision with root package name */
    public WidgetRun$RunType f2764j = WidgetRun$RunType.NONE;

    public f(v.f fVar) {
        this.f2756b = fVar;
    }

    public static void b(a aVar, a aVar2, int i4) {
        ((ArrayList) aVar.f2750l).add(aVar2);
        aVar.f2744f = i4;
        ((ArrayList) aVar2.f2749k).add(aVar);
    }

    public static a h(C1428d c1428d) {
        C1428d c1428d2 = c1428d.f12469f;
        if (c1428d2 == null) {
            return null;
        }
        int ordinal = c1428d2.f12468e.ordinal();
        v.f fVar = c1428d2.f12467d;
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        if (ordinal != 5) {
                            return null;
                        }
                        return fVar.f12507e.f2753k;
                    }
                    return fVar.f12507e.f2763i;
                }
                return fVar.f12505d.f2763i;
            }
            return fVar.f12507e.f2762h;
        }
        return fVar.f12505d.f2762h;
    }

    public static a i(C1428d c1428d, int i4) {
        C1428d c1428d2 = c1428d.f12469f;
        if (c1428d2 == null) {
            return null;
        }
        v.f fVar = c1428d2.f12467d;
        f fVar2 = i4 == 0 ? fVar.f12505d : fVar.f12507e;
        int ordinal = c1428d2.f12468e.ordinal();
        if (ordinal == 1 || ordinal == 2) {
            return fVar2.f2762h;
        }
        if (ordinal == 3 || ordinal == 4) {
            return fVar2.f2763i;
        }
        return null;
    }

    @Override // w.InterfaceC1443e
    public void a(InterfaceC1443e interfaceC1443e) {
    }

    public final void c(a aVar, a aVar2, int i4, b bVar) {
        ((ArrayList) aVar.f2750l).add(aVar2);
        ((ArrayList) aVar.f2750l).add(this.f2759e);
        aVar.f2746h = i4;
        aVar.f2747i = bVar;
        ((ArrayList) aVar2.f2749k).add(aVar);
        ((ArrayList) bVar.f2749k).add(aVar);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i4, int i5) {
        int max;
        if (i5 == 0) {
            v.f fVar = this.f2756b;
            int i6 = fVar.f12539w;
            max = Math.max(fVar.f12538v, i4);
            if (i6 > 0) {
                max = Math.min(i6, i4);
            }
            if (max == i4) {
                return i4;
            }
        } else {
            v.f fVar2 = this.f2756b;
            int i7 = fVar2.f12542z;
            max = Math.max(fVar2.f12541y, i4);
            if (i7 > 0) {
                max = Math.min(i7, i4);
            }
            if (max == i4) {
                return i4;
            }
        }
        return max;
    }

    public long j() {
        b bVar = this.f2759e;
        if (bVar.f2748j) {
            return bVar.f2745g;
        }
        return 0L;
    }

    public abstract boolean k();

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0053, code lost:
        if (r10.f2755a == 3) goto L47;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(v.C1428d r13, v.C1428d r14, int r15) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.widgets.analyzer.f.l(v.d, v.d, int):void");
    }
}
