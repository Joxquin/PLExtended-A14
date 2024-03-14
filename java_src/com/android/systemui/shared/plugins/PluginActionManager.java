package com.android.systemui.shared.plugins;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.util.ArraySet;
import android.util.Log;
import android.view.LayoutInflater;
import com.android.systemui.shared.plugins.PluginInstance;
import com.android.systemui.shared.plugins.VersionInfo;
import com.android.systemui.shared.system.QuickStepContract;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import n1.j;
import n1.k;
/* loaded from: classes.dex */
public class PluginActionManager {
    private static final boolean DEBUG = false;
    public static final String PLUGIN_PERMISSION = "com.android.systemui.permission.PLUGIN";
    private static final String TAG = "PluginActionManager";
    private final String mAction;
    private final boolean mAllowMultiple;
    private final Executor mBgExecutor;
    private final Context mContext;
    private final boolean mIsDebuggable;
    private final k mListener;
    private final Executor mMainExecutor;
    private final NotificationManager mNotificationManager;
    private final Class mPluginClass;
    private final PluginEnabler mPluginEnabler;
    private final PluginInstance.Factory mPluginInstanceFactory;
    private final ArrayList mPluginInstances;
    private final PackageManager mPm;
    private final ArraySet mPrivilegedPlugins;

    /* loaded from: classes.dex */
    public class Factory {
        private final Executor mBgExecutor;
        private final Context mContext;
        private final Executor mMainExecutor;
        private final NotificationManager mNotificationManager;
        private final PackageManager mPackageManager;
        private final PluginEnabler mPluginEnabler;
        private final PluginInstance.Factory mPluginInstanceFactory;
        private final List mPrivilegedPlugins;

        public Factory(Context context, PackageManager packageManager, Executor executor, Executor executor2, NotificationManager notificationManager, PluginEnabler pluginEnabler, List list, PluginInstance.Factory factory) {
            this.mContext = context;
            this.mPackageManager = packageManager;
            this.mMainExecutor = executor;
            this.mBgExecutor = executor2;
            this.mNotificationManager = notificationManager;
            this.mPluginEnabler = pluginEnabler;
            this.mPrivilegedPlugins = list;
            this.mPluginInstanceFactory = factory;
        }

        public PluginActionManager create(String str, k kVar, Class cls, boolean z4, boolean z5) {
            return new PluginActionManager(this.mContext, this.mPackageManager, str, kVar, cls, z4, this.mMainExecutor, this.mBgExecutor, z5, this.mNotificationManager, this.mPluginEnabler, this.mPrivilegedPlugins, this.mPluginInstanceFactory, 0);
        }
    }

    /* loaded from: classes.dex */
    public class PluginContextWrapper extends ContextWrapper {
        private final ClassLoader mClassLoader;
        private LayoutInflater mInflater;

