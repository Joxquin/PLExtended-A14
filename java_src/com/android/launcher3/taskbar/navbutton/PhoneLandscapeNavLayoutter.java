package com.android.launcher3.taskbar.navbutton;

import android.graphics.Point;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.core.view.K;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.taskbar.TaskbarManager;
import com.android.launcher3.util.DimensionUtils;
import com.android.systemui.shared.R;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public class PhoneLandscapeNavLayoutter extends AbstractNavButtonLayoutter {
    @Override // com.android.launcher3.taskbar.navbutton.NavButtonLayoutFactory$NavButtonLayoutter
    public void layoutButtons(DeviceProfile deviceProfile, boolean z4) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.taskbar_nav_buttons_size);
        Point taskbarPhoneDimensions = DimensionUtils.getTaskbarPhoneDimensions(deviceProfile, getResources(), TaskbarManager.isPhoneMode(deviceProfile));
        getNavButtonContainer().removeAllViews();
        getNavButtonContainer().setOrientation(1);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(taskbarPhoneDimensions.x, -1);
        layoutParams.topMargin = dimensionPixelSize;
        layoutParams.bottomMargin = dimensionPixelSize;
        int i4 = 0;
        layoutParams.setMarginEnd(0);
        layoutParams.setMarginStart(0);
        getNavButtonContainer().addView(getRecentsButton());
        getNavButtonContainer().addView(getHomeButton());
        getNavButtonContainer().addView(getBackButton());
        getNavButtonContainer().setLayoutParams(layoutParams);
        getNavButtonContainer().setGravity(17);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.taskbar_button_space_inbetween_phone);
        LinearLayout navButtonContainer = getNavButtonContainer();
        h.e(navButtonContainer, "<this>");
        K k4 = new K(navButtonContainer);
        while (k4.hasNext()) {
            Object next = k4.next();
            int i5 = i4 + 1;
            if (i4 < 0) {
                throw new ArithmeticException("Index overflow has happened.");
            }
            ViewGroup.LayoutParams layoutParams2 = ((View) next).getLayoutParams();
            h.c(layoutParams2, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
            LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams2;
            layoutParams3.weight = 1.0f;
            if (i4 == 0) {
                layoutParams3.bottomMargin = dimensionPixelSize2 / 2;
            } else if (i4 == getNavButtonContainer().getChildCount() - 1) {
                layoutParams3.topMargin = dimensionPixelSize2 / 2;
            } else {
                int i6 = dimensionPixelSize2 / 2;
                layoutParams3.bottomMargin = i6;
                layoutParams3.topMargin = i6;
            }
            i4 = i5;
        }
    }
}
