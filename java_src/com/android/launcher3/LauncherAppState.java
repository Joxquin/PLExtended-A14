package com.android.launcher3;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.LauncherApps;
import android.net.Uri;
import android.os.UserHandle;
import android.service.notification.NotificationListenerService;
import android.util.Log;
import android.util.SparseArray;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.graphics.IconShape;
import com.android.launcher3.icons.IconCache;
import com.android.launcher3.icons.IconProvider;
import com.android.launcher3.icons.LauncherIconProvider;
import com.android.launcher3.icons.LauncherIcons;
import com.android.launcher3.notification.NotificationListener;
import com.android.launcher3.pm.InstallSessionHelper;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LockedUserState;
import com.android.launcher3.util.LooperExecutor;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.RunnableList;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.util.SettingsCache;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import com.android.launcher3.util.Themes;
import com.android.launcher3.widget.custom.CustomWidgetManager;
import java.util.Objects;
import java.util.function.BiConsumer;
/* loaded from: classes.dex */
public final class LauncherAppState implements SafeCloseable {
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new C0330b0());
    public final SparseArray mCachedRemoteViews;
    private final Context mContext;
    private final IconCache mIconCache;
    private final LauncherIconProvider mIconProvider;
    private final InvariantDeviceProfile mInvariantDeviceProfile;
    private final LauncherModel mModel;
    private final RunnableList mOnTerminateCallback;

    /* loaded from: classes.dex */
    public final class IconObserver implements IconProvider.IconChangeListener, SharedPreferences.OnSharedPreferenceChangeListener {
        public IconObserver() {
            LauncherAppState.this = r1;
        }

        @Override // com.android.launcher3.icons.IconProvider.IconChangeListener
        public final void onAppIconChanged(String str, UserHandle userHandle) {
            LauncherAppState.this.mModel.onAppIconChanged(str, userHandle);
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            if ("themed_icons".equals(str)) {
                LauncherAppState.this.mIconProvider.setIconThemeSupported(Themes.isThemedIconEnabled(LauncherAppState.this.mContext));
                verifyIconChanged();
            }
        }

        @Override // com.android.launcher3.icons.IconProvider.IconChangeListener
        public final void onSystemIconStateChanged(String str) {
            IconShape.init(LauncherAppState.this.mContext);
            LauncherAppState.l(LauncherAppState.this);
            Context context = LauncherAppState.this.mContext;
            LauncherPrefs.Companion companion = LauncherPrefs.Companion;
            LauncherPrefs.Companion.get(context).put(LauncherPrefs.ICON_STATE, str);
        }

        public final void verifyIconChanged() {
            String systemIconState = LauncherAppState.this.mIconProvider.getSystemIconState();
            if (systemIconState.equals(LauncherPrefs.get(LauncherAppState.this.mContext).get(LauncherPrefs.ICON_STATE))) {
                return;
            }
            onSystemIconStateChanged(systemIconState);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.android.launcher3.e0] */
    public LauncherAppState(Context context) {
        this(context, "app_icons.db");
        Log.v("Launcher", "LauncherAppState initiated");
        this.mInvariantDeviceProfile.addOnChangeListener(new InvariantDeviceProfile.OnIDPChangeListener() { // from class: com.android.launcher3.c0
            @Override // com.android.launcher3.InvariantDeviceProfile.OnIDPChangeListener
            public final void onIdpChanged(boolean z4) {
                LauncherAppState.h(LauncherAppState.this, z4);
            }
        });
        ((LauncherApps) this.mContext.getSystemService(LauncherApps.class)).registerCallback(this.mModel);
        this.mOnTerminateCallback.add(new RunnableC0342h0(1, this));
        LauncherModel launcherModel = this.mModel;
        Objects.requireNonNull(launcherModel);
        SimpleBroadcastReceiver simpleBroadcastReceiver = new SimpleBroadcastReceiver(new C0334d0(launcherModel, 0));
        simpleBroadcastReceiver.register(this.mContext, "android.intent.action.LOCALE_CHANGED", "android.app.action.DEVICE_POLICY_RESOURCE_UPDATED");
        this.mOnTerminateCallback.add(new RunnableC0344i0(this, simpleBroadcastReceiver, 1));
        final LauncherModel launcherModel2 = this.mModel;
        Objects.requireNonNull(launcherModel2);
        this.mOnTerminateCallback.add(new RunnableC0338f0(((UserCache) UserCache.INSTANCE.get(this.mContext)).addUserEventListener(new BiConsumer() { // from class: com.android.launcher3.e0
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                LauncherModel.this.onUserEvent((String) obj2, (UserHandle) obj);
            }
        }), 0));
        MainThreadInitializedObject mainThreadInitializedObject = LockedUserState.INSTANCE;
        LockedUserState.Companion.get(context).runOnUserUnlocked(new RunnableC0344i0(this, context, 2));
        SettingsCache settingsCache = (SettingsCache) SettingsCache.INSTANCE.get(this.mContext);
        SettingsCache.OnChangeListener onChangeListener = new SettingsCache.OnChangeListener() { // from class: com.android.launcher3.g0
            @Override // com.android.launcher3.util.SettingsCache.OnChangeListener
            public final void onSettingsChanged(boolean z4) {
                LauncherAppState.e(LauncherAppState.this, z4);
            }
        };
        Uri uri = SettingsCache.NOTIFICATION_BADGING_URI;
        settingsCache.register(uri, onChangeListener);
        if (settingsCache.getValue(1, uri)) {
            NotificationListenerService.requestRebind(new ComponentName(this.mContext, NotificationListener.class));
        }
        this.mOnTerminateCallback.add(new RunnableC0344i0(settingsCache, onChangeListener, 3));
    }

    public static void a(LauncherAppState launcherAppState, Context context) {
        CustomWidgetManager customWidgetManager = (CustomWidgetManager) CustomWidgetManager.INSTANCE.get(launcherAppState.mContext);
        LauncherModel launcherModel = launcherAppState.mModel;
        Objects.requireNonNull(launcherModel);
        customWidgetManager.setWidgetRefreshCallback(new C0334d0(launcherModel, 1));
        launcherAppState.mOnTerminateCallback.add(new RunnableC0342h0(2, customWidgetManager));
        IconObserver iconObserver = new IconObserver();
        LauncherIconProvider launcherIconProvider = launcherAppState.mIconProvider;
        LooperExecutor looperExecutor = Executors.MODEL_EXECUTOR;
        launcherAppState.mOnTerminateCallback.add(new RunnableC0338f0(launcherIconProvider.registerIconChangeListener(iconObserver, looperExecutor.getHandler()), 1));
        looperExecutor.execute(new RunnableC0342h0(0, iconObserver));
        LauncherPrefs.Companion companion = LauncherPrefs.Companion;
        LauncherPrefs.Companion.get(context).addListener(iconObserver, LauncherPrefs.THEMED_ICONS);
        launcherAppState.mOnTerminateCallback.add(new RunnableC0344i0(launcherAppState, iconObserver, 0));
        launcherAppState.mOnTerminateCallback.add(new RunnableC0342h0(3, ((InstallSessionHelper) InstallSessionHelper.INSTANCE.get(context)).registerInstallTracker(launcherAppState.mModel)));
    }

    public static void e(LauncherAppState launcherAppState, boolean z4) {
        launcherAppState.getClass();
        if (z4) {
            NotificationListenerService.requestRebind(new ComponentName(launcherAppState.mContext, NotificationListener.class));
        }
    }

    public static InvariantDeviceProfile getIDP(Context context) {
        return (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(context);
    }

    public static LauncherAppState getInstance(Context context) {
        return (LauncherAppState) INSTANCE.get(context);
    }

    public static void h(LauncherAppState launcherAppState, boolean z4) {
        if (!z4) {
            launcherAppState.getClass();
            return;
        }
        launcherAppState.getClass();
        LauncherIcons.clearPool();
        IconCache iconCache = launcherAppState.mIconCache;
        InvariantDeviceProfile invariantDeviceProfile = launcherAppState.mInvariantDeviceProfile;
        iconCache.updateIconParams(invariantDeviceProfile.fillResIconDpi, invariantDeviceProfile.iconBitmapSize);
        launcherAppState.mModel.forceReload();
    }

    public static void l(LauncherAppState launcherAppState) {
        launcherAppState.getClass();
        LauncherIcons.clearPool();
        IconCache iconCache = launcherAppState.mIconCache;
        InvariantDeviceProfile invariantDeviceProfile = launcherAppState.mInvariantDeviceProfile;
        iconCache.updateIconParams(invariantDeviceProfile.fillResIconDpi, invariantDeviceProfile.iconBitmapSize);
        launcherAppState.mModel.forceReload();
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.mOnTerminateCallback.executeAllAndDestroy();
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final IconCache getIconCache() {
        return this.mIconCache;
    }

    public final LauncherIconProvider getIconProvider() {
        return this.mIconProvider;
    }

    public final InvariantDeviceProfile getInvariantDeviceProfile() {
        return this.mInvariantDeviceProfile;
    }

    public final LauncherModel getModel() {
        return this.mModel;
    }

    public LauncherAppState(Context context, String str) {
        RunnableList runnableList = new RunnableList();
        this.mOnTerminateCallback = runnableList;
        this.mCachedRemoteViews = new SparseArray();
        this.mContext = context;
        InvariantDeviceProfile invariantDeviceProfile = (InvariantDeviceProfile) InvariantDeviceProfile.INSTANCE.get(context);
        this.mInvariantDeviceProfile = invariantDeviceProfile;
        LauncherIconProvider launcherIconProvider = new LauncherIconProvider(context);
        this.mIconProvider = launcherIconProvider;
        IconCache iconCache = new IconCache(context, invariantDeviceProfile, str, launcherIconProvider);
        this.mIconCache = iconCache;
        LauncherModel launcherModel = new LauncherModel(context, this, iconCache, new AppFilter(context), str != null);
        this.mModel = launcherModel;
        runnableList.add(new RunnableC0342h0(4, iconCache));
        runnableList.add(new RunnableC0342h0(5, launcherModel));
    }
}
