package com.android.launcher3.allapps;

import M.e;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import androidx.recyclerview.widget.A0;
import androidx.recyclerview.widget.AbstractC0280l0;
import androidx.recyclerview.widget.C0295t0;
import androidx.recyclerview.widget.G;
import androidx.recyclerview.widget.H;
import androidx.recyclerview.widget.Z;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.allapps.search.SearchAdapterProvider;
import com.android.launcher3.util.ScrollableLayoutManager;
import com.android.launcher3.views.ActivityContext;
import com.google.android.apps.nexuslauncher.allapps.C0627b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes.dex */
public final class AllAppsGridAdapter extends BaseAllAppsAdapter {
    private final AppsGridLayoutManager mGridLayoutMgr;
    private final CopyOnWriteArrayList mOnLayoutCompletedListeners;

    /* loaded from: classes.dex */
    public class AppsGridLayoutManager extends ScrollableLayoutManager {
        public AppsGridLayoutManager() {
        }

        private int getRowsNotForAccessibility(int i4) {
            ArrayList arrayList = (ArrayList) AllAppsGridAdapter.this.mApps.getAdapterItems();
            int max = Math.max(i4, arrayList.size() - 1);
            int i5 = 0;
            for (int i6 = 0; i6 <= max && i6 < arrayList.size(); i6++) {
                if (!BaseAllAppsAdapter.isViewType(((BaseAllAppsAdapter.AdapterItem) arrayList.get(i6)).viewType, 2)) {
                    i5++;
                }
            }
            return i5;
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
        public final int getRowCountForAccessibility(C0295t0 c0295t0, A0 a02) {
            return super.getRowCountForAccessibility(c0295t0, a02) - getRowsNotForAccessibility(((ArrayList) AllAppsGridAdapter.this.mApps.getAdapterItems()).size() - 1);
        }

        @Override // com.android.launcher3.util.ScrollableLayoutManager
        public final int incrementTotalHeight(Z z4, int i4, int i5) {
            BaseAllAppsAdapter.AdapterItem adapterItem = (BaseAllAppsAdapter.AdapterItem) ((ArrayList) AllAppsGridAdapter.this.mApps.getAdapterItems()).get(i4);
            return (!BaseAllAppsAdapter.isViewType(adapterItem.viewType, 2) || adapterItem.rowAppIndex == 0) ? i5 + this.mCachedSizes.get(adapterItem.viewType) : i5;
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
        public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setItemCount(AllAppsGridAdapter.this.mApps.getNumFilteredApps());
            accessibilityEvent.setFromIndex(Math.max(0, accessibilityEvent.getFromIndex() - getRowsNotForAccessibility(accessibilityEvent.getFromIndex())));
            accessibilityEvent.setToIndex(Math.max(0, accessibilityEvent.getToIndex() - getRowsNotForAccessibility(accessibilityEvent.getToIndex())));
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
        public final void onInitializeAccessibilityNodeInfoForItem(C0295t0 c0295t0, A0 a02, View view, e eVar) {
            super.onInitializeAccessibilityNodeInfoForItem(c0295t0, a02, view, eVar);
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo = eVar.f1349a.getCollectionItemInfo();
            M.d dVar = collectionItemInfo != null ? new M.d(collectionItemInfo) : null;
            if (!(layoutParams instanceof G) || dVar == null) {
                return;
            }
            AccessibilityNodeInfo.CollectionItemInfo collectionItemInfo2 = (AccessibilityNodeInfo.CollectionItemInfo) dVar.f1348a;
            eVar.i(M.d.a(collectionItemInfo2.getRowIndex() - getRowsNotForAccessibility(((G) layoutParams).f3983a.getBindingAdapterPosition()), collectionItemInfo2.getRowSpan(), collectionItemInfo2.getColumnIndex(), collectionItemInfo2.getColumnSpan(), collectionItemInfo2.isHeading(), collectionItemInfo2.isSelected()));
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.AbstractC0280l0
        public final void onLayoutCompleted(A0 a02) {
            super.onLayoutCompleted(a02);
            Iterator it = AllAppsGridAdapter.this.mOnLayoutCompletedListeners.iterator();
            while (it.hasNext()) {
                ((OnLayoutCompletedListener) it.next()).onLayoutCompleted();
            }
        }
    }

    /* loaded from: classes.dex */
    public final class GridSpanSizer extends H {
        public GridSpanSizer() {
            setSpanIndexCacheEnabled();
        }

        @Override // androidx.recyclerview.widget.H
        public final int getSpanSize(int i4) {
            AllAppsGridAdapter allAppsGridAdapter = AllAppsGridAdapter.this;
            int spanCount = allAppsGridAdapter.mGridLayoutMgr.getSpanCount();
            ArrayList arrayList = (ArrayList) allAppsGridAdapter.mApps.getAdapterItems();
            if (i4 >= arrayList.size()) {
                return spanCount;
            }
            int i5 = ((BaseAllAppsAdapter.AdapterItem) arrayList.get(i4)).viewType;
            return BaseAllAppsAdapter.isViewType(i5, 2) ? spanCount / allAppsGridAdapter.mAppsPerRow : allAppsGridAdapter.mAdapterProvider.isViewSupported(i5) ? spanCount / allAppsGridAdapter.mAdapterProvider.getItemsPerRow(i5, allAppsGridAdapter.mAppsPerRow) : spanCount;
        }
    }

    /* loaded from: classes.dex */
    public interface OnLayoutCompletedListener {
        void onLayoutCompleted();
    }

    public AllAppsGridAdapter(Context context, LayoutInflater layoutInflater, AlphabeticalAppsList alphabeticalAppsList, SearchAdapterProvider searchAdapterProvider) {
        super(context, layoutInflater, alphabeticalAppsList, searchAdapterProvider);
        this.mOnLayoutCompletedListeners = new CopyOnWriteArrayList();
        AppsGridLayoutManager appsGridLayoutManager = new AppsGridLayoutManager();
        this.mGridLayoutMgr = appsGridLayoutManager;
        appsGridLayoutManager.setSpanSizeLookup(new GridSpanSizer());
        setAppsPerRow(((ActivityContext) context).getDeviceProfile().numShownAllAppsColumns);
    }

    public final void addOnLayoutCompletedListener(C0627b c0627b) {
        this.mOnLayoutCompletedListeners.add(c0627b);
    }

    public final AbstractC0280l0 getLayoutManager() {
        return this.mGridLayoutMgr;
    }

    public final int getSpanIndex(int i4) {
        AppsGridLayoutManager appsGridLayoutManager = this.mGridLayoutMgr;
        return appsGridLayoutManager.getSpanSizeLookup().getSpanIndex(i4, appsGridLayoutManager.getSpanCount());
    }

    public final void removeOnLayoutCompletedListener(OnLayoutCompletedListener onLayoutCompletedListener) {
        this.mOnLayoutCompletedListeners.remove(onLayoutCompletedListener);
    }

    public final void setAppsPerRow(int i4) {
        int[] supportedItemsPerRowArray;
        this.mAppsPerRow = i4;
        for (int i5 : this.mAdapterProvider.getSupportedItemsPerRowArray()) {
            if (i4 % i5 != 0) {
                i4 *= i5;
            }
        }
        this.mGridLayoutMgr.setSpanCount(i4);
    }
}
