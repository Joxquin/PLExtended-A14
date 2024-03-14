package v;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import w.C1440b;
import w.C1441c;
import w.C1442d;
/* loaded from: classes.dex */
public final class g extends o {

    /* renamed from: A0  reason: collision with root package name */
    public int f12543A0;

    /* renamed from: v0  reason: collision with root package name */
    public int f12559v0;

    /* renamed from: z0  reason: collision with root package name */
    public int f12563z0;

    /* renamed from: t0  reason: collision with root package name */
    public final C1441c f12557t0 = new C1441c(this);

    /* renamed from: u0  reason: collision with root package name */
    public final w.g f12558u0 = new w.g(this);

    /* renamed from: w0  reason: collision with root package name */
    public androidx.constraintlayout.widget.e f12560w0 = null;

    /* renamed from: x0  reason: collision with root package name */
    public boolean f12561x0 = false;

    /* renamed from: y0  reason: collision with root package name */
    public final t.f f12562y0 = new t.f();

    /* renamed from: B0  reason: collision with root package name */
    public int f12544B0 = 0;

    /* renamed from: C0  reason: collision with root package name */
    public int f12545C0 = 0;

    /* renamed from: D0  reason: collision with root package name */
    public C1427c[] f12546D0 = new C1427c[4];

    /* renamed from: E0  reason: collision with root package name */
    public C1427c[] f12547E0 = new C1427c[4];

    /* renamed from: F0  reason: collision with root package name */
    public int f12548F0 = 257;

    /* renamed from: G0  reason: collision with root package name */
    public boolean f12549G0 = false;

    /* renamed from: H0  reason: collision with root package name */
    public boolean f12550H0 = false;

    /* renamed from: I0  reason: collision with root package name */
    public WeakReference f12551I0 = null;

    /* renamed from: J0  reason: collision with root package name */
    public WeakReference f12552J0 = null;

    /* renamed from: K0  reason: collision with root package name */
    public WeakReference f12553K0 = null;

    /* renamed from: L0  reason: collision with root package name */
    public WeakReference f12554L0 = null;

    /* renamed from: M0  reason: collision with root package name */
    public final HashSet f12555M0 = new HashSet();

    /* renamed from: N0  reason: collision with root package name */
    public final C1440b f12556N0 = new C1440b();

    public static void V(f fVar, androidx.constraintlayout.widget.e eVar, C1440b c1440b) {
        int i4;
        int i5;
        if (eVar == null) {
            return;
        }
        if (fVar.f12518j0 == 8 || (fVar instanceof j) || (fVar instanceof C1425a)) {
            c1440b.f12691e = 0;
            c1440b.f12692f = 0;
            return;
        }
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = fVar.f12494V;
        c1440b.f12687a = constraintWidget$DimensionBehaviourArr[0];
        c1440b.f12688b = constraintWidget$DimensionBehaviourArr[1];
        c1440b.f12689c = fVar.r();
        c1440b.f12690d = fVar.l();
        c1440b.f12695i = false;
        c1440b.f12696j = 0;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = c1440b.f12687a;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z4 = constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2;
        boolean z5 = c1440b.f12688b == constraintWidget$DimensionBehaviour2;
        boolean z6 = z4 && fVar.f12498Z > 0.0f;
        boolean z7 = z5 && fVar.f12498Z > 0.0f;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.FIXED;
        if (z4 && fVar.u(0) && fVar.f12535s == 0 && !z6) {
            c1440b.f12687a = constraintWidget$DimensionBehaviour3;
            if (z5 && fVar.f12536t == 0) {
                c1440b.f12687a = constraintWidget$DimensionBehaviour4;
            }
            z4 = false;
        }
        if (z5 && fVar.u(1) && fVar.f12536t == 0 && !z7) {
            c1440b.f12688b = constraintWidget$DimensionBehaviour3;
            if (z4 && fVar.f12535s == 0) {
                c1440b.f12688b = constraintWidget$DimensionBehaviour4;
            }
            z5 = false;
        }
        if (fVar.B()) {
            c1440b.f12687a = constraintWidget$DimensionBehaviour4;
            z4 = false;
        }
        if (fVar.C()) {
            c1440b.f12688b = constraintWidget$DimensionBehaviour4;
            z5 = false;
        }
        int[] iArr = fVar.f12537u;
        if (z6) {
            if (iArr[0] == 4) {
                c1440b.f12687a = constraintWidget$DimensionBehaviour4;
            } else if (!z5) {
                if (c1440b.f12688b == constraintWidget$DimensionBehaviour4) {
                    i5 = c1440b.f12690d;
                } else {
                    c1440b.f12687a = constraintWidget$DimensionBehaviour3;
                    eVar.b(fVar, c1440b);
                    i5 = c1440b.f12692f;
                }
                c1440b.f12687a = constraintWidget$DimensionBehaviour4;
                c1440b.f12689c = (int) (fVar.f12498Z * i5);
            }
        }
        if (z7) {
            if (iArr[1] == 4) {
                c1440b.f12688b = constraintWidget$DimensionBehaviour4;
            } else if (!z4) {
                if (c1440b.f12687a == constraintWidget$DimensionBehaviour4) {
                    i4 = c1440b.f12689c;
                } else {
                    c1440b.f12688b = constraintWidget$DimensionBehaviour3;
                    eVar.b(fVar, c1440b);
                    i4 = c1440b.f12691e;
                }
                c1440b.f12688b = constraintWidget$DimensionBehaviour4;
                if (fVar.f12500a0 == -1) {
                    c1440b.f12690d = (int) (i4 / fVar.f12498Z);
                } else {
                    c1440b.f12690d = (int) (fVar.f12498Z * i4);
                }
            }
        }
        eVar.b(fVar, c1440b);
        fVar.O(c1440b.f12691e);
        fVar.L(c1440b.f12692f);
        fVar.f12478F = c1440b.f12694h;
        int i6 = c1440b.f12693g;
        fVar.f12506d0 = i6;
        fVar.f12478F = i6 > 0;
        c1440b.f12696j = 0;
    }

