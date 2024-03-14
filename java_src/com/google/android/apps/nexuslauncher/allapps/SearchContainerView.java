package com.google.android.apps.nexuslauncher.allapps;

import android.content.Context;
import android.util.AttributeSet;
import com.android.launcher3.allapps.LauncherAllAppsContainerView;
import com.android.launcher3.allapps.search.AllAppsSearchUiDelegate;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
/* loaded from: classes.dex */
public class SearchContainerView extends LauncherAllAppsContainerView {
    public SearchContainerView(Context context) {
        this(context, null);
    }

    @Override // com.android.launcher3.allapps.ActivityAllAppsContainerView
    public final AllAppsSearchUiDelegate createSearchUiDelegate() {
        return new C0635d(this, ((NexusLauncherActivity) this.mActivityContext).f6476g);
    }

    @Override // com.android.launcher3.allapps.LauncherAllAppsContainerView, com.android.launcher3.allapps.ActivityAllAppsContainerView
    public final boolean shouldFloatingSearchBarBePillWhenUnfocused() {
        return ((NexusLauncherActivity) this.mActivityContext).f6476g.M() && super.shouldFloatingSearchBarBePillWhenUnfocused();
    }

    public SearchContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SearchContainerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
