package com.android.launcher3.widget;

import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.widget.LauncherWidgetHolder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.function.IntConsumer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class LauncherAppWidgetHost extends AppWidgetHost {
    private final IntConsumer mAppWidgetRemovedCallback;
    private final Context mContext;
    private final LauncherWidgetHolder mHolder;
    private final ArrayList mProviderChangeListeners;

    public LauncherAppWidgetHost(Context context, IntConsumer intConsumer, LauncherWidgetHolder launcherWidgetHolder) {
        super(context, 1024);
        this.mProviderChangeListeners = new ArrayList();
        this.mContext = context;
        this.mAppWidgetRemovedCallback = intConsumer;
        this.mHolder = launcherWidgetHolder;
    }

    public final void addProviderChangeListener(LauncherWidgetHolder.ProviderChangedListener providerChangedListener) {
        this.mProviderChangeListeners.add(providerChangedListener);
    }

    @Override // android.appwidget.AppWidgetHost
    public final void clearViews() {
        super.clearViews();
    }

    @Override // android.appwidget.AppWidgetHost
    public final void onAppWidgetRemoved(int i4) {
        IntConsumer intConsumer = this.mAppWidgetRemovedCallback;
        if (intConsumer == null) {
            return;
        }
        intConsumer.accept(i4);
    }

    @Override // android.appwidget.AppWidgetHost
    public final AppWidgetHostView onCreateView(Context context, int i4, AppWidgetProviderInfo appWidgetProviderInfo) {
        return this.mHolder.onCreateView(context, i4);
    }

    @Override // android.appwidget.AppWidgetHost
    public final void onProviderChanged(int i4, AppWidgetProviderInfo appWidgetProviderInfo) {
        LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, appWidgetProviderInfo);
        super.onProviderChanged(i4, fromProviderInfo);
        fromProviderInfo.initSpans(LauncherAppState.getIDP(this.mContext));
    }

    @Override // android.appwidget.AppWidgetHost
    public final void onProvidersChanged() {
        if (this.mProviderChangeListeners.isEmpty()) {
            return;
        }
        Iterator it = new ArrayList(this.mProviderChangeListeners).iterator();
        while (it.hasNext()) {
            ((LauncherWidgetHolder.ProviderChangedListener) it.next()).notifyWidgetProvidersChanged();
        }
    }

    public final void removeProviderChangeListener(LauncherWidgetHolder.ProviderChangedListener providerChangedListener) {
        this.mProviderChangeListeners.remove(providerChangedListener);
    }
}
