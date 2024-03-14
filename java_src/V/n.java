package v;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import w.C1440b;
/* loaded from: classes.dex */
public class n extends l {

    /* renamed from: u0  reason: collision with root package name */
    public int f12621u0 = 0;

    /* renamed from: v0  reason: collision with root package name */
    public int f12622v0 = 0;

    /* renamed from: w0  reason: collision with root package name */
    public int f12623w0 = 0;

    /* renamed from: x0  reason: collision with root package name */
    public int f12624x0 = 0;

    /* renamed from: y0  reason: collision with root package name */
    public int f12625y0 = 0;

    /* renamed from: z0  reason: collision with root package name */
    public int f12626z0 = 0;

    /* renamed from: A0  reason: collision with root package name */
    public boolean f12616A0 = false;

    /* renamed from: B0  reason: collision with root package name */
    public int f12617B0 = 0;

    /* renamed from: C0  reason: collision with root package name */
    public int f12618C0 = 0;

    /* renamed from: D0  reason: collision with root package name */
    public final C1440b f12619D0 = new C1440b();

    /* renamed from: E0  reason: collision with root package name */
    public androidx.constraintlayout.widget.e f12620E0 = null;

    public void S(int i4, int i5, int i6, int i7) {
    }

    public final void T(f fVar, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour, int i4, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2, int i5) {
        androidx.constraintlayout.widget.e eVar;
        f fVar2;
        while (true) {
            eVar = this.f12620E0;
            if (eVar != null || (fVar2 = this.f12495W) == null) {
                break;
            }
            this.f12620E0 = ((g) fVar2).f12560w0;
        }
        C1440b c1440b = this.f12619D0;
        c1440b.f12687a = constraintWidget$DimensionBehaviour;
        c1440b.f12688b = constraintWidget$DimensionBehaviour2;
        c1440b.f12689c = i4;
        c1440b.f12690d = i5;
        eVar.b(fVar, c1440b);
        fVar.O(c1440b.f12691e);
        fVar.L(c1440b.f12692f);
        fVar.f12478F = c1440b.f12694h;
        int i6 = c1440b.f12693g;
        fVar.f12506d0 = i6;
        fVar.f12478F = i6 > 0;
    }

    @Override // v.l, v.k
    public final void a() {
        for (int i4 = 0; i4 < this.f12614t0; i4++) {
            f fVar = this.f12613s0[i4];
            if (fVar != null) {
                fVar.f12480H = true;
            }
        }
    }
}
