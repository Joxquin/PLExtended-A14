package com.android.launcher3.secondarydisplay;

import V0.c;
import V0.d;
import V0.e;
import V0.f;
import V0.l;
import android.content.ComponentName;
import android.content.SharedPreferences;
import android.os.Process;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.allapps.AppInfoComparator;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.secondarydisplay.PinnedAppsAdapter;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.Executors;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.stream.Collectors;
import java.util.stream.Stream;
/* loaded from: classes.dex */
public final class PinnedAppsAdapter extends BaseAdapter implements SharedPreferences.OnSharedPreferenceChangeListener {
    private final AllAppsStore mAllAppsList;
    private final AppInfoComparator mAppNameComparator;
    private final SecondaryDisplayLauncher mLauncher;
    private final View.OnClickListener mOnClickListener;
    private final View.OnLongClickListener mOnLongClickListener;
    private final SharedPreferences mPrefs;
    private final Set mPinnedApps = new HashSet();
    private final ArrayList mItems = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public final class PinUnPinShortcut extends SystemShortcut {
        private final boolean mIsPinned;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PinUnPinShortcut(SecondaryDisplayLauncher secondaryDisplayLauncher, ItemInfo itemInfo, View view, boolean z4) {
            super(z4 ? R.drawable.ic_remove_no_shadow : R.drawable.ic_pin, z4 ? R.string.remove_drop_target_label : R.string.action_add_to_workspace, secondaryDisplayLauncher, itemInfo, view);
            PinnedAppsAdapter.this = r7;
            this.mIsPinned = z4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            if (this.mIsPinned) {
                PinnedAppsAdapter pinnedAppsAdapter = PinnedAppsAdapter.this;
                ItemInfo itemInfo = this.mItemInfo;
                Set set = pinnedAppsAdapter.mPinnedApps;
                Objects.requireNonNull(set);
                pinnedAppsAdapter.update(itemInfo, new c(set, 1));
            } else {
                PinnedAppsAdapter pinnedAppsAdapter2 = PinnedAppsAdapter.this;
                ItemInfo itemInfo2 = this.mItemInfo;
                Set set2 = pinnedAppsAdapter2.mPinnedApps;
                Objects.requireNonNull(set2);
                pinnedAppsAdapter2.update(itemInfo2, new c(set2, 2));
            }
            AbstractFloatingView.closeAllOpenViews(PinnedAppsAdapter.this.mLauncher);
        }
    }

    public PinnedAppsAdapter(SecondaryDisplayLauncher secondaryDisplayLauncher, AllAppsStore allAppsStore, l lVar) {
        this.mLauncher = secondaryDisplayLauncher;
        this.mOnClickListener = secondaryDisplayLauncher.getItemOnClickListener();
        this.mOnLongClickListener = lVar;
        this.mAllAppsList = allAppsStore;
        this.mPrefs = secondaryDisplayLauncher.getSharedPreferences("pinned_apps", 0);
        this.mAppNameComparator = new AppInfoComparator(secondaryDisplayLauncher);
        allAppsStore.addUpdateListener(new AllAppsStore.OnUpdateListener() { // from class: V0.a
            @Override // com.android.launcher3.allapps.AllAppsStore.OnUpdateListener
            public final void onAppsUpdated() {
                PinnedAppsAdapter.this.createFilteredAppsList();
            }
        });
    }

    public static ComponentKey b(PinnedAppsAdapter pinnedAppsAdapter, String str) {
        pinnedAppsAdapter.getClass();
        try {
            String[] split = str.split("#");
            return new ComponentKey(ComponentName.unflattenFromString(split[0]), split.length > 2 ? ((UserCache) UserCache.INSTANCE.get(pinnedAppsAdapter.mLauncher)).getUserForSerialNumber(Long.parseLong(split[2])) : Process.myUserHandle());
        } catch (Exception unused) {
            return null;
        }
    }

    public static /* synthetic */ void c(PinnedAppsAdapter pinnedAppsAdapter, Set set) {
        ((HashSet) pinnedAppsAdapter.mPinnedApps).clear();
        pinnedAppsAdapter.mPinnedApps.addAll(set);
        pinnedAppsAdapter.createFilteredAppsList();
    }

