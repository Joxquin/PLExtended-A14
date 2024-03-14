package com.android.launcher3.allapps;

import android.content.Context;
import android.util.AttributeSet;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.secondarydisplay.SecondaryDisplayLauncher;
/* loaded from: classes.dex */
public class SecondaryLauncherAllAppsContainerView extends ActivityAllAppsContainerView {
    public SecondaryLauncherAllAppsContainerView(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.allapps.ActivityAllAppsContainerView
    public final boolean isInAllApps() {
        return ((SecondaryDisplayLauncher) this.mActivityContext).isAppDrawerShown();
    }

    @Override // com.android.launcher3.allapps.ActivityAllAppsContainerView
    public final void updateBackgroundVisibility(DeviceProfile deviceProfile) {
    }

    public SecondaryLauncherAllAppsContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SecondaryLauncherAllAppsContainerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
