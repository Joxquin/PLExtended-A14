package com.android.launcher3.allapps.search;

import android.view.LayoutInflater;
import android.view.View;
import androidx.recyclerview.widget.AbstractC0274i0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.views.ActivityContext;
/* loaded from: classes.dex */
public abstract class SearchAdapterProvider {
    protected final ActivityContext mLauncher;

    public SearchAdapterProvider(ActivityContext activityContext) {
        this.mLauncher = activityContext;
    }

    public abstract void clearHighlightedItem();

    public abstract AbstractC0274i0 getDecorator();

    public abstract View getHighlightedItem();

    public int getItemsPerRow(int i4, int i5) {
        return i5;
    }

    public int[] getSupportedItemsPerRowArray() {
        return new int[0];
    }

    public abstract boolean isViewSupported(int i4);

    public abstract boolean launchHighlightedItem();

    public abstract void onBindView(BaseAllAppsAdapter.ViewHolder viewHolder, int i4);

    public abstract BaseAllAppsAdapter.ViewHolder onCreateViewHolder(int i4, LayoutInflater layoutInflater, RecyclerView recyclerView);
}
