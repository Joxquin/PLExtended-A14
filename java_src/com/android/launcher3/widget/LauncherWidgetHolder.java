package com.android.launcher3.widget;

import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.SparseArray;
import android.widget.RemoteViews;
import android.widget.Toast;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.K;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.Utilities;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.model.data.ItemInfo;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.ResourceBasedOverride;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import com.android.systemui.shared.R;
import java.util.function.IntConsumer;
/* loaded from: classes.dex */
public class LauncherWidgetHolder {
    private final Context mContext;
    private final AppWidgetHost mWidgetHost;
    private final SparseArray mViews = new SparseArray();
    private final SparseArray mPendingViews = new SparseArray();
    private final SparseArray mDeferredViews = new SparseArray();
    protected int mFlags = 2;

    /* loaded from: classes.dex */
    public class HolderFactory implements ResourceBasedOverride {
        public LauncherWidgetHolder newInstance(Context context, K k4) {
            return new LauncherWidgetHolder(context, k4);
        }
    }

    /* loaded from: classes.dex */
    public interface ProviderChangedListener {
        void notifyWidgetProvidersChanged();
    }

    public LauncherWidgetHolder(Context context, IntConsumer intConsumer) {
        this.mContext = context;
        this.mWidgetHost = createHost(context, intConsumer);
    }

    private void setShouldListenFlag(int i4, boolean z4) {
        if (z4) {
            this.mFlags = i4 | this.mFlags;
        } else {
            this.mFlags = (~i4) & this.mFlags;
        }
        boolean isListening = isListening();
        if (!isListening && shouldListen(this.mFlags)) {
            startListening();
        } else if (isListening && (this.mFlags & 4) == 0) {
            stopListening();
        }
    }

    public static void startBindFlow(BaseActivity baseActivity, int i4, AppWidgetProviderInfo appWidgetProviderInfo, int i5) {
        baseActivity.startActivityForResult(new Intent("android.appwidget.action.APPWIDGET_BIND").putExtra("appWidgetId", i4).putExtra("appWidgetProvider", appWidgetProviderInfo.provider).putExtra("appWidgetProviderProfile", appWidgetProviderInfo.getProfile()), i5);
    }

    public final void addPendingView(int i4, PendingAppWidgetHostView pendingAppWidgetHostView) {
        this.mPendingViews.put(i4, pendingAppWidgetHostView);
    }

    public void addProviderChangeListener(ProviderChangedListener providerChangedListener) {
        ((LauncherAppWidgetHost) this.mWidgetHost).addProviderChangeListener(providerChangedListener);
    }

    public final int allocateAppWidgetId() {
        return this.mWidgetHost.allocateAppWidgetId();
    }

    public void clearViews() {
        ((LauncherAppWidgetHost) this.mWidgetHost).clearViews();
        if (FeatureFlags.ENABLE_CACHED_WIDGET.get()) {
            this.mDeferredViews.clear();
        }
        this.mViews.clear();
    }

    public AppWidgetHost createHost(Context context, IntConsumer intConsumer) {
        return new LauncherAppWidgetHost(context, intConsumer, this);
    }

