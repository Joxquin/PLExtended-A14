package com.android.launcher3.uioverrides;

import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetProviderInfo;
import android.content.Context;
import android.os.Looper;
import b1.q;
import b1.t;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import com.android.launcher3.widget.LauncherWidgetHolder;
import java.util.function.IntConsumer;
/* loaded from: classes.dex */
final class QuickstepAppWidgetHost extends AppWidgetHost {
    private final IntConsumer mAppWidgetRemovedCallback;
    private final Context mContext;
    private final LauncherWidgetHolder.ProviderChangedListener mProvidersChangedListener;

    public QuickstepAppWidgetHost(Context context, q qVar, t tVar, Looper looper) {
        super(context, 1024, null, looper);
        this.mContext = context;
        this.mAppWidgetRemovedCallback = qVar;
        this.mProvidersChangedListener = tVar;
    }

    @Override // android.appwidget.AppWidgetHost
    public final void onAppWidgetRemoved(int i4) {
        this.mAppWidgetRemovedCallback.accept(i4);
    }

    @Override // android.appwidget.AppWidgetHost
    public final void onProviderChanged(int i4, AppWidgetProviderInfo appWidgetProviderInfo) {
        LauncherAppWidgetProviderInfo fromProviderInfo = LauncherAppWidgetProviderInfo.fromProviderInfo(this.mContext, appWidgetProviderInfo);
        super.onProviderChanged(i4, fromProviderInfo);
        fromProviderInfo.initSpans(LauncherAppState.getIDP(this.mContext));
    }

    @Override // android.appwidget.AppWidgetHost
    public final void onProvidersChanged() {
        this.mProvidersChangedListener.notifyWidgetProvidersChanged();
    }
}
