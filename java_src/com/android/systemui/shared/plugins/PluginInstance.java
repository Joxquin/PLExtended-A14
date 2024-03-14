package com.android.systemui.shared.plugins;

import android.app.ActivityThread;
import android.app.LoadedApk;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.Log;
import com.android.systemui.plugins.PluginFragment;
import com.android.systemui.shared.plugins.PluginActionManager;
import com.android.systemui.shared.plugins.PluginInstance;
import com.android.systemui.shared.plugins.PluginManagerImpl;
import com.android.systemui.shared.plugins.VersionInfo;
import dalvik.system.PathClassLoader;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Supplier;
import n1.j;
import n1.k;
/* loaded from: classes.dex */
public class PluginInstance {
    private static final String TAG = "PluginInstance";
    private final Context mAppContext;
    private final ComponentName mComponentName;
    private boolean mIsDebug = false;
    private final k mListener;
    private j mPlugin;
    private Context mPluginContext;
    private final PluginFactory mPluginFactory;
    private final String mTag;

    /* loaded from: classes.dex */
    public class Factory {
        private final ClassLoader mBaseClassLoader;
        private final InstanceFactory mInstanceFactory;
        private final boolean mIsDebug;
        private final List mPrivilegedPlugins;
        private final VersionChecker mVersionChecker;

        public Factory(ClassLoader classLoader, InstanceFactory instanceFactory, VersionChecker versionChecker, List list, boolean z4) {
            this.mPrivilegedPlugins = list;
            this.mBaseClassLoader = classLoader;
            this.mInstanceFactory = instanceFactory;
            this.mVersionChecker = versionChecker;
            this.mIsDebug = z4;
        }

        private ClassLoader getClassLoader(ApplicationInfo applicationInfo, ClassLoader classLoader) {
            if (this.mIsDebug || isPluginPackagePrivileged(applicationInfo.packageName)) {
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                LoadedApk.makePaths((ActivityThread) null, true, applicationInfo, arrayList, arrayList2);
                String str = File.pathSeparator;
                return new PathClassLoader(TextUtils.join(str, arrayList), TextUtils.join(str, arrayList2), getParentClassLoader(classLoader));
            }
            Log.w(PluginInstance.TAG, "Cannot get class loader for non-privileged plugin. Src:" + applicationInfo.sourceDir + ", pkg: " + applicationInfo.packageName);
            return null;
        }

        private ClassLoader getParentClassLoader(ClassLoader classLoader) {
            return new PluginManagerImpl.ClassLoaderFilter(classLoader, "com.android.systemui.common", "com.android.systemui.log", "com.android.systemui.plugin");
        }

