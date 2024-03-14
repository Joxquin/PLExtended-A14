package com.android.launcher3.allapps.search;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.android.launcher3.views.ActivityContext;
import com.android.systemui.shared.R;
/* loaded from: classes.dex */
public class AllAppsSearchUiDelegate {
    protected final ActivityContext mActivityContext;
    protected final ActivityAllAppsContainerView mAppsView;

    public AllAppsSearchUiDelegate(ActivityAllAppsContainerView activityAllAppsContainerView) {
        this.mAppsView = activityAllAppsContainerView;
        this.mActivityContext = (ActivityContext) ActivityContext.lookupContext(activityAllAppsContainerView.getContext());
    }

    public SearchAdapterProvider createMainAdapterProvider() {
        return new DefaultSearchAdapterProvider(this.mActivityContext);
    }

    public LayoutInflater getLayoutInflater() {
        return LayoutInflater.from(this.mAppsView.getContext());
    }

    public View inflateSearchBar() {
        return getLayoutInflater().inflate(R.layout.search_container_all_apps, (ViewGroup) this.mAppsView, false);
    }

    public boolean isSearchBarFloating() {
        return false;
    }

    public void onAnimateToSearchStateCompleted() {
    }

    public void onDestroySearchBar() {
    }

    public void onInitializeRecyclerView(AllAppsRecyclerView allAppsRecyclerView) {
    }

    public void onInitializeSearchBar() {
    }

    public void onSearchResultsChanged(int i4) {
    }
}
