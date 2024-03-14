package com.google.android.systemui.smartspace;

import android.app.smartspace.SmartspaceAction;
import android.app.smartspace.SmartspaceTarget;
import android.content.Context;
import android.util.AttributeSet;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.android.systemui.shared.R;
import java.util.List;
import n1.d;
/* loaded from: classes.dex */
public class BcSmartspaceCardCombinationAtStore extends BcSmartspaceCardCombination {
    public BcSmartspaceCardCombinationAtStore(Context context) {
        super(context);
    }

    @Override // com.google.android.systemui.smartspace.BcSmartspaceCardCombination, K2.AbstractC0041n
    public final boolean t(SmartspaceTarget smartspaceTarget, d dVar, L2.d dVar2) {
        SmartspaceAction smartspaceAction;
        List actionChips = smartspaceTarget.getActionChips();
        if (actionChips == null || actionChips.isEmpty() || (smartspaceAction = (SmartspaceAction) actionChips.get(0)) == null) {
            return false;
        }
        ConstraintLayout constraintLayout = this.f8292e;
        boolean z4 = (constraintLayout instanceof BcSmartspaceCardShoppingList) && ((BcSmartspaceCardShoppingList) constraintLayout).t(smartspaceTarget, dVar, dVar2);
        ConstraintLayout constraintLayout2 = this.f8293f;
        boolean z5 = constraintLayout2 != null && v(constraintLayout2, smartspaceTarget, smartspaceAction, dVar, dVar2);
        if (z4) {
            this.f8292e.setBackgroundResource(R.drawable.bg_smartspace_combination_sub_card);
        }
        return z4 && z5;
    }

    public BcSmartspaceCardCombinationAtStore(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
}
