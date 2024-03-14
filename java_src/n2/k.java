package n2;

import android.view.View;
import androidx.core.view.c0;
import androidx.core.view.r;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class k implements r {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ q f11821d;

    public k(q qVar) {
        this.f11821d = qVar;
    }

    @Override // androidx.core.view.r
    public final c0 b(View view, c0 c0Var) {
        q qVar = this.f11821d;
        p pVar = qVar.f11836p;
        if (pVar != null) {
            qVar.f11829i.f7770U.remove(pVar);
        }
        p pVar2 = new p(qVar.f11832l, c0Var);
        qVar.f11836p = pVar2;
        pVar2.e(qVar.getWindow());
        BottomSheetBehavior bottomSheetBehavior = qVar.f11829i;
        p pVar3 = qVar.f11836p;
        ArrayList arrayList = bottomSheetBehavior.f7770U;
        if (!arrayList.contains(pVar3)) {
            arrayList.add(pVar3);
        }
        return c0Var;
    }
}
