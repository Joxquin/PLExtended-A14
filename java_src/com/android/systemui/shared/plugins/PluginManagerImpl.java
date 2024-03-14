package com.android.systemui.shared.plugins;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.ArraySet;
import android.util.Log;
import android.widget.Toast;
import com.android.systemui.shared.plugins.PluginActionManager;
import com.android.systemui.shared.system.UncaughtExceptionPreHandlerManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.Thread;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import n1.j;
import n1.k;
import n1.l;
import o1.InterfaceC1324c;
/* loaded from: classes.dex */
public class PluginManagerImpl extends BroadcastReceiver implements l {
    static final String DISABLE_PLUGIN = "com.android.systemui.action.DISABLE_PLUGIN";
    private static final String TAG = "PluginManagerImpl";
    private final PluginActionManager.Factory mActionManagerFactory;
    private final Context mContext;
    private final boolean mIsDebuggable;
    private boolean mListening;
    private final PluginEnabler mPluginEnabler;
    private final PluginPrefs mPluginPrefs;
    private final ArraySet mPrivilegedPlugins;
    private final ArrayMap mPluginMap = new ArrayMap();
    private final Map mClassLoaders = new ArrayMap();

    /* loaded from: classes.dex */
    class ClassLoaderFilter extends ClassLoader {
        private final ClassLoader mBase;
        private final String[] mPackages;

        public ClassLoaderFilter(ClassLoader classLoader, String... strArr) {
            super(ClassLoader.getSystemClassLoader());
            this.mBase = classLoader;
            this.mPackages = strArr;
        }

        @Override // java.lang.ClassLoader
        public Class loadClass(String str, boolean z4) {
            for (String str2 : this.mPackages) {
                if (str.startsWith(str2)) {
                    return this.mBase.loadClass(str);
                }
            }
            return super.loadClass(str, z4);
        }
    }

    /* loaded from: classes.dex */
    public class CrashWhilePluginActiveException extends RuntimeException {
        public CrashWhilePluginActiveException(Throwable th) {
            super(th);
        }
    }

    /* loaded from: classes.dex */
    class PluginExceptionHandler implements Thread.UncaughtExceptionHandler {
        public /* synthetic */ PluginExceptionHandler(PluginManagerImpl pluginManagerImpl, int i4) {
            this();
        }

        private boolean checkStack(Throwable th) {
            StackTraceElement[] stackTrace;
            boolean z4;
            if (th == null) {
                return false;
            }
            synchronized (this) {
                z4 = false;
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    for (PluginActionManager pluginActionManager : PluginManagerImpl.this.mPluginMap.values()) {
                        z4 |= pluginActionManager.checkAndDisable(stackTraceElement.getClassName());
                    }
                }
            }
            return checkStack(th.getCause()) | z4;
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (SystemProperties.getBoolean("plugin.debugging", false)) {
                return;
            }
            boolean checkStack = checkStack(th);
            if (!checkStack) {
                synchronized (this) {
                    for (PluginActionManager pluginActionManager : PluginManagerImpl.this.mPluginMap.values()) {
                        checkStack |= pluginActionManager.disableAll();
                    }
                }
            }
            if (checkStack) {
                new CrashWhilePluginActiveException(th);
            }
        }

