package com.android.launcher3.taskbar.navbutton;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.android.launcher3.DeviceProfile;
import com.android.systemui.shared.R;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class TaskbarNavLayoutter extends AbstractNavButtonLayoutter {
    @Override // com.android.launcher3.taskbar.navbutton.NavButtonLayoutFactory$NavButtonLayoutter
    public final void layoutButtons(DeviceProfile deviceProfile, boolean z4) {
        int dimension = (int) getResources().getDimension(deviceProfile.inv.inlineNavButtonsEndSpacing);
        int width = getEndContextualContainer().getWidth();
        if (z4 && dimension < width) {
            dimension += getResources().getDimensionPixelSize(R.dimen.taskbar_hotseat_nav_spacing) / 2;
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
        layoutParams.gravity = 8388629;
        layoutParams.setMarginEnd(dimension);
        getNavButtonContainer().setOrientation(0);
        getNavButtonContainer().setLayoutParams(layoutParams);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.taskbar_button_space_inbetween);
        int childCount = getNavButtonContainer().getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            ViewGroup.LayoutParams layoutParams2 = getNavButtonContainer().getChildAt(i4).getLayoutParams();
            h.c(layoutParams2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams2;
            layoutParams3.weight = 0.0f;
            if (i4 == 0) {
                layoutParams3.setMarginEnd(dimensionPixelSize / 2);
            } else if (i4 == getNavButtonContainer().getChildCount() - 1) {
                layoutParams3.setMarginStart(dimensionPixelSize / 2);
            } else {
                int i5 = dimensionPixelSize / 2;
                layoutParams3.setMarginStart(i5);
                layoutParams3.setMarginEnd(i5);
            }
        }
    }
}
