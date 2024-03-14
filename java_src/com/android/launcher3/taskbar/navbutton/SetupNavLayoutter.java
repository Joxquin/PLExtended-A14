package com.android.launcher3.taskbar.navbutton;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.android.launcher3.DeviceProfile;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class SetupNavLayoutter extends AbstractNavButtonLayoutter {
    @Override // com.android.launcher3.taskbar.navbutton.NavButtonLayoutFactory$NavButtonLayoutter
    public final void layoutButtons(DeviceProfile deviceProfile, boolean z4) {
        ViewGroup.LayoutParams layoutParams = getNavButtonContainer().getLayoutParams();
        h.c(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
        layoutParams2.setMarginStart(layoutParams2.getMarginEnd());
        layoutParams2.setMarginEnd(0);
        layoutParams2.gravity = 8388611;
        getNavButtonContainer().requestLayout();
    }
}