    public void createFilteredAppsList() {
        this.mItems.clear();
        Stream stream = this.mPinnedApps.stream();
        AllAppsStore allAppsStore = this.mAllAppsList;
        Objects.requireNonNull(allAppsStore);
        Stream filter = stream.map(new d(2, allAppsStore)).filter(new e(1));
        final ArrayList arrayList = this.mItems;
        Objects.requireNonNull(arrayList);
        filter.forEach(new Consumer() { // from class: V0.g
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                arrayList.add((AppInfo) obj);
            }
        });
        this.mItems.sort(this.mAppNameComparator);
        notifyDataSetChanged();
    }

    public static String f(PinnedAppsAdapter pinnedAppsAdapter, ComponentKey componentKey) {
        pinnedAppsAdapter.getClass();
        return componentKey.componentName.flattenToShortString() + "#" + ((UserCache) UserCache.INSTANCE.get(pinnedAppsAdapter.mLauncher)).getSerialNumberForUser(componentKey.user);
    }

    public final void addPinnedApp(ItemInfo itemInfo) {
        Set set = this.mPinnedApps;
        Objects.requireNonNull(set);
        update(itemInfo, new c(set, 0));
    }

    public final void destroy() {
        this.mPrefs.unregisterOnSharedPreferenceChangeListener(this);
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.mItems.size();
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i4) {
        return (AppInfo) this.mItems.get(i4);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i4) {
        return i4;
    }

    public final SystemShortcut getSystemShortcut(View view, ItemInfo itemInfo) {
        return new PinUnPinShortcut(this.mLauncher, itemInfo, view, ((HashSet) this.mPinnedApps).contains(new ComponentKey(itemInfo.getTargetComponent(), itemInfo.user)));
    }

    @Override // android.widget.Adapter
    public final View getView(int i4, View view, ViewGroup viewGroup) {
        BubbleTextView bubbleTextView;
        if (view instanceof BubbleTextView) {
            bubbleTextView = (BubbleTextView) view;
        } else {
            bubbleTextView = (BubbleTextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.app_icon, viewGroup, false);
            bubbleTextView.setOnClickListener(this.mOnClickListener);
            bubbleTextView.setOnLongClickListener(this.mOnLongClickListener);
            bubbleTextView.setLongPressTimeoutFactor();
            int i5 = this.mLauncher.getDeviceProfile().edgeMarginPx;
            bubbleTextView.setPadding(i5, i5, i5, i5);
        }
        bubbleTextView.applyFromApplicationInfo((AppInfo) this.mItems.get(i4));
        return bubbleTextView;
    }

    public final void init() {
        this.mPrefs.registerOnSharedPreferenceChangeListener(this);
        onSharedPreferenceChanged(this.mPrefs, "pinned_apps");
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(final SharedPreferences sharedPreferences, final String str) {
        if ("pinned_apps".equals(str)) {
            Executors.MODEL_EXECUTOR.submit(new Runnable() { // from class: V0.b
                @Override // java.lang.Runnable
                public final void run() {
                    PinnedAppsAdapter pinnedAppsAdapter = PinnedAppsAdapter.this;
                    SharedPreferences sharedPreferences2 = sharedPreferences;
                    String str2 = str;
                    pinnedAppsAdapter.getClass();
                    Executors.MAIN_EXECUTOR.submit(new f(pinnedAppsAdapter, (Set) sharedPreferences2.getStringSet(str2, Collections.emptySet()).stream().map(new d(0, pinnedAppsAdapter)).filter(new e(0)).collect(Collectors.toSet()), 0));
                }
            });
        }
    }

    public final void update(ItemInfo itemInfo, c cVar) {
        if (((Boolean) cVar.apply(new ComponentKey(itemInfo.getTargetComponent(), itemInfo.user))).booleanValue()) {
            createFilteredAppsList();
            Executors.MODEL_EXECUTOR.submit(new f(this, new HashSet(this.mPinnedApps), 1));
        }
    }
}
