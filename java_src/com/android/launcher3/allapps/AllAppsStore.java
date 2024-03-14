package com.android.launcher3.allapps;

import android.content.Context;
import android.os.UserHandle;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.BubbleTextView;
import com.android.launcher3.allapps.AllAppsStore;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.recyclerview.AllAppsRecyclerViewPool;
import com.android.launcher3.util.ComponentKey;
import com.android.launcher3.util.PackageUserKey;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.function.Consumer;
import java.util.function.Predicate;
/* loaded from: classes.dex */
public final class AllAppsStore {
    private final Context mContext;
    private int mModelFlags;
    private PackageUserKey mTempKey = new PackageUserKey((String) null, (UserHandle) null);
    private AppInfo mTempInfo = new AppInfo();
    private AppInfo[] mApps = AppInfo.EMPTY_ARRAY;
    private final List mUpdateListeners = new CopyOnWriteArrayList();
    private final ArrayList mIconContainers = new ArrayList();
    private Map mPackageUserKeytoUidMap = Collections.emptyMap();
    private int mDeferUpdatesFlags = 0;
    private boolean mUpdatePending = false;
    private final AllAppsRecyclerViewPool mAllAppsRecyclerViewPool = new AllAppsRecyclerViewPool();

    /* loaded from: classes.dex */
    public interface OnUpdateListener {
        void onAppsUpdated();
    }

    public AllAppsStore(Context context) {
        this.mContext = context;
    }

    public static /* synthetic */ void a(AllAppsStore allAppsStore, Predicate predicate, BubbleTextView bubbleTextView) {
        allAppsStore.getClass();
        if (bubbleTextView.getTag() instanceof ItemInfo) {
            ItemInfo itemInfo = (ItemInfo) bubbleTextView.getTag();
            if (allAppsStore.mTempKey.updateFromItemInfo(itemInfo) && predicate.test(allAppsStore.mTempKey)) {
                bubbleTextView.applyDotState(itemInfo, true);
            }
        }
    }

    private void notifyUpdate() {
        if (this.mDeferUpdatesFlags != 0) {
            this.mUpdatePending = true;
            return;
        }
        Iterator it = ((CopyOnWriteArrayList) this.mUpdateListeners).iterator();
        while (it.hasNext()) {
            ((OnUpdateListener) it.next()).onAppsUpdated();
        }
    }

    private void updateAllIcons(Consumer consumer) {
        ArrayList arrayList = this.mIconContainers;
        int size = arrayList.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            }
            ViewGroup viewGroup = (ViewGroup) arrayList.get(size);
            int childCount = viewGroup.getChildCount();
            for (int i4 = 0; i4 < childCount; i4++) {
                View childAt = viewGroup.getChildAt(i4);
                if (childAt instanceof BubbleTextView) {
                    consumer.accept((BubbleTextView) childAt);
                }
            }
        }
    }

    public final void addUpdateListener(OnUpdateListener onUpdateListener) {
        ((CopyOnWriteArrayList) this.mUpdateListeners).add(onUpdateListener);
    }

    public final void disableDeferUpdates(int i4) {
        int i5 = (~i4) & this.mDeferUpdatesFlags;
        this.mDeferUpdatesFlags = i5;
        if (i5 == 0 && this.mUpdatePending) {
            notifyUpdate();
            this.mUpdatePending = false;
        }
    }

    public final void disableDeferUpdatesSilently() {
        this.mDeferUpdatesFlags &= -2;
    }

    public final void enableDeferUpdates(int i4) {
        this.mDeferUpdatesFlags = i4 | this.mDeferUpdatesFlags;
    }

    public final AppInfo getApp(ComponentKey componentKey) {
        AppInfo appInfo = this.mTempInfo;
        appInfo.componentName = componentKey.componentName;
        appInfo.user = componentKey.user;
        int binarySearch = Arrays.binarySearch(this.mApps, appInfo, AppInfo.COMPONENT_KEY_COMPARATOR);
        if (binarySearch < 0) {
            return null;
        }
        return this.mApps[binarySearch];
    }

    public final AppInfo[] getApps() {
        return this.mApps;
    }

    public final AllAppsRecyclerViewPool getRecyclerViewPool() {
        return this.mAllAppsRecyclerViewPool;
    }

    public final boolean hasModelFlag(int i4) {
        return (this.mModelFlags & i4) != 0;
    }

    public final int lookUpForUid(String str, UserHandle userHandle) {
        return ((Integer) this.mPackageUserKeytoUidMap.getOrDefault(new PackageUserKey(str, userHandle), -1)).intValue();
    }

    public final void registerIconContainer(ViewGroup viewGroup) {
        if (viewGroup != null) {
            ArrayList arrayList = this.mIconContainers;
            if (arrayList.contains(viewGroup)) {
                return;
            }
            arrayList.add(viewGroup);
        }
    }

    public final void removeUpdateListener(OnUpdateListener onUpdateListener) {
        ((CopyOnWriteArrayList) this.mUpdateListeners).remove(onUpdateListener);
    }

    public final void setApps(AppInfo[] appInfoArr, int i4, Map map) {
        if (appInfoArr == null) {
            appInfoArr = AppInfo.EMPTY_ARRAY;
        }
        this.mApps = appInfoArr;
        this.mModelFlags = i4;
        notifyUpdate();
        this.mPackageUserKeytoUidMap = map;
        if (FeatureFlags.ENABLE_ALL_APPS_RV_PREINFLATION.get()) {
            this.mAllAppsRecyclerViewPool.preInflateAllAppsViewHolders(this.mContext);
        }
    }

    public final void unregisterIconContainer(ViewGroup viewGroup) {
        this.mIconContainers.remove(viewGroup);
    }

    public final void updateNotificationDots(final Predicate predicate) {
        updateAllIcons(new Consumer() { // from class: D0.e
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AllAppsStore.a(AllAppsStore.this, predicate, (BubbleTextView) obj);
            }
        });
    }

    public final void updateProgressBar(final AppInfo appInfo) {
        updateAllIcons(new Consumer() { // from class: D0.f
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                AppInfo appInfo2 = AppInfo.this;
                BubbleTextView bubbleTextView = (BubbleTextView) obj;
                if (bubbleTextView.getTag() == appInfo2) {
                    if ((appInfo2.runtimeStatusFlags & 3072) == 0) {
                        bubbleTextView.applyFromApplicationInfo(appInfo2);
                    } else {
                        bubbleTextView.applyProgressLevel();
                    }
                }
            }
        });
    }
}
