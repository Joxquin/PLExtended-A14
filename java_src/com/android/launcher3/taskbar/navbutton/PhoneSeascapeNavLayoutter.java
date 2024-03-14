package com.android.launcher3.taskbar.navbutton;

import com.android.launcher3.DeviceProfile;
/* loaded from: classes.dex */
public final class PhoneSeascapeNavLayoutter extends PhoneLandscapeNavLayoutter {
    @Override // com.android.launcher3.taskbar.navbutton.PhoneLandscapeNavLayoutter, com.android.launcher3.taskbar.navbutton.NavButtonLayoutFactory$NavButtonLayoutter
    public final void layoutButtons(DeviceProfile deviceProfile, boolean z4) {
        super.layoutButtons(deviceProfile, z4);
        getNavButtonContainer().removeAllViews();
        getNavButtonContainer().addView(getBackButton());
        getNavButtonContainer().addView(getHomeButton());
        getNavButtonContainer().addView(getRecentsButton());
    }
}