        public PluginContextWrapper(Context context, ClassLoader classLoader) {
            super(context);
            this.mClassLoader = classLoader;
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public ClassLoader getClassLoader() {
            return this.mClassLoader;
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public Object getSystemService(String str) {
            if ("layout_inflater".equals(str)) {
                if (this.mInflater == null) {
                    this.mInflater = LayoutInflater.from(getBaseContext()).cloneInContext(this);
                }
                return this.mInflater;
            }
            return getBaseContext().getSystemService(str);
        }
    }

    public /* synthetic */ PluginActionManager(Context context, PackageManager packageManager, String str, k kVar, Class cls, boolean z4, Executor executor, Executor executor2, boolean z5, NotificationManager notificationManager, PluginEnabler pluginEnabler, List list, PluginInstance.Factory factory, int i4) {
        this(context, packageManager, str, kVar, cls, z4, executor, executor2, z5, notificationManager, pluginEnabler, list, factory);
    }

    private boolean disable(PluginInstance pluginInstance, int i4) {
        ComponentName componentName = pluginInstance.getComponentName();
        if (isPluginPrivileged(componentName)) {
            return false;
        }
        Log.w(TAG, "Disabling plugin " + componentName.flattenToShortString());
        this.mPluginEnabler.setDisabled(componentName, i4);
        return true;
    }

    private void handleQueryPlugins(String str) {
        Intent intent = new Intent(this.mAction);
        if (str != null) {
            intent.setPackage(str);
        }
        List<ResolveInfo> queryIntentServices = this.mPm.queryIntentServices(intent, 0);
        if (queryIntentServices.size() > 1 && !this.mAllowMultiple) {
            Log.w(TAG, "Multiple plugins found for " + this.mAction);
            return;
        }
        for (ResolveInfo resolveInfo : queryIntentServices) {
            ServiceInfo serviceInfo = resolveInfo.serviceInfo;
            PluginInstance loadPluginComponent = loadPluginComponent(new ComponentName(serviceInfo.packageName, serviceInfo.name));
            if (loadPluginComponent != null) {
                this.mPluginInstances.add(loadPluginComponent);
                this.mMainExecutor.execute(new a(this, loadPluginComponent, 3));
            }
        }
    }

    public /* synthetic */ void lambda$reloadPackage$3(String str) {
        lambda$onPackageRemoved$2(str);
        queryPkg(str);
    }

    private PluginInstance loadPluginComponent(ComponentName componentName) {
        if (!this.mIsDebuggable && !isPluginPrivileged(componentName)) {
            Log.w(TAG, "Plugin cannot be loaded on production build: " + componentName);
            return null;
        } else if (this.mPluginEnabler.isEnabled(componentName)) {
            String packageName = componentName.getPackageName();
            try {
                if (this.mPm.checkPermission(PLUGIN_PERMISSION, packageName) != 0) {
                    Log.d(TAG, "Plugin doesn't have permission: " + packageName);
                    return null;
                }
                try {
                    return this.mPluginInstanceFactory.create(this.mContext, this.mPm.getApplicationInfo(packageName, 0), componentName, this.mPluginClass, this.mListener);
                } catch (VersionInfo.InvalidVersionException e4) {
                    this.reportInvalidVersion(componentName, componentName.getClassName(), e4);
                    return null;
                }
            } catch (Throwable th) {
                Log.w(TAG, "Couldn't load plugin: " + componentName, th);
                return null;
            }
        } else {
            return null;
        }
    }

    /* renamed from: onPluginConnected */
    public void lambda$handleQueryPlugins$6(PluginInstance pluginInstance) {
        PluginPrefs.setHasPlugins(this.mContext);
        pluginInstance.onCreate();
    }

    /* renamed from: onPluginDisconnected */
    public void lambda$removePkg$5(PluginInstance pluginInstance) {
        pluginInstance.onDestroy();
    }

    /* renamed from: queryAll */
    public void lambda$loadAll$0() {
        for (int size = this.mPluginInstances.size() - 1; size >= 0; size--) {
            this.mMainExecutor.execute(new a(this, (PluginInstance) this.mPluginInstances.get(size), 1));
        }
        this.mPluginInstances.clear();
        handleQueryPlugins(null);
    }

    private void queryPkg(String str) {
        if (this.mAllowMultiple || this.mPluginInstances.size() == 0) {
            handleQueryPlugins(str);
        }
    }

    /* renamed from: removePkg */
    public void lambda$onPackageRemoved$2(String str) {
        for (int size = this.mPluginInstances.size() - 1; size >= 0; size--) {
            PluginInstance pluginInstance = (PluginInstance) this.mPluginInstances.get(size);
            if (pluginInstance.getPackage().equals(str)) {
                this.mMainExecutor.execute(new a(this, pluginInstance, 2));
                this.mPluginInstances.remove(size);
            }
        }
    }

    private void reportInvalidVersion(ComponentName componentName, String str, VersionInfo.InvalidVersionException invalidVersionException) {
        Notification.Builder color = new Notification.Builder(this.mContext, "ALR").setStyle(new Notification.BigTextStyle()).setSmallIcon(Resources.getSystem().getIdentifier("stat_sys_warning", "drawable", "android")).setWhen(0L).setShowWhen(false).setVisibility(1).setColor(this.mContext.getColor(Resources.getSystem().getIdentifier("system_notification_accent_color", "color", "android")));
        try {
            str = this.mPm.getServiceInfo(componentName, 0).loadLabel(this.mPm).toString();
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (invalidVersionException.isTooNew()) {
            Notification.Builder contentTitle = color.setContentTitle("Plugin \"" + str + "\" is too new");
            StringBuilder sb = new StringBuilder("Check to see if an OTA is available.\n");
            sb.append(invalidVersionException.getMessage());
            contentTitle.setContentText(sb.toString());
        } else {
            Notification.Builder contentTitle2 = color.setContentTitle("Plugin \"" + str + "\" is too old");
            StringBuilder sb2 = new StringBuilder("Contact plugin developer to get an updated version.\n");
            sb2.append(invalidVersionException.getMessage());
            contentTitle2.setContentText(sb2.toString());
        }
        Intent intent = new Intent("com.android.systemui.action.DISABLE_PLUGIN");
        color.addAction(new Notification.Action.Builder((Icon) null, "Disable plugin", PendingIntent.getBroadcast(this.mContext, 0, intent.setData(Uri.parse("package://" + componentName.flattenToString())), QuickStepContract.SYSUI_STATE_FREEFORM_ACTIVE_IN_DESKTOP_MODE)).build());
        this.mNotificationManager.notify(6, color.build());
        Log.w(TAG, "Error loading plugin; " + invalidVersionException.getMessage());
    }

    public boolean checkAndDisable(String str) {
        Iterator it = new ArrayList(this.mPluginInstances).iterator();
        boolean z4 = false;
        while (it.hasNext()) {
            PluginInstance pluginInstance = (PluginInstance) it.next();
            if (str.startsWith(pluginInstance.getPackage())) {
                z4 |= disable(pluginInstance, 3);
            }
        }
        return z4;
    }

    public boolean dependsOn(j jVar, Class cls) {
        Iterator it = new ArrayList(this.mPluginInstances).iterator();
        while (it.hasNext()) {
            PluginInstance pluginInstance = (PluginInstance) it.next();
            if (pluginInstance.containsPluginClass(jVar.getClass())) {
                return pluginInstance.getVersionInfo() != null && pluginInstance.getVersionInfo().hasClass(cls);
            }
        }
        return false;
    }

    public void destroy() {
        Iterator it = new ArrayList(this.mPluginInstances).iterator();
        while (it.hasNext()) {
            this.mMainExecutor.execute(new a(this, (PluginInstance) it.next(), 0));
        }
    }

    public boolean disableAll() {
        ArrayList arrayList = new ArrayList(this.mPluginInstances);
        boolean z4 = false;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            z4 |= disable((PluginInstance) arrayList.get(i4), 4);
        }
        return z4;
    }

    public boolean isPluginPrivileged(ComponentName componentName) {
        Iterator it = this.mPrivilegedPlugins.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
            if (unflattenFromString == null) {
                if (str.equals(componentName.getPackageName())) {
                    return true;
                }
            } else if (unflattenFromString.equals(componentName)) {
                return true;
            }
        }
        return false;
    }

