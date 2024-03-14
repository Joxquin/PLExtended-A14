package com.android.launcher3.taskbar.navbutton;

import android.graphics.Color;
import android.graphics.drawable.PaintDrawable;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.launcher3.DeviceProfile;
import com.android.systemui.shared.R;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class KidsNavLayoutter extends AbstractNavButtonLayoutter {
    @Override // com.android.launcher3.taskbar.navbutton.NavButtonLayoutFactory$NavButtonLayoutter
    public final void layoutButtons(DeviceProfile deviceProfile, boolean z4) {
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.taskbar_icon_size_kids);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.taskbar_nav_buttons_width_kids);
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.taskbar_nav_buttons_height_kids);
        int dimensionPixelSize4 = getResources().getDimensionPixelSize(R.dimen.taskbar_nav_buttons_corner_radius_kids);
        int i4 = (dimensionPixelSize2 - dimensionPixelSize) / 2;
        int i5 = (dimensionPixelSize3 - dimensionPixelSize) / 2;
        ImageView backButton = getBackButton();
        h.b(backButton);
        backButton.setImageDrawable(getBackButton().getContext().getDrawable(R.drawable.ic_sysbar_back_kids));
        getBackButton().setScaleType(ImageView.ScaleType.FIT_CENTER);
        getBackButton().setPadding(i4, i5, i4, i5);
        ImageView homeButton = getHomeButton();
        h.b(homeButton);
        homeButton.setImageDrawable(getHomeButton().getContext().getDrawable(R.drawable.ic_sysbar_home_kids));
        getHomeButton().setScaleType(ImageView.ScaleType.FIT_CENTER);
        getHomeButton().setPadding(i4, i5, i4, i5);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize2, dimensionPixelSize3);
        layoutParams.setMargins(getResources().getDimensionPixelSize(R.dimen.taskbar_home_button_left_margin_kids), 0, 0, 0);
        getHomeButton().setLayoutParams(layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(dimensionPixelSize2, dimensionPixelSize3);
        layoutParams2.setMargins(getResources().getDimensionPixelSize(R.dimen.taskbar_back_button_left_margin_kids), 0, 0, 0);
        getBackButton().setLayoutParams(layoutParams2);
        PaintDrawable paintDrawable = new PaintDrawable(Color.argb(0.1f, 1.0f, 1.0f, 1.0f));
        paintDrawable.setCornerRadius(dimensionPixelSize4);
        getHomeButton().setBackground(paintDrawable);
        getBackButton().setBackground(paintDrawable);
        ViewGroup.LayoutParams layoutParams3 = getNavButtonContainer().getLayoutParams();
        h.c(layoutParams3, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) layoutParams3;
        layoutParams4.setMarginStart(layoutParams4.getMarginEnd() / 2);
        layoutParams4.setMarginEnd(layoutParams4.getMarginStart());
        layoutParams4.gravity = 17;
        getNavButtonContainer().requestLayout();
        getHomeButton().setOnLongClickListener(null);
    }
}
