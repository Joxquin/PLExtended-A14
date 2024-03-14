package com.google.android.apps.nexuslauncher.allapps;

import android.app.search.SearchTarget;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.AllAppsGridAdapter;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.allapps.SearchRecyclerView;
import com.android.launcher3.allapps.search.AllAppsSearchUiDelegate;
import com.android.launcher3.allapps.search.SearchAdapterProvider;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logger.LauncherAtomExtensions$DeviceSearchResultContainer;
import com.android.launcher3.logging.InstanceId;
import com.android.launcher3.logging.InstanceIdSequence;
import com.android.launcher3.logging.StatsLogManager;
import com.android.launcher3.views.ActivityContext;
import com.android.launcher3.views.BaseDragLayer;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.logging.NexusLauncherImpressionEvent;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.apps.nexuslauncher.allapps.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0635d extends AllAppsSearchUiDelegate {

    /* renamed from: a  reason: collision with root package name */
    public final C0623a f7022a;

    /* renamed from: b  reason: collision with root package name */
    public final C0719y0 f7023b;

    public C0635d(ActivityAllAppsContainerView activityAllAppsContainerView, C0719y0 c0719y0) {
        super(activityAllAppsContainerView);
        this.f7022a = new C0623a(this);
        this.f7023b = c0719y0;
    }

    public static void a(C0635d c0635d) {
        ActivityAllAppsContainerView activityAllAppsContainerView = c0635d.mAppsView;
        SearchRecyclerView searchRecyclerView = activityAllAppsContainerView.getSearchRecyclerView();
        ActivityContext activityContext = c0635d.mActivityContext;
        int imeShownHeight = activityContext.getStatsLogManager().keyboardStateManager().getImeShownHeight();
        List adapterItems = activityAllAppsContainerView.getSearchResultList().getAdapterItems();
        int length = activityAllAppsContainerView.getSearchUiManager().getEditText().length();
        StatsLogManager.StatsImpressionLogger impressionLogger = activityContext.getStatsLogManager().impressionLogger();
        int i4 = activityContext.getDeviceProfile().heightPx;
        if (imeShownHeight <= 0) {
            return;
        }
        InstanceId newInstanceId = new InstanceIdSequence().newInstanceId();
        C0719y0 c0719y0 = c0635d.f7023b;
        AllAppsStore appsStore = ((ActivityContext) c0719y0.f7271d).getAppsView().getAppsStore();
        int i5 = i4 - imeShownHeight;
        StatsLogManager.StatsImpressionLogger.State state = c0719y0.f7287t.entryStateForLogging == LauncherAtomExtensions$DeviceSearchResultContainer.SearchAttributes.EntryState.ALL_APPS ? StatsLogManager.StatsImpressionLogger.State.ALLAPPS : StatsLogManager.StatsImpressionLogger.State.SEARCHBOX_WIDGET;
        int i6 = 0;
        while (true) {
            ArrayList arrayList = (ArrayList) adapterItems;
            if (i6 >= arrayList.size()) {
                return;
            }
            androidx.recyclerview.widget.E0 findViewHolderForAdapterPosition = searchRecyclerView.findViewHolderForAdapterPosition(i6);
            BaseAllAppsAdapter.AdapterItem adapterItem = (BaseAllAppsAdapter.AdapterItem) arrayList.get(i6);
            if (findViewHolderForAdapterPosition == null) {
                return;
            }
            if (adapterItem instanceof C0653h1) {
                Rect rect = new Rect();
                findViewHolderForAdapterPosition.itemView.getBoundsOnScreen(rect);
                boolean z4 = rect.centerY() <= i5;
                SearchTarget searchTarget = ((C0653h1) adapterItem).f7080a;
                int resultType = searchTarget.getResultType();
                String layoutType = searchTarget.getLayoutType();
                if (resultType != 262144 || (!layoutType.equals("empty_divider") && !layoutType.equals("section_header") && !layoutType.equals("text_header_row"))) {
                    int lookUpForUid = appsStore.lookUpForUid(searchTarget.getPackageName(), searchTarget.getUserHandle());
                    String string = searchTarget.getExtras().getString("data_donated_source");
                    impressionLogger.withInstanceId(newInstanceId).withState(state).withQueryLength(length).withResultType(resultType).withAboveKeyboard(z4).withUid(lookUpForUid).withResultSource(string != null ? D2.c(string).getNumber() : 0).log(NexusLauncherImpressionEvent.f7435d);
                }
            }
            i6++;
        }
    }

    public final void c() {
        AllAppsGridAdapter allAppsGridAdapter;
        if (this.f7023b.f7283p.f7194q) {
            ActivityAllAppsContainerView activityAllAppsContainerView = this.mAppsView;
            if (activityAllAppsContainerView.isSearching() && (allAppsGridAdapter = (AllAppsGridAdapter) activityAllAppsContainerView.getActiveRecyclerView().getAdapter()) != null) {
                allAppsGridAdapter.addOnLayoutCompletedListener(new C0627b(this, allAppsGridAdapter));
            }
        }
    }

    @Override // com.android.launcher3.allapps.search.AllAppsSearchUiDelegate
    public final SearchAdapterProvider createMainAdapterProvider() {
        if (FeatureFlags.ENABLE_DEVICE_SEARCH.get()) {
            return new C0663k(this.mAppsView, this.f7023b);
        }
        return super.createMainAdapterProvider();
    }

    @Override // com.android.launcher3.allapps.search.AllAppsSearchUiDelegate
    public final LayoutInflater getLayoutInflater() {
        return LayoutInflater.from(this.f7023b);
    }

    @Override // com.android.launcher3.allapps.search.AllAppsSearchUiDelegate
    public final View inflateSearchBar() {
        return getLayoutInflater().inflate(FeatureFlags.ENABLE_DEVICE_SEARCH.get() ? this.f7023b.f7283p.f7179b ? R.layout.universal_search_view : R.layout.device_search_input : R.layout.search_delegate_view, (ViewGroup) this.mAppsView, false);
    }

    @Override // com.android.launcher3.allapps.search.AllAppsSearchUiDelegate
    public final boolean isSearchBarFloating() {
        return FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get() && (this.mAppsView.getSearchView() instanceof UniversalSearchInputView);
    }

    @Override // com.android.launcher3.allapps.search.AllAppsSearchUiDelegate
    public final void onAnimateToSearchStateCompleted() {
        c();
    }

    @Override // com.android.launcher3.allapps.search.AllAppsSearchUiDelegate
    public final void onDestroySearchBar() {
        if (isSearchBarFloating()) {
            BaseDragLayer dragLayer = this.mActivityContext.getDragLayer();
            dragLayer.removeView(dragLayer.findViewById(R.id.floating_search_protection));
            ((UniversalSearchInputView) this.mAppsView.getSearchView()).f6927d0 = null;
        }
    }

    @Override // com.android.launcher3.allapps.search.AllAppsSearchUiDelegate
    public final void onInitializeRecyclerView(AllAppsRecyclerView allAppsRecyclerView) {
        boolean z4 = FeatureFlags.SCROLL_TOP_TO_RESET.get();
        C0719y0 c0719y0 = this.f7023b;
        boolean z5 = c0719y0.f7283p.f7190m;
        boolean x4 = c0719y0.x();
        if (z4 || z5 || x4) {
            allAppsRecyclerView.addOnScrollListener(this.f7022a);
        }
    }

    @Override // com.android.launcher3.allapps.search.AllAppsSearchUiDelegate
    public final void onInitializeSearchBar() {
        if (isSearchBarFloating()) {
            ActivityAllAppsContainerView activityAllAppsContainerView = this.mAppsView;
            C0631c c0631c = new C0631c(activityAllAppsContainerView.getContext());
            c0631c.setId(R.id.floating_search_protection);
            c0631c.forceHasOverlappingRendering(false);
            c0631c.setBackgroundResource(R.drawable.floating_search_protection);
            BaseDragLayer dragLayer = this.mActivityContext.getDragLayer();
            UniversalSearchInputView universalSearchInputView = (UniversalSearchInputView) activityAllAppsContainerView.getSearchView();
            dragLayer.addView(c0631c, dragLayer.indexOfChild(universalSearchInputView), new RelativeLayout.LayoutParams(-1, -1));
            universalSearchInputView.f6927d0 = c0631c;
        }
    }

    @Override // com.android.launcher3.allapps.search.AllAppsSearchUiDelegate
    public final void onSearchResultsChanged(int i4) {
        if (i4 != 2) {
            return;
        }
        c();
    }
}
