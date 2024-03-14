package com.android.launcher3.uioverrides.plugins;

import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.systemui.shared.plugins.PluginActionManager;
import com.android.systemui.shared.plugins.PluginInstance;
import com.android.systemui.shared.plugins.PluginManagerImpl;
import com.android.systemui.shared.plugins.PluginPrefs;
import com.android.systemui.shared.system.UncaughtExceptionPreHandlerManager;
import d1.C0798a;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import n1.k;
/* loaded from: classes.dex */
public final class PluginManagerWrapper {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new C0798a());
    private static final UncaughtExceptionPreHandlerManager UNCAUGHT_EXCEPTION_PRE_HANDLER_MANAGER = new UncaughtExceptionPreHandlerManager();
    private final Context mContext;
    private final PluginEnablerImpl mPluginEnabler;
    private final PluginManagerImpl mPluginManager;

    private PluginManagerWrapper(Context context) {
        this.mContext = context;
        PluginEnablerImpl pluginEnablerImpl = new PluginEnablerImpl(context);
        this.mPluginEnabler = pluginEnablerImpl;
        List emptyList = Collections.emptyList();
        this.mPluginManager = new PluginManagerImpl(context, new PluginActionManager.Factory(context, context.getPackageManager(), context.getMainExecutor(), Executors.MODEL_EXECUTOR, (NotificationManager) context.getSystemService(NotificationManager.class), pluginEnablerImpl, emptyList, new PluginInstance.Factory(PluginManagerWrapper.class.getClassLoader(), new PluginInstance.InstanceFactory(), new PluginInstance.VersionCheckerImpl(), emptyList, false)), false, UNCAUGHT_EXCEPTION_PRE_HANDLER_MANAGER, pluginEnablerImpl, new PluginPrefs(context), emptyList);
    }

    public static /* synthetic */ PluginManagerWrapper a(Context context) {
        return new PluginManagerWrapper(context);
    }

    public final void addPluginListener(k kVar, Class cls, boolean z4) {
        this.mPluginManager.addPluginListener(kVar, cls, z4);
    }

    public final void dump(PrintWriter printWriter) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (String str : getPluginActions()) {
            for (ResolveInfo resolveInfo : this.mContext.getPackageManager().queryIntentServices(new Intent(str), 512)) {
                ServiceInfo serviceInfo = resolveInfo.serviceInfo;
                ComponentName componentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
                PluginEnablerImpl pluginEnablerImpl = this.mPluginEnabler;
                pluginEnablerImpl.getClass();
                if (pluginEnablerImpl.getBoolean(PluginEnablerImpl.pluginEnabledKey(componentName), true)) {
                    arrayList.add(componentName);
                } else {
                    arrayList2.add(componentName);
                }
            }
        }
        printWriter.println("PluginManager:");
        printWriter.println("  numEnabledPlugins=" + arrayList.size());
        printWriter.println("  numDisabledPlugins=" + arrayList2.size());
        printWriter.println("  enabledPlugins=" + arrayList);
        printWriter.println("  disabledPlugins=" + arrayList2);
    }

    public final Set getPluginActions() {
        return new PluginPrefs(this.mContext).getPluginList();
    }

    public final PluginEnablerImpl getPluginEnabler() {
        return this.mPluginEnabler;
    }

    public final void removePluginListener(k kVar) {
        this.mPluginManager.removePluginListener(kVar);
    }
}
