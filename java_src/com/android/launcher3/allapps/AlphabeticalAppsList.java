package com.android.launcher3.allapps;

import D0.k;
import android.content.Context;
import androidx.recyclerview.widget.AbstractC0287p;
import androidx.recyclerview.widget.C0298v;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.util.LabelComparator;
import com.android.launcher3.views.ActivityContext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.TreeMap;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.function.Supplier;
import java.util.stream.Collectors;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public final class AlphabeticalAppsList implements AllAppsStore.OnUpdateListener {
    private final Context mActivityContext;
    private BaseAllAppsAdapter mAdapter;
    private final AllAppsStore mAllAppsStore;
    private AppInfoComparator mAppNameComparator;
    private Predicate mItemFilter;
    private int mNumAppRowsInAdapter;
    private int mNumAppsPerRowAllApps;
    private final WorkProfileManager mWorkProviderManager;
    private final List mApps = new ArrayList();
    private int mAccessibilityResultsCount = 0;
    private final ArrayList mAdapterItems = new ArrayList();
    private final List mFastScrollerSections = new ArrayList();
    private final ArrayList mSearchResults = new ArrayList();

    /* loaded from: classes.dex */
    public final class FastScrollSectionInfo {
        public final int position;
        public final String sectionName;

        public FastScrollSectionInfo(String str, int i4) {
            this.sectionName = str;
            this.position = i4;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class MyDiffCallback extends AbstractC0287p {
        private final List mNewList;
        private final List mOldList;

        public MyDiffCallback(List list, List list2) {
            this.mOldList = list;
            this.mNewList = list2;
        }

        @Override // androidx.recyclerview.widget.AbstractC0287p
        public final boolean areContentsTheSame(int i4, int i5) {
            return ((BaseAllAppsAdapter.AdapterItem) this.mOldList.get(i4)).isContentSame((BaseAllAppsAdapter.AdapterItem) this.mNewList.get(i5));
        }

        @Override // androidx.recyclerview.widget.AbstractC0287p
        public final boolean areItemsTheSame(int i4, int i5) {
            return ((BaseAllAppsAdapter.AdapterItem) this.mOldList.get(i4)).isSameAs((BaseAllAppsAdapter.AdapterItem) this.mNewList.get(i5));
        }

        @Override // androidx.recyclerview.widget.AbstractC0287p
        public final int getNewListSize() {
            return this.mNewList.size();
        }

        @Override // androidx.recyclerview.widget.AbstractC0287p
        public final int getOldListSize() {
            return this.mOldList.size();
        }
    }

    public AlphabeticalAppsList(Context context, AllAppsStore allAppsStore, WorkProfileManager workProfileManager) {
        this.mAllAppsStore = allAppsStore;
        Context lookupContext = ActivityContext.lookupContext(context);
        this.mActivityContext = lookupContext;
        this.mAppNameComparator = new AppInfoComparator(context);
        this.mWorkProviderManager = workProfileManager;
        this.mNumAppsPerRowAllApps = ((ActivityContext) lookupContext).getDeviceProfile().numShownAllAppsColumns;
        if (allAppsStore != null) {
            allAppsStore.addUpdateListener(this);
        }
    }

    public final List getAdapterItems() {
        return this.mAdapterItems;
    }

    public final List getFastScrollerSections() {
        return this.mFastScrollerSections;
    }

    public final int getNumAppRows() {
        return this.mNumAppRowsInAdapter;
    }

    public final int getNumFilteredApps() {
        return this.mAccessibilityResultsCount;
    }

    @Override // com.android.launcher3.allapps.AllAppsStore.OnUpdateListener
    public final void onAppsUpdated() {
        Predicate predicate;
        AllAppsStore allAppsStore = this.mAllAppsStore;
        if (allAppsStore == null) {
            return;
        }
        final List list = this.mApps;
        ((ArrayList) list).clear();
        Stream of = Stream.of((Object[]) allAppsStore.getApps());
        ArrayList arrayList = this.mSearchResults;
        if (!(!arrayList.isEmpty()) && (predicate = this.mItemFilter) != null) {
            of = of.filter(predicate);
        }
        Stream sorted = of.sorted(this.mAppNameComparator);
        if (this.mActivityContext.getResources().getConfiguration().locale.equals(Locale.SIMPLIFIED_CHINESE)) {
            sorted = ((TreeMap) sorted.collect(Collectors.groupingBy(new Function() { // from class: D0.l
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (r1) {
                        case 0:
                            return ((AppInfo) obj).sectionName;
                        default:
                            return ((ArrayList) obj).stream();
                    }
                }
            }, new Supplier() { // from class: D0.m
                @Override // java.util.function.Supplier
                public final Object get() {
                    switch (r1) {
                        case 0:
                            return new TreeMap(new LabelComparator());
                        default:
                            return new ArrayList();
                    }
                }
            }, Collectors.toCollection(new Supplier() { // from class: D0.m
                @Override // java.util.function.Supplier
                public final Object get() {
                    switch (r1) {
                        case 0:
                            return new TreeMap(new LabelComparator());
                        default:
                            return new ArrayList();
                    }
                }
            })))).values().stream().flatMap(new Function() { // from class: D0.l
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    switch (r1) {
                        case 0:
                            return ((AppInfo) obj).sectionName;
                        default:
                            return ((ArrayList) obj).stream();
                    }
                }
            });
        }
        Objects.requireNonNull(list);
        sorted.forEachOrdered(new Consumer() { // from class: D0.n
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                list.add((AppInfo) obj);
            }
        });
        if (arrayList.isEmpty()) {
            updateAdapterItems();
        }
    }

    public final void setAdapter(AllAppsGridAdapter allAppsGridAdapter) {
        this.mAdapter = allAppsGridAdapter;
    }

    public final void setNumAppsPerRowAllApps(int i4) {
        this.mNumAppsPerRowAllApps = i4;
    }

    public final boolean setSearchResults(ArrayList arrayList) {
        ArrayList arrayList2 = this.mSearchResults;
        if (Objects.equals(arrayList, arrayList2)) {
            return false;
        }
        arrayList2.clear();
        if (arrayList != null) {
            arrayList2.addAll(arrayList);
        }
        updateAdapterItems();
        return true;
    }

    public final void updateAdapterItems() {
        int i4;
        boolean z4;
        ArrayList arrayList = this.mAdapterItems;
        ArrayList arrayList2 = new ArrayList(arrayList);
        ArrayList arrayList3 = (ArrayList) this.mFastScrollerSections;
        arrayList3.clear();
        arrayList.clear();
        this.mAccessibilityResultsCount = 0;
        ArrayList arrayList4 = this.mSearchResults;
        if (!arrayList4.isEmpty()) {
            arrayList.addAll(arrayList4);
        } else {
            WorkProfileManager workProfileManager = this.mWorkProviderManager;
            if (workProfileManager != null) {
                i4 = workProfileManager.addWorkItems(arrayList) + 0;
                z4 = workProfileManager.shouldShowWorkApps();
            } else {
                i4 = 0;
                z4 = true;
            }
            if (z4) {
                Iterator it = ((ArrayList) this.mApps).iterator();
                String str = null;
                while (it.hasNext()) {
                    AppInfo appInfo = (AppInfo) it.next();
                    BaseAllAppsAdapter.AdapterItem adapterItem = new BaseAllAppsAdapter.AdapterItem(2);
                    adapterItem.itemInfo = appInfo;
                    arrayList.add(adapterItem);
                    String str2 = appInfo.sectionName;
                    if (!str2.equals(str)) {
                        arrayList3.add(new FastScrollSectionInfo(str2, i4));
                        str = str2;
                    }
                    i4++;
                }
            }
        }
        this.mAccessibilityResultsCount = (int) arrayList.stream().filter(new k()).count();
        if (this.mNumAppsPerRowAllApps != 0) {
            Iterator it2 = arrayList.iterator();
            int i5 = -1;
            int i6 = 0;
            int i7 = 0;
            while (it2.hasNext()) {
                BaseAllAppsAdapter.AdapterItem adapterItem2 = (BaseAllAppsAdapter.AdapterItem) it2.next();
                adapterItem2.getClass();
                int i8 = adapterItem2.viewType;
                if (BaseAllAppsAdapter.isViewType(i8, 8)) {
                    i6 = 0;
                } else if (BaseAllAppsAdapter.isViewType(i8, 2)) {
                    if (i6 % this.mNumAppsPerRowAllApps == 0) {
                        i5++;
                        i7 = 0;
                    }
                    adapterItem2.rowAppIndex = i7;
                    i6++;
                    i7++;
                }
            }
            this.mNumAppRowsInAdapter = i5 + 1;
        }
        if (this.mAdapter != null) {
            C0298v.a(new MyDiffCallback(arrayList2, arrayList), false).a(this.mAdapter);
        }
    }

    public final void updateItemFilter(Predicate predicate) {
        this.mItemFilter = predicate;
        onAppsUpdated();
    }
}
