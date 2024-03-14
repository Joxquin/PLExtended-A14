package com.android.launcher3.allapps.search;

import android.content.Context;
import android.os.Handler;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BaseModelUpdateTask;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.search.SearchAlgorithm;
import com.android.launcher3.search.SearchCallback;
import com.android.launcher3.search.StringMatcherUtility;
import com.android.launcher3.util.Executors;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class DefaultAppSearchAlgorithm implements SearchAlgorithm {
    private final LauncherAppState mAppState;
    private final Handler mResultHandler = new Handler(Executors.MAIN_EXECUTOR.getLooper());
    private final boolean mAddNoResultsMessage = true;

    public DefaultAppSearchAlgorithm(Context context) {
        this.mAppState = LauncherAppState.getInstance(context);
    }

    @Override // com.android.launcher3.search.SearchAlgorithm
    public final void cancel(boolean z4) {
        if (z4) {
            this.mResultHandler.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.android.launcher3.search.SearchAlgorithm
    public final void doSearch(final String str, final SearchCallback searchCallback) {
        this.mAppState.getModel().enqueueModelUpdateTask(new BaseModelUpdateTask() { // from class: com.android.launcher3.allapps.search.DefaultAppSearchAlgorithm.1
            @Override // com.android.launcher3.model.BaseModelUpdateTask
            public final void execute(LauncherAppState launcherAppState, BgDataModel bgDataModel, AllAppsList allAppsList) {
                ArrayList arrayList = allAppsList.data;
                String lowerCase = str.toLowerCase();
                final ArrayList arrayList2 = new ArrayList();
                StringMatcherUtility.StringMatcher stringMatcher = new StringMatcherUtility.StringMatcher();
                int size = arrayList.size();
                int i4 = 0;
                for (int i5 = 0; i5 < size && i4 < 5; i5++) {
                    AppInfo appInfo = (AppInfo) arrayList.get(i5);
                    if (StringMatcherUtility.matches(lowerCase, appInfo.title.toString(), stringMatcher)) {
                        BaseAllAppsAdapter.AdapterItem adapterItem = new BaseAllAppsAdapter.AdapterItem(2);
                        adapterItem.itemInfo = appInfo;
                        arrayList2.add(adapterItem);
                        i4++;
                    }
                }
                if (DefaultAppSearchAlgorithm.this.mAddNoResultsMessage && arrayList2.isEmpty()) {
                    String str2 = str;
                    BaseAllAppsAdapter.AdapterItem adapterItem2 = new BaseAllAppsAdapter.AdapterItem(4);
                    AppInfo appInfo2 = new AppInfo();
                    appInfo2.title = str2;
                    adapterItem2.itemInfo = appInfo2;
                    arrayList2.add(adapterItem2);
                }
                Handler handler = DefaultAppSearchAlgorithm.this.mResultHandler;
                final SearchCallback searchCallback2 = searchCallback;
                final String str3 = str;
                handler.post(new Runnable() { // from class: E0.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        SearchCallback.this.onSearchResult(str3, arrayList2);
                    }
                });
            }
        });
    }
}