    public AppWidgetHostView createView(Context context, int i4, LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo) {
        RemoteViews remoteViews;
        if (((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider.getClassName().startsWith("#custom-widget-")) {
            LauncherAppWidgetHostView launcherAppWidgetHostView = new LauncherAppWidgetHostView(context);
            launcherAppWidgetHostView.setAppWidget(0, launcherAppWidgetProviderInfo);
            ((CustomWidgetManager) CustomWidgetManager.INSTANCE.get(context)).onViewCreated(launcherAppWidgetHostView);
            return launcherAppWidgetHostView;
        } else if ((this.mFlags & 1) != 0) {
            try {
                return this.mWidgetHost.createView(context, i4, launcherAppWidgetProviderInfo);
            } catch (Exception e4) {
                if (Utilities.isBinderSizeError(e4)) {
                    LauncherAppWidgetHostView launcherAppWidgetHostView2 = (LauncherAppWidgetHostView) this.mViews.get(i4);
                    if (launcherAppWidgetHostView2 == null) {
                        launcherAppWidgetHostView2 = this.onCreateView(this.mContext, i4);
                    }
                    launcherAppWidgetHostView2.setAppWidget(i4, launcherAppWidgetProviderInfo);
                    launcherAppWidgetHostView2.updateAppWidget(new RemoteViews(launcherAppWidgetHostView2.getAppWidgetInfo().provider.getPackageName(), 0));
                    return launcherAppWidgetHostView2;
                }
                throw new RuntimeException(e4);
            }
        } else {
            if (FeatureFlags.ENABLE_CACHED_WIDGET.get()) {
                LauncherAppState launcherAppState = LauncherAppState.getInstance(this.mContext);
                synchronized (launcherAppState.mCachedRemoteViews) {
                    remoteViews = (RemoteViews) launcherAppState.mCachedRemoteViews.get(i4);
                }
                if (remoteViews != null) {
                    LauncherAppWidgetHostView launcherAppWidgetHostView3 = new LauncherAppWidgetHostView(context);
                    launcherAppWidgetHostView3.setAppWidget(i4, launcherAppWidgetProviderInfo);
                    launcherAppWidgetHostView3.updateAppWidget(remoteViews);
                    this.mDeferredViews.put(i4, launcherAppWidgetHostView3);
                    this.mViews.put(i4, launcherAppWidgetHostView3);
                    return launcherAppWidgetHostView3;
                }
            }
            DeferredAppWidgetHostView deferredAppWidgetHostView = new DeferredAppWidgetHostView(context);
            deferredAppWidgetHostView.setAppWidget(i4, launcherAppWidgetProviderInfo);
            this.mViews.put(i4, deferredAppWidgetHostView);
            return deferredAppWidgetHostView;
        }
    }

    public void deleteAppWidgetId(int i4) {
        this.mWidgetHost.deleteAppWidgetId(i4);
        this.mViews.remove(i4);
        if (FeatureFlags.ENABLE_CACHED_WIDGET.get()) {
            LauncherAppState launcherAppState = LauncherAppState.getInstance(this.mContext);
            synchronized (launcherAppState.mCachedRemoteViews) {
                launcherAppState.mCachedRemoteViews.delete(i4);
            }
        }
    }

    public void destroy() {
    }

    public final int[] getAppWidgetIds() {
        return this.mWidgetHost.getAppWidgetIds();
    }

    public final Bundle getConfigurationActivityOptions(BaseDraggingActivity baseDraggingActivity, int i4) {
        LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView) this.mViews.get(i4);
        if (launcherAppWidgetHostView == null) {
            return baseDraggingActivity.makeDefaultActivityOptions(-1).toBundle();
        }
        Object tag = launcherAppWidgetHostView.getTag();
        if (tag instanceof ItemInfo) {
            Bundle bundle = baseDraggingActivity.getActivityLaunchOptions(launcherAppWidgetHostView, (ItemInfo) tag).toBundle();
            bundle.putInt("android.activity.splashScreenStyle", 0);
            return bundle;
        }
        return baseDraggingActivity.makeDefaultActivityOptions(-1).toBundle();
    }

    public final PendingAppWidgetHostView getPendingView(int i4) {
        return (PendingAppWidgetHostView) this.mPendingViews.get(i4);
    }

    public final boolean isListening() {
        return (this.mFlags & 1) != 0;
    }

    public final LauncherAppWidgetHostView onCreateView(Context context, int i4) {
        LauncherAppWidgetHostView launcherAppWidgetHostView;
        if (getPendingView(i4) != null) {
            launcherAppWidgetHostView = getPendingView(i4);
            removePendingView(i4);
        } else {
            SparseArray sparseArray = this.mDeferredViews;
            launcherAppWidgetHostView = sparseArray.get(i4) != null ? (LauncherAppWidgetHostView) sparseArray.get(i4) : new LauncherAppWidgetHostView(context);
        }
        this.mViews.put(i4, launcherAppWidgetHostView);
        return launcherAppWidgetHostView;
    }

    public final void removePendingView(int i4) {
        this.mPendingViews.remove(i4);
    }

    public void removeProviderChangeListener(ProviderChangedListener providerChangedListener) {
        ((LauncherAppWidgetHost) this.mWidgetHost).removeProviderChangeListener(providerChangedListener);
    }

    public final void setActivityResumed(boolean z4) {
        setShouldListenFlag(8, z4);
    }

    public final void setActivityStarted(boolean z4) {
        setShouldListenFlag(4, z4);
    }

    public final void setListeningFlag(boolean z4) {
        if (z4) {
            this.mFlags |= 1;
        } else {
            this.mFlags &= -2;
        }
    }

    public final void setStateIsNormal(boolean z4) {
        setShouldListenFlag(2, z4);
    }

    public boolean shouldListen(int i4) {
        return (i4 & 14) == 14;
    }

    public final void startConfigActivity(final BaseDraggingActivity baseDraggingActivity, int i4, final int i5) {
        try {
            TestLogging.recordEvent("Main", "start: startConfigActivity");
            this.mWidgetHost.startAppWidgetConfigureActivityForResult(baseDraggingActivity, i4, 0, i5, getConfigurationActivityOptions(baseDraggingActivity, i4));
        } catch (ActivityNotFoundException | SecurityException unused) {
            Toast.makeText(baseDraggingActivity, (int) R.string.activity_not_found, 0).show();
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: f1.f
                @Override // java.lang.Runnable
                public final void run() {
                    BaseActivity.this.onActivityResult(i5, 0, null);
                }
            });
        }
    }

    public final void startListening() {
        setListeningFlag(true);
        try {
            this.mWidgetHost.startListening();
        } catch (Exception e4) {
            if (!Utilities.isBinderSizeError(e4)) {
                throw new RuntimeException(e4);
            }
        }
        updateDeferredView();
    }

    public void stopListening() {
        if (FeatureFlags.ENABLE_CACHED_WIDGET.get()) {
            LauncherAppState launcherAppState = LauncherAppState.getInstance(this.mContext);
            synchronized (launcherAppState.mCachedRemoteViews) {
                for (int i4 = 0; i4 < this.mViews.size(); i4++) {
                    int keyAt = this.mViews.keyAt(i4);
                    launcherAppState.mCachedRemoteViews.put(keyAt, ((LauncherAppWidgetHostView) this.mViews.get(keyAt)).mLastRemoteViews);
                }
            }
        }
        this.mWidgetHost.stopListening();
        setListeningFlag(false);
    }

    public void updateDeferredView() {
        SparseArray sparseArray = this.mViews;
        for (int size = sparseArray.size() - 1; size >= 0; size--) {
            LauncherAppWidgetHostView launcherAppWidgetHostView = (LauncherAppWidgetHostView) sparseArray.valueAt(size);
            if (launcherAppWidgetHostView instanceof DeferredAppWidgetHostView) {
                launcherAppWidgetHostView.reInflate();
            }
            if (FeatureFlags.ENABLE_CACHED_WIDGET.get()) {
                int keyAt = sparseArray.keyAt(size);
                SparseArray sparseArray2 = this.mDeferredViews;
                if (launcherAppWidgetHostView == sparseArray2.get(keyAt)) {
                    this.mWidgetHost.createView(launcherAppWidgetHostView.mLauncher, keyAt, launcherAppWidgetHostView.getAppWidgetInfo());
                    sparseArray2.remove(keyAt);
                }
            }
        }
    }
}
