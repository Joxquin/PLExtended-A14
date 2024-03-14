package com.android.launcher3.recyclerview;

import android.content.Context;
import android.view.LayoutInflater;
import androidx.recyclerview.widget.C0293s0;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.allapps.AllAppsRecyclerView;
import com.android.launcher3.allapps.BaseAllAppsAdapter;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.views.ActivityContext;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class AllAppsRecyclerViewPool extends C0293s0 {
    private Future future;

    public final int getPreinflateCount(Context context) {
        h.e(context, "context");
        int i4 = (((ActivityContext) context).getDeviceProfile().numShownAllAppsColumns * 4) + 2;
        if (FeatureFlags.ALL_APPS_GONE_VISIBILITY.get()) {
            DeviceProfile deviceProfile = ((ActivityContext) ActivityContext.lookupContext(context)).getDeviceProfile();
            i4 += (((int) Math.ceil(deviceProfile.availableHeightPx / deviceProfile.allAppsIconSizePx)) + 1) * deviceProfile.numShownAllAppsColumns;
        }
        return i4 - getRecycledViewCount();
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.android.launcher3.recyclerview.AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$adapter$1] */
    public final void preInflateAllAppsViewHolders(final Context context) {
        final AllAppsRecyclerView activeRecyclerView;
        final int preinflateCount;
        h.e(context, "context");
        ActivityContext activityContext = (ActivityContext) context;
        ActivityAllAppsContainerView appsView = activityContext.getAppsView();
        if (appsView == null || (activeRecyclerView = appsView.getActiveRecyclerView()) == null || (preinflateCount = getPreinflateCount(context)) <= 0) {
            return;
        }
        final LayoutInflater layoutInflater = activityContext.getAppsView().getLayoutInflater();
        final ?? r4 = new BaseAllAppsAdapter(context, layoutInflater) { // from class: com.android.launcher3.recyclerview.AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$adapter$1
        };
        Future future = this.future;
        if (future != null) {
            future.cancel(true);
        }
        this.future = Executors.VIEW_PREINFLATION_EXECUTOR.submit(new Callable() { // from class: com.android.launcher3.recyclerview.AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1
            @Override // java.util.concurrent.Callable
            public final Object call() {
                int i4 = preinflateCount;
                final BaseAllAppsAdapter.ViewHolder[] viewHolderArr = new BaseAllAppsAdapter.ViewHolder[i4];
                for (int i5 = 0; i5 < i4; i5++) {
                    viewHolderArr[i5] = (BaseAllAppsAdapter.ViewHolder) r4.createViewHolder(activeRecyclerView, 2);
                }
                LooperExecutor looperExecutor = Executors.MAIN_EXECUTOR;
                final AllAppsRecyclerViewPool allAppsRecyclerViewPool = this;
                final Context context2 = context;
                looperExecutor.execute(new Runnable() { // from class: com.android.launcher3.recyclerview.AllAppsRecyclerViewPool$preInflateAllAppsViewHolders$1.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        int min = Math.min(viewHolderArr.length, allAppsRecyclerViewPool.getPreinflateCount(context2));
                        for (int i6 = 0; i6 < min; i6++) {
                            allAppsRecyclerViewPool.putRecycledView(viewHolderArr[i6]);
                        }
                    }
                });
                return null;
            }
        });
    }
}
