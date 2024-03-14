package w;

import androidx.constraintlayout.core.widgets.ConstraintWidget$DimensionBehaviour;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class i {
    public static m a(v.f fVar, int i4, ArrayList arrayList, m mVar) {
        boolean z4;
        int i5;
        int i6 = i4 == 0 ? fVar.f12532q0 : fVar.f12534r0;
        if (i6 != -1 && (mVar == null || i6 != mVar.f12715b)) {
            int i7 = 0;
            while (true) {
                if (i7 >= arrayList.size()) {
                    break;
                }
                m mVar2 = (m) arrayList.get(i7);
                if (mVar2.f12715b == i6) {
                    if (mVar != null) {
                        mVar.c(i4, mVar2);
                        arrayList.remove(mVar);
                    }
                    mVar = mVar2;
                } else {
                    i7++;
                }
            }
        } else if (i6 != -1) {
            return mVar;
        }
        if (mVar == null) {
            if (fVar instanceof v.l) {
                v.l lVar = (v.l) fVar;
                int i8 = 0;
                while (true) {
                    if (i8 >= lVar.f12614t0) {
                        i5 = -1;
                        break;
                    }
                    v.f fVar2 = lVar.f12613s0[i8];
                    if ((i4 == 0 && (i5 = fVar2.f12532q0) != -1) || (i4 == 1 && (i5 = fVar2.f12534r0) != -1)) {
                        break;
                    }
                    i8++;
                }
                if (i5 != -1) {
                    int i9 = 0;
                    while (true) {
                        if (i9 >= arrayList.size()) {
                            break;
                        }
                        m mVar3 = (m) arrayList.get(i9);
                        if (mVar3.f12715b == i5) {
                            mVar = mVar3;
                            break;
                        }
                        i9++;
                    }
                }
            }
            if (mVar == null) {
                mVar = new m(i4);
            }
            arrayList.add(mVar);
        }
        ArrayList arrayList2 = mVar.f12714a;
        if (arrayList2.contains(fVar)) {
            z4 = false;
        } else {
            arrayList2.add(fVar);
            z4 = true;
        }
        if (z4) {
            if (fVar instanceof v.j) {
                v.j jVar = (v.j) fVar;
                jVar.f12610v0.c(jVar.f12611w0 == 0 ? 1 : 0, mVar, arrayList);
            }
            int i10 = mVar.f12715b;
            if (i4 == 0) {
                fVar.f12532q0 = i10;
                fVar.f12483K.c(i4, mVar, arrayList);
                fVar.f12485M.c(i4, mVar, arrayList);
            } else {
                fVar.f12534r0 = i10;
                fVar.f12484L.c(i4, mVar, arrayList);
                fVar.f12487O.c(i4, mVar, arrayList);
                fVar.f12486N.c(i4, mVar, arrayList);
            }
            fVar.f12490R.c(i4, mVar, arrayList);
        }
        return mVar;
    }

    public static boolean b(ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour2, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour3, ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour4) {
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour5 = ConstraintWidget$DimensionBehaviour.FIXED;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour6 = ConstraintWidget$DimensionBehaviour.MATCH_PARENT;
        ConstraintWidget$DimensionBehaviour constraintWidget$DimensionBehaviour7 = ConstraintWidget$DimensionBehaviour.WRAP_CONTENT;
        return (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour5 || constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour7 || (constraintWidget$DimensionBehaviour3 == constraintWidget$DimensionBehaviour6 && constraintWidget$DimensionBehaviour != constraintWidget$DimensionBehaviour7)) || (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour5 || constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour7 || (constraintWidget$DimensionBehaviour4 == constraintWidget$DimensionBehaviour6 && constraintWidget$DimensionBehaviour2 != constraintWidget$DimensionBehaviour7));
    }
}
