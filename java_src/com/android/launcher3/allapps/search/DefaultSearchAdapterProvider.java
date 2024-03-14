package com.android.launcher3.allapps.search;

import android.view.LayoutInflater;
import android.view.View;
import androidx.recyclerview.widget.AbstractC0274i0;
import androidx.recyclerview.widget.RecyclerView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.views.ActivityContext;
/* loaded from: classes.dex */
public final class DefaultSearchAdapterProvider extends SearchAdapterProvider {
    private final AbstractC0274i0 mDecoration;
    private View mHighlightedView;

    /* renamed from: com.android.launcher3.allapps.search.DefaultSearchAdapterProvider$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 extends AbstractC0274i0 {
    }

    public DefaultSearchAdapterProvider(ActivityContext activityContext) {
        super(activityContext);
        this.mDecoration = new AnonymousClass1();
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final void clearHighlightedItem() {
        this.mHighlightedView = null;
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final AbstractC0274i0 getDecorator() {
        return this.mDecoration;
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final View getHighlightedItem() {
        return this.mHighlightedView;
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final boolean isViewSupported(int i4) {
        return false;
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final boolean launchHighlightedItem() {
        View view = this.mHighlightedView;
        if ((view instanceof BubbleTextView) && (view.getTag() instanceof ItemInfo)) {
            ItemInfo itemInfo = (ItemInfo) this.mHighlightedView.getTag();
            return this.mLauncher.startActivitySafely(this.mHighlightedView, itemInfo.getIntent(), itemInfo) != null;
        }
        return false;
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final void onBindView(BaseAllAppsAdapter.ViewHolder viewHolder, int i4) {
        if (i4 == 0) {
            this.mHighlightedView = viewHolder.itemView;
        }
    }

    @Override // com.android.launcher3.allapps.search.SearchAdapterProvider
    public final BaseAllAppsAdapter.ViewHolder onCreateViewHolder(int i4, LayoutInflater layoutInflater, RecyclerView recyclerView) {
        return null;
    }
}