    public void loadAll() {
        this.mBgExecutor.execute(new Runnable() { // from class: com.android.systemui.shared.plugins.c
            @Override // java.lang.Runnable
            public final void run() {
                PluginActionManager.this.lambda$loadAll$0();
            }
        });
    }

    public void onPackageRemoved(String str) {
        this.mBgExecutor.execute(new b(this, str, 1));
    }

    public void reloadPackage(String str) {
        this.mBgExecutor.execute(new b(this, str, 0));
    }

    public String toString() {
        return String.format("%s@%s (action=%s)", getClass().getSimpleName(), Integer.valueOf(hashCode()), this.mAction);
    }

    private PluginActionManager(Context context, PackageManager packageManager, String str, k kVar, Class cls, boolean z4, Executor executor, Executor executor2, boolean z5, NotificationManager notificationManager, PluginEnabler pluginEnabler, List list, PluginInstance.Factory factory) {
        ArraySet arraySet = new ArraySet();
        this.mPrivilegedPlugins = arraySet;
        this.mPluginInstances = new ArrayList();
        this.mPluginClass = cls;
        this.mMainExecutor = executor;
        this.mBgExecutor = executor2;
        this.mContext = context;
        this.mPm = packageManager;
        this.mAction = str;
        this.mListener = kVar;
        this.mAllowMultiple = z4;
        this.mNotificationManager = notificationManager;
        this.mPluginEnabler = pluginEnabler;
        this.mPluginInstanceFactory = factory;
        arraySet.addAll(list);
        this.mIsDebuggable = z5;
    }
}
