package o2;

import android.view.View;
import androidx.core.view.C0165b;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
/* renamed from: o2.f  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1332f extends C0165b {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ MaterialButtonToggleGroup f11869d;

    public C1332f(MaterialButtonToggleGroup materialButtonToggleGroup) {
        this.f11869d = materialButtonToggleGroup;
    }

    @Override // androidx.core.view.C0165b
    public final void onInitializeAccessibilityNodeInfo(View view, M.e eVar) {
        int i4;
        super.onInitializeAccessibilityNodeInfo(view, eVar);
        int i5 = MaterialButtonToggleGroup.f7819n;
        MaterialButtonToggleGroup materialButtonToggleGroup = this.f11869d;
        materialButtonToggleGroup.getClass();
        if (view instanceof MaterialButton) {
            int i6 = 0;
            for (int i7 = 0; i7 < materialButtonToggleGroup.getChildCount(); i7++) {
                if (materialButtonToggleGroup.getChildAt(i7) == view) {
                    i4 = i6;
                    break;
                }
                if ((materialButtonToggleGroup.getChildAt(i7) instanceof MaterialButton) && materialButtonToggleGroup.d(i7)) {
                    i6++;
                }
            }
        }
        i4 = -1;
        eVar.i(M.d.a(0, 1, i4, 1, false, ((MaterialButton) view).isChecked()));
    }
}
