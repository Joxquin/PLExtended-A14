package w;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.ArrayList;
/* renamed from: w.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1441c {

    /* renamed from: a  reason: collision with root package name */
    public final ArrayList f12697a = new ArrayList();

    /* renamed from: b  reason: collision with root package name */
    public final C1440b f12698b = new C1440b();

    /* renamed from: c  reason: collision with root package name */
    public final v.g f12699c;

    public C1441c(v.g gVar) {
        this.f12699c = gVar;
    }

    public final boolean a(int i4, v.f fVar, androidx.constraintlayout.widget.e eVar) {
        ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = fVar.f12494V;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviourArr[0];
        C1440b c1440b = this.f12698b;
        c1440b.f12687a = constraintWidget$DimensionBehaviour;
        c1440b.f12688b = constraintWidget$DimensionBehaviourArr[1];
        c1440b.f12689c = fVar.r();
        c1440b.f12690d = fVar.l();
        c1440b.f12695i = false;
        c1440b.f12696j = i4;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = c1440b.f12687a;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
        boolean z4 = constraintWidget$DimensionBehaviour2 == constraintWidget$DimensionBehaviour3;
        boolean z5 = c1440b.f12688b == constraintWidget$DimensionBehaviour3;
        boolean z6 = z4 && fVar.f12498Z > 0.0f;
        boolean z7 = z5 && fVar.f12498Z > 0.0f;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4 = ConstraintWidget$DimensionBehaviour.FIXED;
        int[] iArr = fVar.f12537u;
        if (z6 && iArr[0] == 4) {
            c1440b.f12687a = constraintWidget$DimensionBehaviour4;
        }
        if (z7 && iArr[1] == 4) {
            c1440b.f12688b = constraintWidget$DimensionBehaviour4;
        }
        eVar.b(fVar, c1440b);
        fVar.O(c1440b.f12691e);
        fVar.L(c1440b.f12692f);
        fVar.f12478F = c1440b.f12694h;
        int i5 = c1440b.f12693g;
        fVar.f12506d0 = i5;
        fVar.f12478F = i5 > 0;
        c1440b.f12696j = 0;
        return c1440b.f12695i;
    }

    public final void b(v.g gVar, int i4, int i5, int i6) {
        gVar.getClass();
        int i7 = gVar.f12508e0;
        int i8 = gVar.f12510f0;
        gVar.f12508e0 = 0;
        gVar.f12510f0 = 0;
        gVar.O(i5);
        gVar.L(i6);
        if (i7 < 0) {
            gVar.f12508e0 = 0;
        } else {
            gVar.f12508e0 = i7;
        }
        if (i8 < 0) {
            gVar.f12510f0 = 0;
        } else {
            gVar.f12510f0 = i8;
        }
        v.g gVar2 = this.f12699c;
        gVar2.f12559v0 = i4;
        gVar2.R();
    }

    public final void c(v.g gVar) {
        ArrayList arrayList = this.f12697a;
        arrayList.clear();
        int size = gVar.f12627s0.size();
        for (int i4 = 0; i4 < size; i4++) {
            v.f fVar = (v.f) gVar.f12627s0.get(i4);
            ConstraintWidget$DimensionBehaviour[] constraintWidget$DimensionBehaviourArr = fVar.f12494V;
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour = constraintWidget$DimensionBehaviourArr[0];
            ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2 = ConstraintWidget$DimensionBehaviour.MATCH_CONSTRAINT;
            if (constraintWidget$DimensionBehaviour == constraintWidget$DimensionBehaviour2 || constraintWidget$DimensionBehaviourArr[1] == constraintWidget$DimensionBehaviour2) {
                arrayList.add(fVar);
            }
        }
        gVar.f12558u0.f12703b = true;
    }
}