    @Override // v.o, v.f
    public final void D() {
        this.f12562y0.s();
        this.f12563z0 = 0;
        this.f12543A0 = 0;
        super.D();
    }

    @Override // v.f
    public final void P(boolean z4, boolean z5) {
        super.P(z4, z5);
        int size = this.f12627s0.size();
        for (int i4 = 0; i4 < size; i4++) {
            ((f) this.f12627s0.get(i4)).P(z4, z5);
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(28:220|(3:221|222|223)|(7:224|225|(1:227)|228|229|230|231)|(3:342|343|(29:345|346|347|348|349|350|351|234|235|(1:239)|240|(9:244|245|246|247|248|249|250|251|252)|329|(1:338)(3:333|334|335)|336|337|257|(4:259|(4:261|(1:271)(1:265)|(2:267|268)(1:270)|269)|272|273)(4:320|(1:322)|323|324)|274|(6:279|(1:281)|282|283|(1:287)|(1:291))|292|(1:294)|295|(1:297)(1:319)|(4:299|(1:304)|305|(5:308|(3:310|(2:312|313)(2:315|316)|314)|317|(0)(0)|314))|318|317|(0)(0)|314))|233|234|235|(2:237|239)|240|(10:242|244|245|246|247|248|249|250|251|252)|329|(1:331)|338|336|337|257|(0)(0)|274|(7:277|279|(0)|282|283|(2:285|287)|(2:289|291))|292|(0)|295|(0)(0)|(0)|318|317|(0)(0)|314) */
    /* JADX WARN: Code restructure failed: missing block: B:472:0x07cc, code lost:
        r0 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:351:0x05fe  */
    /* JADX WARN: Removed duplicated region for block: B:365:0x062b A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0633  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0654  */
    /* JADX WARN: Removed duplicated region for block: B:386:0x066a  */
    /* JADX WARN: Removed duplicated region for block: B:389:0x0671  */
    /* JADX WARN: Removed duplicated region for block: B:395:0x069e  */
    /* JADX WARN: Removed duplicated region for block: B:402:0x06b4 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:407:0x06c1  */
    /* JADX WARN: Removed duplicated region for block: B:414:0x06d2  */
    /* JADX WARN: Removed duplicated region for block: B:420:0x06ef  */
    /* JADX WARN: Removed duplicated region for block: B:490:0x080b  */
    /* JADX WARN: Removed duplicated region for block: B:503:0x0852  */
    /* JADX WARN: Removed duplicated region for block: B:509:0x086f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:514:0x087b A[LOOP:13: B:513:0x0879->B:514:0x087b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:526:0x08e0  */
    /* JADX WARN: Removed duplicated region for block: B:529:0x08fa  */
    /* JADX WARN: Removed duplicated region for block: B:530:0x0905  */
    /* JADX WARN: Removed duplicated region for block: B:532:0x0908  */
    /* JADX WARN: Removed duplicated region for block: B:547:0x0943  */
    /* JADX WARN: Removed duplicated region for block: B:548:0x0945  */
    /* JADX WARN: Removed duplicated region for block: B:552:0x0958  */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v13 */
    @Override // v.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void R() {
        /*
            Method dump skipped, instructions count: 2404
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: v.g.R():void");
    }

    public final void S(int i4, f fVar) {
        if (i4 == 0) {
            int i5 = this.f12544B0 + 1;
            C1427c[] c1427cArr = this.f12547E0;
            if (i5 >= c1427cArr.length) {
                this.f12547E0 = (C1427c[]) Arrays.copyOf(c1427cArr, c1427cArr.length * 2);
            }
            C1427c[] c1427cArr2 = this.f12547E0;
            int i6 = this.f12544B0;
            c1427cArr2[i6] = new C1427c(fVar, 0, this.f12561x0);
            this.f12544B0 = i6 + 1;
        } else if (i4 == 1) {
            int i7 = this.f12545C0 + 1;
            C1427c[] c1427cArr3 = this.f12546D0;
            if (i7 >= c1427cArr3.length) {
                this.f12546D0 = (C1427c[]) Arrays.copyOf(c1427cArr3, c1427cArr3.length * 2);
            }
            C1427c[] c1427cArr4 = this.f12546D0;
            int i8 = this.f12545C0;
            c1427cArr4[i8] = new C1427c(fVar, 1, this.f12561x0);
            this.f12545C0 = i8 + 1;
        }
    }

    public final void T(t.f fVar) {
        boolean z4;
        boolean W3 = W(64);
        c(fVar, W3);
        int size = this.f12627s0.size();
        boolean z5 = false;
        for (int i4 = 0; i4 < size; i4++) {
            f fVar2 = (f) this.f12627s0.get(i4);
            boolean[] zArr = fVar2.f12493U;
            zArr[0] = false;
            zArr[1] = false;
            if (fVar2 instanceof C1425a) {
                z5 = true;
            }
        }
        if (z5) {
            for (int i5 = 0; i5 < size; i5++) {
                f fVar3 = (f) this.f12627s0.get(i5);
                if (fVar3 instanceof C1425a) {
                    C1425a c1425a = (C1425a) fVar3;
                    for (int i6 = 0; i6 < c1425a.f12614t0; i6++) {
                        f fVar4 = c1425a.f12613s0[i6];
                        if (c1425a.f12444v0 || fVar4.d()) {
                            int i7 = c1425a.f12443u0;
                            if (i7 == 0 || i7 == 1) {
                                fVar4.f12493U[0] = true;
                            } else if (i7 == 2 || i7 == 3) {
                                fVar4.f12493U[1] = true;
                            }
                        }
                    }
                }
            }
        }
        HashSet hashSet = this.f12555M0;
        hashSet.clear();
        for (int i8 = 0; i8 < size; i8++) {
            f fVar5 = (f) this.f12627s0.get(i8);
            fVar5.getClass();
            if ((fVar5 instanceof n) || (fVar5 instanceof j)) {
                if (fVar5 instanceof n) {
                    hashSet.add(fVar5);
                } else {
                    fVar5.c(fVar, W3);
                }
            }
        }
        while (hashSet.size() > 0) {
            int size2 = hashSet.size();
            Iterator it = hashSet.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                n nVar = (n) ((f) it.next());
                int i9 = 0;
                while (true) {
                    if (i9 >= nVar.f12614t0) {
                        z4 = false;
                        continue;
                        break;
                    } else if (hashSet.contains(nVar.f12613s0[i9])) {
                        z4 = true;
                        continue;
                        break;
                    } else {
                        i9++;
                    }
                }
                if (z4) {
                    nVar.c(fVar, W3);
                    hashSet.remove(nVar);
                    break;
                }
            }
            if (size2 == hashSet.size()) {
                Iterator it2 = hashSet.iterator();
                while (it2.hasNext()) {
                    ((f) it2.next()).c(fVar, W3);
                }
                hashSet.clear();
            }
        }
        boolean z6 = t.f.f12305p;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        if (z6) {
            HashSet hashSet2 = new HashSet();
            for (int i10 = 0; i10 < size; i10++) {
                f fVar6 = (f) this.f12627s0.get(i10);
                fVar6.getClass();
                if (!((fVar6 instanceof n) || (fVar6 instanceof j))) {
                    hashSet2.add(fVar6);
                }
            }
            b(this, fVar, hashSet2, this.f12494V[0] == constraintWidget$DimensionBehaviour ? 0 : 1, false);
            Iterator it3 = hashSet2.iterator();
            while (it3.hasNext()) {
                f fVar7 = (f) it3.next();
                m.a(this, fVar, fVar7);
                fVar7.c(fVar, W3);
            }
        } else {
            for (int i11 = 0; i11 < size; i11++) {
                f fVar8 = (f) this.f12627s0.get(i11);
                if (fVar8 instanceof g) {
                    ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = fVar8.f12494V;
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = constraintWidget$DimensionBehaviourArr[0];
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = constraintWidget$DimensionBehaviourArr[1];
                    ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.FIXED;
                    if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour) {
                        fVar8.M(constraintWidget$DimensionBehaviour4);
                    }
                    if (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour) {
                        fVar8.N(constraintWidget$DimensionBehaviour4);
                    }
                    fVar8.c(fVar, W3);
                    if (constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour) {
                        fVar8.M(constraintWidget$DimensionBehaviour2);
                    }
                    if (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour) {
                        fVar8.N(constraintWidget$DimensionBehaviour3);
                    }
                } else {
                    m.a(this, fVar, fVar8);
                    if (!((fVar8 instanceof n) || (fVar8 instanceof j))) {
                        fVar8.c(fVar, W3);
                    }
                }
            }
        }
        if (this.f12544B0 > 0) {
            C1426b.a(this, fVar, null, 0);
        }
        if (this.f12545C0 > 0) {
            C1426b.a(this, fVar, null, 1);
        }
    }

    public final boolean U(int i4, boolean z4) {
        boolean z5;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour;
        boolean z6 = true;
        boolean z7 = z4 & true;
        w.g gVar = this.f12558u0;
        g gVar2 = gVar.f12702a;
        ConstraintWidget$DimensionBehaviour k4 = gVar2.k(0);
        ConstraintWidget$DimensionBehaviour k5 = gVar2.k(1);
        int s4 = gVar2.s();
        int t4 = gVar2.t();
        ArrayList arrayList = gVar.f12706e;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.FIXED;
        if (z7 && (k4 == (constraintWidget$DimensionBehaviour = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT) || k5 == constraintWidget$DimensionBehaviour)) {
            Iterator it = arrayList.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                androidx.constraintlayout.core.widgets.analyzer.f fVar = (androidx.constraintlayout.core.widgets.analyzer.f) it.next();
                if (fVar.f2760f == i4 && !fVar.k()) {
                    z7 = false;
                    break;
                }
            }
            if (i4 == 0) {
                if (z7 && k4 == constraintWidget$DimensionBehaviour) {
                    gVar2.M(constraintWidget$DimensionBehaviour2);
                    gVar2.O(gVar.d(gVar2, 0));
                    gVar2.f12505d.f2759e.d(gVar2.r());
                }
            } else if (z7 && k5 == constraintWidget$DimensionBehaviour) {
                gVar2.N(constraintWidget$DimensionBehaviour2);
                gVar2.L(gVar.d(gVar2, 1));
                gVar2.f12507e.f2759e.d(gVar2.l());
            }
        }
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.MATCH_PARENT;
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = gVar2.f12494V;
        if (i4 == 0) {
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = constraintWidget$DimensionBehaviourArr[0];
            if (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour2 || constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour3) {
                int r4 = gVar2.r() + s4;
                gVar2.f12505d.f2763i.d(r4);
                gVar2.f12505d.f2759e.d(r4 - s4);
                z5 = true;
            }
            z5 = false;
        } else {
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = constraintWidget$DimensionBehaviourArr[1];
            if (constraintWidget$DimensionBehaviour5 == constraintWidget$DimensionBehaviour2 || constraintWidget$DimensionBehaviour5 == constraintWidget$DimensionBehaviour3) {
                int l4 = gVar2.l() + t4;
                gVar2.f12507e.f2763i.d(l4);
                gVar2.f12507e.f2759e.d(l4 - t4);
                z5 = true;
            }
            z5 = false;
        }
        gVar.g();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            androidx.constraintlayout.core.widgets.analyzer.f fVar2 = (androidx.constraintlayout.core.widgets.analyzer.f) it2.next();
            if (fVar2.f2760f == i4 && (fVar2.f2756b != gVar2 || fVar2.f2761g)) {
                fVar2.e();
            }
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            androidx.constraintlayout.core.widgets.analyzer.f fVar3 = (androidx.constraintlayout.core.widgets.analyzer.f) it3.next();
            if (fVar3.f2760f == i4 && (z5 || fVar3.f2756b != gVar2)) {
                if (!fVar3.f2762h.f2748j || !fVar3.f2763i.f2748j || (!(fVar3 instanceof C1442d) && !fVar3.f2759e.f2748j)) {
                    z6 = false;
                    break;
                }
            }
        }
        gVar2.M(k4);
        gVar2.N(k5);
        return z6;
    }

    public final boolean W(int i4) {
        return (this.f12548F0 & i4) == i4;
    }

    @Override // v.f
    public final void o(StringBuilder sb) {
        sb.append(this.f12519k + ":{\n");
        StringBuilder sb2 = new StringBuilder("  actualWidth:");
        sb2.append(this.f12496X);
        sb.append(sb2.toString());
        sb.append("\n");
        sb.append("  actualHeight:" + this.f12497Y);
        sb.append("\n");
        Iterator it = this.f12627s0.iterator();
        while (it.hasNext()) {
            ((f) it.next()).o(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }
}
