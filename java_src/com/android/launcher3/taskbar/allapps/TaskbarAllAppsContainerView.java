package com.android.launcher3.taskbar.allapps;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.FloatingHeaderView;
import com.android.launcher3.config.FeatureFlags;
import com.android.systemui.shared.R;
import java.util.Optional;
/* loaded from: classes.dex */
public class TaskbarAllAppsContainerView extends ActivityAllAppsContainerView {
    private OnInvalidateHeaderListener mOnInvalidateHeaderListener;

    /* loaded from: classes.dex */
    interface OnInvalidateHeaderListener {
        void onInvalidateHeader();
    }

    public TaskbarAllAppsContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // com.android.launcher3.allapps.ActivityAllAppsContainerView
    public final View inflateSearchBar() {
        if (isSearchSupported()) {
            return super.inflateSearchBar();
        }
        FloatingHeaderView floatingHeaderView = this.mHeader;
        floatingHeaderView.setPadding(floatingHeaderView.getPaddingLeft(), 0, this.mHeader.getPaddingRight(), this.mHeader.getPaddingBottom());
        TaskbarAllAppsFallbackSearchContainer taskbarAllAppsFallbackSearchContainer = new TaskbarAllAppsFallbackSearchContainer(getContext());
        taskbarAllAppsFallbackSearchContainer.setId(R.id.search_container_all_apps);
        taskbarAllAppsFallbackSearchContainer.setVisibility(8);
        return taskbarAllAppsFallbackSearchContainer;
    }

    @Override // com.android.launcher3.allapps.ActivityAllAppsContainerView
    public final void invalidateHeader() {
        super.invalidateHeader();
        Optional.ofNullable(this.mOnInvalidateHeaderListener).ifPresent(new a());
    }

    @Override // com.android.launcher3.allapps.ActivityAllAppsContainerView
    public final boolean isInAllApps() {
        return true;
    }

    @Override // com.android.launcher3.allapps.ActivityAllAppsContainerView
    public final boolean isSearchSupported() {
        return FeatureFlags.ENABLE_ALL_APPS_SEARCH_IN_TASKBAR.get();
    }

    public final void setOnInvalidateHeaderListener(b bVar) {
        this.mOnInvalidateHeaderListener = bVar;
    }

    public TaskbarAllAppsContainerView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
    }
}
