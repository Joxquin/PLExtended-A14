package com.android.launcher3.taskbar.allapps;

import android.content.Context;
import android.view.View;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.SearchUiManager;
/* loaded from: classes.dex */
public final class TaskbarAllAppsFallbackSearchContainer extends View implements SearchUiManager {
    public TaskbarAllAppsFallbackSearchContainer(Context context) {
        super(context, null, 0);
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final ExtendedEditText getEditText() {
        return null;
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void initializeSearch(ActivityAllAppsContainerView activityAllAppsContainerView) {
    }

    @Override // com.android.launcher3.allapps.SearchUiManager
    public final void resetSearch() {
    }
}