        private boolean isPluginPackagePrivileged(String str) {
            for (String str2 : this.mPrivilegedPlugins) {
                ComponentName unflattenFromString = ComponentName.unflattenFromString(str2);
                if (unflattenFromString != null) {
                    if (unflattenFromString.getPackageName().equals(str)) {
                        return true;
                    }
                } else if (str2.equals(str)) {
                    return true;
                }
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ ClassLoader lambda$create$0(ApplicationInfo applicationInfo) {
            return getClassLoader(applicationInfo, this.mBaseClassLoader);
        }

        public PluginInstance create(Context context, final ApplicationInfo applicationInfo, ComponentName componentName, Class cls, k kVar) {
            return new PluginInstance(context, kVar, componentName, new PluginFactory(context, this.mInstanceFactory, applicationInfo, componentName, this.mVersionChecker, cls, new Supplier() { // from class: com.android.systemui.shared.plugins.d
                @Override // java.util.function.Supplier
                public final Object get() {
                    ClassLoader lambda$create$0;
                    lambda$create$0 = PluginInstance.Factory.this.lambda$create$0(applicationInfo);
                    return lambda$create$0;
                }
            }), null);
        }
    }

    /* loaded from: classes.dex */
    public class InstanceFactory {
        public j create(Class cls) {
            return (j) cls.newInstance();
        }
    }

    /* loaded from: classes.dex */
    public class PluginFactory {
        private final ApplicationInfo mAppInfo;
        private final Supplier mClassLoaderFactory;
        private final ComponentName mComponentName;
        private final Context mContext;
        private final InstanceFactory mInstanceFactory;
        private final Class mPluginClass;
        private final VersionChecker mVersionChecker;

        public PluginFactory(Context context, InstanceFactory instanceFactory, ApplicationInfo applicationInfo, ComponentName componentName, VersionChecker versionChecker, Class cls, Supplier supplier) {
            this.mContext = context;
            this.mInstanceFactory = instanceFactory;
            this.mAppInfo = applicationInfo;
            this.mComponentName = componentName;
            this.mVersionChecker = versionChecker;
            this.mPluginClass = cls;
            this.mClassLoaderFactory = supplier;
        }

        public VersionInfo checkVersion(j jVar) {
            if (jVar == null) {
                jVar = createPlugin();
            }
            return this.mVersionChecker.checkVersion(jVar.getClass(), this.mPluginClass, jVar);
        }

        public j createPlugin() {
            try {
                j create = this.mInstanceFactory.create(Class.forName(this.mComponentName.getClassName(), true, (ClassLoader) this.mClassLoaderFactory.get()));
                Log.v(PluginInstance.TAG, "Created plugin: " + create);
                return create;
            } catch (ClassNotFoundException e4) {
                Log.e(PluginInstance.TAG, "Failed to load plugin", e4);
                return null;
            } catch (IllegalAccessException e5) {
                Log.e(PluginInstance.TAG, "Failed to load plugin", e5);
                return null;
            } catch (InstantiationException e6) {
                Log.e(PluginInstance.TAG, "Failed to load plugin", e6);
                return null;
            }
        }

        public Context createPluginContext() {
            try {
                return new PluginActionManager.PluginContextWrapper(this.mContext.createApplicationContext(this.mAppInfo, 0), (ClassLoader) this.mClassLoaderFactory.get());
            } catch (PackageManager.NameNotFoundException e4) {
                Log.e(PluginInstance.TAG, "Failed to create plugin context", e4);
                return null;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface VersionChecker {
        VersionInfo checkVersion(Class cls, Class cls2, j jVar);
    }

    /* loaded from: classes.dex */
    public class VersionCheckerImpl implements VersionChecker {
        @Override // com.android.systemui.shared.plugins.PluginInstance.VersionChecker
        public VersionInfo checkVersion(Class cls, Class cls2, j jVar) {
            VersionInfo addClass = new VersionInfo().addClass(cls2);
            VersionInfo addClass2 = new VersionInfo().addClass(cls);
            if (addClass2.hasVersionInfo()) {
                addClass.checkVersion(addClass2);
            } else if (jVar != null) {
                if (-1 == addClass.getDefaultVersion()) {
                    return null;
                }
                throw new VersionInfo.InvalidVersionException("Invalid legacy version", false);
            }
            return addClass2;
        }
    }

    public PluginInstance(Context context, k kVar, ComponentName componentName, PluginFactory pluginFactory, j jVar) {
        this.mAppContext = context;
        this.mListener = kVar;
        this.mComponentName = componentName;
        this.mPluginFactory = pluginFactory;
        this.mPlugin = jVar;
        this.mTag = "PluginInstance[" + componentName.getShortClassName() + "]@" + Integer.toHexString(hashCode());
        if (this.mPlugin != null) {
            this.mPluginContext = pluginFactory.createPluginContext();
        }
    }

    private void logDebug(String str) {
        if (this.mIsDebug) {
            Log.i(this.mTag, str);
        }
    }

    public boolean containsPluginClass(Class cls) {
        return this.mComponentName.getClassName().equals(cls.getName());
    }

    public ComponentName getComponentName() {
        return this.mComponentName;
    }

    public boolean getIsDebug() {
        return this.mIsDebug;
    }

    public String getPackage() {
        return this.mComponentName.getPackageName();
    }

    public j getPlugin() {
        return this.mPlugin;
    }

    public Context getPluginContext() {
        return this.mPluginContext;
    }

    public VersionInfo getVersionInfo() {
        return this.mPluginFactory.checkVersion(this.mPlugin);
    }

    public boolean isLoaded() {
        return getPlugin() != null;
    }

    public void loadPlugin() {
        if (this.mPlugin != null) {
            logDebug("Load request when already loaded");
            return;
        }
        this.mPlugin = this.mPluginFactory.createPlugin();
        Context createPluginContext = this.mPluginFactory.createPluginContext();
        this.mPluginContext = createPluginContext;
        if (this.mPlugin == null || createPluginContext == null) {
            Log.e(this.mTag, "Requested load, but failed");
            return;
        }
        logDebug("Loaded plugin; running callbacks");
        this.mPluginFactory.checkVersion(this.mPlugin);
        j jVar = this.mPlugin;
        if (!(jVar instanceof PluginFragment)) {
            jVar.k(this.mPluginContext);
        }
        this.mListener.l(this.mPlugin, this.mPluginContext);
    }

    public void onCreate() {
        this.mListener.getClass();
        if (this.mPlugin == null) {
            logDebug("onCreate auto-load");
            loadPlugin();
            return;
        }
        logDebug("onCreate: load callbacks");
        this.mPluginFactory.checkVersion(this.mPlugin);
        j jVar = this.mPlugin;
        if (!(jVar instanceof PluginFragment)) {
            jVar.k(this.mPluginContext);
        }
        this.mListener.l(this.mPlugin, this.mPluginContext);
    }

    public void onDestroy() {
        logDebug("onDestroy");
        unloadPlugin();
        this.mListener.getClass();
    }

    public void setIsDebug(boolean z4) {
        this.mIsDebug = z4;
    }

    public String toString() {
        return this.mTag;
    }

    public void unloadPlugin() {
        if (this.mPlugin == null) {
            logDebug("Unload request when already unloaded");
            return;
        }
        logDebug("Unloading plugin, running callbacks");
        this.mListener.o(this.mPlugin);
        j jVar = this.mPlugin;
        if (!(jVar instanceof PluginFragment)) {
            jVar.onDestroy();
        }
        this.mPlugin = null;
        this.mPluginContext = null;
    }
}