        private PluginExceptionHandler() {
        }
    }

    public PluginManagerImpl(Context context, PluginActionManager.Factory factory, boolean z4, UncaughtExceptionPreHandlerManager uncaughtExceptionPreHandlerManager, PluginEnabler pluginEnabler, PluginPrefs pluginPrefs, List list) {
        ArraySet arraySet = new ArraySet();
        this.mPrivilegedPlugins = arraySet;
        this.mContext = context;
        this.mActionManagerFactory = factory;
        this.mIsDebuggable = z4;
        arraySet.addAll(list);
        this.mPluginPrefs = pluginPrefs;
        this.mPluginEnabler = pluginEnabler;
        uncaughtExceptionPreHandlerManager.registerHandler(new PluginExceptionHandler(this, 0));
    }

    private boolean clearClassLoader(String str) {
        return this.mClassLoaders.remove(str) != null;
    }

    private boolean isPluginPrivileged(ComponentName componentName) {
        Iterator it = this.mPrivilegedPlugins.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            ComponentName unflattenFromString = ComponentName.unflattenFromString(str);
            if (unflattenFromString != null) {
                if (unflattenFromString.equals(componentName)) {
                    return true;
                }
            } else if (str.equals(componentName.getPackageName())) {
                return true;
            }
        }
        return false;
    }

    private void startListening() {
        if (this.mListening) {
            return;
        }
        this.mListening = true;
        IntentFilter intentFilter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_CHANGED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addDataScheme("package");
        this.mContext.registerReceiver(this, intentFilter);
        intentFilter.addAction("com.android.systemui.action.PLUGIN_CHANGED");
        intentFilter.addAction(DISABLE_PLUGIN);
        intentFilter.addDataScheme("package");
        this.mContext.registerReceiver(this, intentFilter, PluginActionManager.PLUGIN_PERMISSION, null, 2);
        this.mContext.registerReceiver(this, new IntentFilter("android.intent.action.USER_UNLOCKED"));
    }

    private void stopListening() {
        if (this.mListening) {
            this.mListening = false;
            this.mContext.unregisterReceiver(this);
        }
    }

    @Override // n1.l
    public void addPluginListener(k kVar, Class cls, boolean z4) {
        InterfaceC1324c interfaceC1324c = (InterfaceC1324c) cls.getDeclaredAnnotation(InterfaceC1324c.class);
        if (interfaceC1324c != null) {
            if (!TextUtils.isEmpty(interfaceC1324c.action())) {
                addPluginListener(interfaceC1324c.action(), kVar, cls, z4);
                return;
            }
            throw new RuntimeException(cls + " doesn't provide an action");
        }
        throw new RuntimeException(cls + " doesn't provide an interface");
    }

    public boolean dependsOn(j jVar, Class cls) {
        synchronized (this) {
            for (int i4 = 0; i4 < this.mPluginMap.size(); i4++) {
                if (((PluginActionManager) this.mPluginMap.valueAt(i4)).dependsOn(jVar, cls)) {
                    return true;
                }
            }
            return false;
        }
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        synchronized (this) {
            printWriter.println(String.format("  plugin map (%d):", Integer.valueOf(this.mPluginMap.size())));
            for (k kVar : this.mPluginMap.keySet()) {
                printWriter.println(String.format("    %s -> %s", kVar, this.mPluginMap.get(kVar)));
            }
        }
    }

    public String[] getPrivilegedPlugins() {
        return (String[]) this.mPrivilegedPlugins.toArray(new String[0]);
    }

    public boolean isDebuggable() {
        return this.mIsDebuggable;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        int disableReason;
        if ("android.intent.action.USER_UNLOCKED".equals(intent.getAction())) {
            synchronized (this) {
                for (PluginActionManager pluginActionManager : this.mPluginMap.values()) {
                    pluginActionManager.loadAll();
                }
            }
        } else if (DISABLE_PLUGIN.equals(intent.getAction())) {
            ComponentName unflattenFromString = ComponentName.unflattenFromString(intent.getData().toString().substring(10));
            if (isPluginPrivileged(unflattenFromString)) {
                return;
            }
            this.mPluginEnabler.setDisabled(unflattenFromString, 2);
            ((NotificationManager) this.mContext.getSystemService(NotificationManager.class)).cancel(unflattenFromString.getClassName(), 6);
        } else {
            String encodedSchemeSpecificPart = intent.getData().getEncodedSchemeSpecificPart();
            ComponentName unflattenFromString2 = ComponentName.unflattenFromString(encodedSchemeSpecificPart);
            if (clearClassLoader(encodedSchemeSpecificPart)) {
                if (Build.IS_ENG) {
                    Context context2 = this.mContext;
                    Toast.makeText(context2, "Reloading " + encodedSchemeSpecificPart, 1).show();
                } else {
                    String str = TAG;
                    Log.v(str, "Reloading " + encodedSchemeSpecificPart);
                }
            }
            if ("android.intent.action.PACKAGE_REPLACED".equals(intent.getAction()) && unflattenFromString2 != null && ((disableReason = this.mPluginEnabler.getDisableReason(unflattenFromString2)) == 3 || disableReason == 4 || disableReason == 2)) {
                String str2 = TAG;
                Log.i(str2, "Re-enabling previously disabled plugin that has been updated: " + unflattenFromString2.flattenToShortString());
                this.mPluginEnabler.setEnabled(unflattenFromString2);
            }
            synchronized (this) {
                if (!"android.intent.action.PACKAGE_ADDED".equals(intent.getAction()) && !"android.intent.action.PACKAGE_CHANGED".equals(intent.getAction()) && !"android.intent.action.PACKAGE_REPLACED".equals(intent.getAction())) {
                    for (PluginActionManager pluginActionManager2 : this.mPluginMap.values()) {
                        pluginActionManager2.onPackageRemoved(encodedSchemeSpecificPart);
                    }
                }
                for (PluginActionManager pluginActionManager3 : this.mPluginMap.values()) {
                    pluginActionManager3.reloadPackage(encodedSchemeSpecificPart);
                }
            }
        }
    }

    @Override // n1.l
    public void removePluginListener(k kVar) {
        synchronized (this) {
            if (this.mPluginMap.containsKey(kVar)) {
                ((PluginActionManager) this.mPluginMap.remove(kVar)).destroy();
                if (this.mPluginMap.size() == 0) {
                    stopListening();
                }
            }
        }
    }

    public void addPluginListener(k kVar, Class cls) {
        addPluginListener(kVar, cls, false);
    }

    public void addPluginListener(String str, k kVar, Class cls) {
        addPluginListener(str, kVar, cls, false);
    }

    public void addPluginListener(String str, k kVar, Class cls, boolean z4) {
        this.mPluginPrefs.addAction(str);
        PluginActionManager create = this.mActionManagerFactory.create(str, kVar, cls, z4, isDebuggable());
        create.loadAll();
        synchronized (this) {
            this.mPluginMap.put(kVar, create);
        }
        startListening();
    }
}
