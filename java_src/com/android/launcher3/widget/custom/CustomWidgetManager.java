package com.android.launcher3.widget.custom;

import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Parcel;
import android.os.Process;
import android.util.SparseArray;
import com.android.launcher3.C0334d0;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.widget.LauncherAppWidgetHostView;
import com.android.launcher3.widget.LauncherAppWidgetProviderInfo;
import g1.C0952a;
import j.C1080K;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.stream.Stream;
import n1.h;
import n1.j;
import n1.k;
/* loaded from: classes.dex */
public final class CustomWidgetManager implements k, SafeCloseable {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new C0952a());
    private final Context mContext;
    private Consumer mWidgetRefreshCallback;
    private int mAutoProviderId = 0;
    private final SparseArray mPlugins = new SparseArray();
    private final List mCustomWidgets = new ArrayList();
    private final SparseArray mWidgetsIdMap = new SparseArray();

    private CustomWidgetManager(Context context) {
        this.mContext = context;
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.get(context)).addPluginListener(this, h.class, true);
    }

    public static /* synthetic */ CustomWidgetManager a(Context context) {
        return new CustomWidgetManager(context);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.get(this.mContext)).removePluginListener(this);
    }

    public final int getWidgetIdForCustomProvider(ComponentName componentName) {
        int indexOfValue = this.mWidgetsIdMap.indexOfValue(componentName);
        if (indexOfValue >= 0) {
            return (-100) - this.mWidgetsIdMap.keyAt(indexOfValue);
        }
        return 0;
    }

    public final LauncherAppWidgetProviderInfo getWidgetProvider(int i4) {
        ComponentName componentName = (ComponentName) this.mWidgetsIdMap.get((-100) - i4);
        Iterator it = ((ArrayList) this.mCustomWidgets).iterator();
        while (it.hasNext()) {
            LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo = (LauncherAppWidgetProviderInfo) it.next();
            if (((AppWidgetProviderInfo) launcherAppWidgetProviderInfo).provider.equals(componentName)) {
                return launcherAppWidgetProviderInfo;
            }
        }
        return null;
    }

    @Override // n1.k
    public final void onPluginConnected(j jVar, Context context) {
        h hVar = (h) jVar;
        this.mPlugins.put(this.mAutoProviderId, hVar);
        List<AppWidgetProviderInfo> installedProvidersForProfile = AppWidgetManager.getInstance(context).getInstalledProvidersForProfile(Process.myUserHandle());
        if (installedProvidersForProfile.isEmpty()) {
            return;
        }
        Parcel obtain = Parcel.obtain();
        installedProvidersForProfile.get(0).writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        int i4 = this.mAutoProviderId;
        CustomAppWidgetProviderInfo customAppWidgetProviderInfo = new CustomAppWidgetProviderInfo(obtain, false, i4);
        ((AppWidgetProviderInfo) customAppWidgetProviderInfo).provider = new ComponentName(context.getPackageName(), C1080K.a("#custom-widget-", i4));
        ((AppWidgetProviderInfo) customAppWidgetProviderInfo).label = hVar.j();
        ((AppWidgetProviderInfo) customAppWidgetProviderInfo).resizeMode = hVar.n();
        customAppWidgetProviderInfo.spanX = hVar.h();
        customAppWidgetProviderInfo.spanY = hVar.f();
        customAppWidgetProviderInfo.minSpanX = hVar.c();
        customAppWidgetProviderInfo.minSpanY = hVar.i();
        obtain.recycle();
        ((ArrayList) this.mCustomWidgets).add(customAppWidgetProviderInfo);
        this.mWidgetsIdMap.put(this.mAutoProviderId, ((AppWidgetProviderInfo) customAppWidgetProviderInfo).provider);
        this.mWidgetRefreshCallback.accept(null);
        this.mAutoProviderId++;
    }

    @Override // n1.k
    public final void onPluginDisconnected(j jVar) {
        int i4;
        h hVar = (h) jVar;
        int i5 = 0;
        while (true) {
            if (i5 >= this.mPlugins.size()) {
                i4 = -1;
                break;
            }
            i4 = this.mPlugins.keyAt(i5);
            if (this.mPlugins.get(i4) == hVar) {
                break;
            }
            i5++;
        }
        if (i4 == -1) {
            return;
        }
        this.mPlugins.remove(i4);
        ((ArrayList) this.mCustomWidgets).remove(getWidgetProvider(i4));
        this.mWidgetsIdMap.remove(i4);
    }

    public final void onViewCreated(LauncherAppWidgetHostView launcherAppWidgetHostView) {
        h hVar = (h) this.mPlugins.get(((CustomAppWidgetProviderInfo) launcherAppWidgetHostView.getAppWidgetInfo()).providerId);
        if (hVar == null) {
            return;
        }
        hVar.g();
    }

    public final void setWidgetRefreshCallback(C0334d0 c0334d0) {
        this.mWidgetRefreshCallback = c0334d0;
    }

    public final Stream stream() {
        return this.mCustomWidgets.stream();
    }
}
