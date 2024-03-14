package com.android.launcher3;

import android.view.View;
import com.android.launcher3.accessibility.BaseAccessibilityDelegate;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.uioverrides.PredictedAppIcon;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class QuickstepAccessibilityDelegate extends LauncherAccessibilityDelegate {
    public QuickstepAccessibilityDelegate(QuickstepLauncher quickstepLauncher) {
        super(quickstepLauncher);
        this.mActions.put(R.id.action_pin_prediction, new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_pin_prediction, R.string.pin_prediction, 44));
    }

    @Override // com.android.launcher3.accessibility.LauncherAccessibilityDelegate, com.android.launcher3.accessibility.BaseAccessibilityDelegate
    public final void getSupportedActions(View view, ItemInfo itemInfo, List list) {
        if ((view instanceof PredictedAppIcon) && !((PredictedAppIcon) view).isPinned()) {
            ((ArrayList) list).add(new BaseAccessibilityDelegate.LauncherAction(this, R.id.action_pin_prediction, R.string.pin_prediction, 44));
        }
        super.getSupportedActions(view, itemInfo, list);
    }

    @Override // com.android.launcher3.accessibility.LauncherAccessibilityDelegate, com.android.launcher3.accessibility.BaseAccessibilityDelegate
    public final boolean performAction(View view, ItemInfo itemInfo, int i4, boolean z4) {
        QuickstepLauncher quickstepLauncher = (QuickstepLauncher) this.mContext;
        if (i4 == R.id.action_pin_prediction) {
            if (quickstepLauncher.getHotseatPredictionController() == null) {
                return false;
            }
            quickstepLauncher.getHotseatPredictionController().pinPrediction(itemInfo);
            return true;
        }
        return super.performAction(view, itemInfo, i4, z4);
    }
}
