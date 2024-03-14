package com.google.android.material.transformation;

import I2.g;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0186x;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import j2.i;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import z.f;
@Deprecated
/* loaded from: classes.dex */
public class FabTransformationSheetBehavior extends FabTransformationBehavior {

    /* renamed from: i  reason: collision with root package name */
    public Map f8269i;

    public FabTransformationSheetBehavior() {
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    public final void s(View view, View view2, boolean z4, boolean z5) {
        ViewParent parent = view2.getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z4) {
                this.f8269i = new HashMap(childCount);
            }
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = coordinatorLayout.getChildAt(i4);
                boolean z6 = (childAt.getLayoutParams() instanceof f) && (((f) childAt.getLayoutParams()).f12967a instanceof FabTransformationScrimBehavior);
                if (childAt != view2 && !z6) {
                    if (z4) {
                        ((HashMap) this.f8269i).put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        WeakHashMap weakHashMap = J.f3079a;
                        C0186x.o(childAt, 4);
                    } else {
                        Map map = this.f8269i;
                        if (map != null && ((HashMap) map).containsKey(childAt)) {
                            int intValue = ((Integer) ((HashMap) this.f8269i).get(childAt)).intValue();
                            WeakHashMap weakHashMap2 = J.f3079a;
                            C0186x.o(childAt, intValue);
                        }
                    }
                }
            }
            if (!z4) {
                this.f8269i = null;
            }
        }
        super.s(view, view2, z4, z5);
    }

    @Override // com.google.android.material.transformation.FabTransformationBehavior
    public final g z(Context context, boolean z4) {
        int i4 = z4 ? R.animator.mtrl_fab_transformation_sheet_expand_spec : R.animator.mtrl_fab_transformation_sheet_collapse_spec;
        g gVar = new g();
        gVar.f571a = j2.g.a(i4, context);
        gVar.f572b = new i();
        return gVar;
    }

    public FabTransformationSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
