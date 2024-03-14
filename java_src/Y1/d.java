package Y1;

import android.util.Log;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherModel;
import com.android.launcher3.allapps.AppInfoComparator;
import com.android.launcher3.model.AllAppsList;
import com.android.launcher3.model.BgDataModel;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.search.StringMatcherUtility;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
/* loaded from: classes.dex */
public final class d implements Callable, LauncherModel.ModelUpdateTask {

    /* renamed from: d  reason: collision with root package name */
    public final FutureTask f2281d = new FutureTask(this);

    /* renamed from: e  reason: collision with root package name */
    public final String f2282e;

    /* renamed from: f  reason: collision with root package name */
    public LauncherAppState f2283f;

    /* renamed from: g  reason: collision with root package name */
    public LauncherModel f2284g;

    /* renamed from: h  reason: collision with root package name */
    public AllAppsList f2285h;

    public d(String str) {
        this.f2282e = str.toLowerCase();
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        if (!this.f2284g.isModelLoaded()) {
            Log.d("AppSearchProvider", "Workspace not loaded, loading now");
            this.f2284g.loadAsync(new c());
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        StringMatcherUtility.StringMatcher stringMatcher = new StringMatcherUtility.StringMatcher();
        Iterator it = this.f2285h.data.iterator();
        while (it.hasNext()) {
            AppInfo appInfo = (AppInfo) it.next();
            if (StringMatcherUtility.matches(this.f2282e, appInfo.title.toString(), stringMatcher)) {
                arrayList.add(appInfo);
                if (appInfo.usingLowResIcon()) {
                    this.f2283f.getIconCache().getTitleAndIcon(appInfo, false);
                }
            }
        }
        Collections.sort(arrayList, new AppInfoComparator(this.f2283f.getContext()));
        return arrayList;
    }

    @Override // com.android.launcher3.LauncherModel.ModelUpdateTask
    public final void init(LauncherAppState launcherAppState, LauncherModel launcherModel, BgDataModel bgDataModel, AllAppsList allAppsList, Executor executor) {
        this.f2283f = launcherAppState;
        this.f2284g = launcherModel;
        this.f2285h = allAppsList;
        int i4 = LauncherAppState.getIDP(launcherAppState.getContext()).numColumns;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f2281d.run();
    }
}
