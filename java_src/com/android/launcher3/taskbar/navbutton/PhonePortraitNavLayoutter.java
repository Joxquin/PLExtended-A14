package com.android.launcher3.taskbar.navbutton;

import android.graphics.Point;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.taskbar.TaskbarManager;
import com.android.launcher3.util.DimensionUtils;
import com.android.systemui.shared.R;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class PhonePortraitNavLayoutter extends AbstractNavButtonLayoutter {
    @Override // com.android.launcher3.taskbar.navbutton.NavButtonLayoutFactory$NavButtonLayoutter
    public final void layoutButtons(DeviceProfile deviceProfile, boolean z4) {
        Point taskbarPhoneDimensions = DimensionUtils.getTaskbarPhoneDimensions(deviceProfile, getResources(), TaskbarManager.isPhoneMode(deviceProfile));
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.taskbar_nav_buttons_size);
        getNavButtonContainer().removeAllViews();
        getNavButtonContainer().setOrientation(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(taskbarPhoneDimensions.x, -1);
        layoutParams.topMargin = 0;
        layoutParams.bottomMargin = 0;
        layoutParams.setMarginEnd(dimensionPixelSize);
        layoutParams.setMarginStart(dimensionPixelSize);
        getNavButtonContainer().addView(getBackButton());
        getNavButtonContainer().addView(getHomeButton());
        getNavButtonContainer().addView(getRecentsButton());
        getNavButtonContainer().setLayoutParams(layoutParams);
        getNavButtonContainer().setGravity(17);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.taskbar_button_space_inbetween_phone);
        int childCount = getNavButtonContainer().getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            ViewGroup.LayoutParams layoutParams2 = getNavButtonContainer().getChildAt(i4).getLayoutParams();
            h.c(layoutParams2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams2;
            layoutParams3.weight = 1.0f;
            if (i4 == 0) {
                layoutParams3.setMarginEnd(dimensionPixelSize2 / 2);
            } else if (i4 == getNavButtonContainer().getChildCount() - 1) {
                layoutParams3.setMarginStart(dimensionPixelSize2 / 2);
            } else {
                int i5 = dimensionPixelSize2 / 2;
                layoutParams3.setMarginStart(i5);
                layoutParams3.setMarginEnd(i5);
            }
        }
    }
}
