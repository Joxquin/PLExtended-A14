package com.android.launcher3.taskbar;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemProperties;
import android.os.Trace;
import android.provider.Settings;
import android.util.Log;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.InvariantDeviceProfile;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.AnimatorPlaybackController;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.taskbar.unfold.NonDestroyableScopedUnfoldTransitionProgressProvider;
import com.android.launcher3.uioverrides.QuickstepLauncher;
import com.android.launcher3.util.ActivityLifecycleCallbacksAdapter;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.SettingsCache;
import com.android.launcher3.util.SimpleBroadcastReceiver;
import com.android.quickstep.RecentsActivity;
import com.android.quickstep.SystemUiProxy;
import com.android.quickstep.TouchInteractionService;
import com.android.quickstep.util.AssistUtils;
import com.android.systemui.unfold.progress.RemoteUnfoldTransitionReceiver;
import java.io.PrintWriter;
import java.util.StringJoiner;
import java.util.function.Consumer;
import t1.InterfaceC1405d;
/* loaded from: classes.dex */
public final class TaskbarManager {
    private StatefulActivity mActivity;
    private final ComponentCallbacks mComponentCallbacks;
    private final Context mContext;
    private final C0450q0 mDebugActivityDeviceProfileChanged;
    private final C0444n0 mIdpChangeListener;
    private final ActivityLifecycleCallbacksAdapter mLifecycleCallbacks;
    private final TaskbarNavButtonController mNavButtonController;
    private final C0446o0 mOnSettingsChangeListener;
    private final TaskbarSharedState mSharedState;
    private final SimpleBroadcastReceiver mShutdownReceiver;
    private TaskbarActivityContext mTaskbarActivityContext;
    private final SimpleBroadcastReceiver mTaskbarBroadcastReceiver;
    private final SharedPreferences$OnSharedPreferenceChangeListenerC0448p0 mTaskbarPinningPreferenceChangeListener;
    private final NonDestroyableScopedUnfoldTransitionProgressProvider mUnfoldProgressProvider;
    InterfaceC1405d mUnfoldTransitionProgressListener;
    private boolean mUserUnlocked;
    public static final boolean FLAG_HIDE_NAVBAR_WINDOW = SystemProperties.getBoolean("persist.wm.debug.hide_navbar_window", false);
    private static final Uri USER_SETUP_COMPLETE_URI = Settings.Secure.getUriFor("user_setup_complete");
    private static final Uri NAV_BAR_KIDS_MODE = Settings.Secure.getUriFor("nav_bar_kids_mode");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.android.launcher3.taskbar.TaskbarManager$2 */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 implements InterfaceC1405d {
        @Override // t1.InterfaceC1405d
        public final void onTransitionFinished() {
            Log.d("b/254119092", "fold/unfold transition finished getting called.");
        }

        @Override // t1.InterfaceC1405d
        public final void onTransitionFinishing() {
            Log.d("b/254119092", "fold/unfold transition finishing getting called.");
        }

        @Override // t1.InterfaceC1405d
        public final void onTransitionProgress(float f4) {
            Log.d("b/254119092", "fold/unfold transition progress : " + f4);
        }

        @Override // t1.InterfaceC1405d
        public final void onTransitionStarted() {
            Log.d("b/254119092", "fold/unfold transition started getting called.");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.android.launcher3.taskbar.n0] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.android.launcher3.util.SettingsCache$OnChangeListener, com.android.launcher3.taskbar.o0] */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.android.launcher3.taskbar.p0] */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.android.launcher3.taskbar.q0] */
    public TaskbarManager(TouchInteractionService touchInteractionService) {
        SimpleBroadcastReceiver simpleBroadcastReceiver = new SimpleBroadcastReceiver(new Consumer(this) { // from class: com.android.launcher3.taskbar.m0

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ TaskbarManager f5146b;

            {
                this.f5146b = this;
            }

            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r2) {
                    case 0:
                        Intent intent = (Intent) obj;
                        this.f5146b.destroyExistingTaskbar();
                        return;
                    default:
                        TaskbarManager.c(this.f5146b, (Intent) obj);
                        return;
                }
            }
        });
        this.mShutdownReceiver = simpleBroadcastReceiver;
        this.mUnfoldProgressProvider = new NonDestroyableScopedUnfoldTransitionProgressProvider();
        this.mSharedState = new TaskbarSharedState();
        this.mIdpChangeListener = new InvariantDeviceProfile.OnIDPChangeListener() { // from class: com.android.launcher3.taskbar.n0
            @Override // com.android.launcher3.InvariantDeviceProfile.OnIDPChangeListener
            public final void onIdpChanged(boolean z4) {
                TaskbarManager.this.recreateTaskbar();
            }
        };
        ?? r12 = new SettingsCache.OnChangeListener() { // from class: com.android.launcher3.taskbar.o0
            @Override // com.android.launcher3.util.SettingsCache.OnChangeListener
            public final void onSettingsChanged(boolean z4) {
                TaskbarManager.this.recreateTaskbar();
            }
        };
        this.mOnSettingsChangeListener = r12;
        this.mUserUnlocked = false;
        this.mTaskbarBroadcastReceiver = new SimpleBroadcastReceiver(new Consumer(this) { // from class: com.android.launcher3.taskbar.m0

            /* renamed from: b  reason: collision with root package name */
            public final /* synthetic */ TaskbarManager f5146b;

            {
                this.f5146b = this;
            }

            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                switch (r2) {
                    case 0:
                        Intent intent = (Intent) obj;
                        this.f5146b.destroyExistingTaskbar();
                        return;
                    default:
                        TaskbarManager.c(this.f5146b, (Intent) obj);
                        return;
                }
            }
        });
        this.mTaskbarPinningPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() { // from class: com.android.launcher3.taskbar.p0
            @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
            public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
                TaskbarManager taskbarManager = TaskbarManager.this;
                taskbarManager.getClass();
                if ("TASKBAR_PINNING_KEY".equals(str)) {
                    taskbarManager.recreateTaskbar();
                }
            }
        };
        this.mLifecycleCallbacks = new ActivityLifecycleCallbacksAdapter() { // from class: com.android.launcher3.taskbar.TaskbarManager.1
            {
                TaskbarManager.this = this;
            }

            @Override // com.android.launcher3.util.ActivityLifecycleCallbacksAdapter, android.app.Application.ActivityLifecycleCallbacks
            public final void onActivityDestroyed(Activity activity) {
                if (TaskbarManager.this.mActivity != activity) {
                    return;
                }
                if (TaskbarManager.this.mActivity != null) {
                    TaskbarManager.this.mActivity.removeOnDeviceProfileChangeListener(TaskbarManager.this.mDebugActivityDeviceProfileChanged);
                    Log.d("b/254119092", "unregistering activity lifecycle callbacks from onActivityDestroyed.");
                    TaskbarManager.this.mActivity.unregisterActivityLifecycleCallbacks(this);
                }
                TaskbarManager.this.mActivity = null;
                TaskbarManager.this.debugWhyTaskbarNotDestroyed("clearActivity");
                if (TaskbarManager.this.mTaskbarActivityContext != null) {
                    TaskbarManager.this.mTaskbarActivityContext.setUIController(TaskbarUIController.DEFAULT);
                }
                TaskbarManager.this.mUnfoldProgressProvider.setSourceProvider(null);
            }
        };
        this.mUnfoldTransitionProgressListener = new AnonymousClass2();
        this.mDebugActivityDeviceProfileChanged = new DeviceProfile.OnDeviceProfileChangeListener() { // from class: com.android.launcher3.taskbar.q0
            @Override // com.android.launcher3.DeviceProfile.OnDeviceProfileChangeListener
            public final void onDeviceProfileChanged(DeviceProfile deviceProfile) {
                TaskbarManager.this.debugWhyTaskbarNotDestroyed("mActivity onDeviceProfileChanged");
            }
        };
        Context createWindowContext = touchInteractionService.createWindowContext(((DisplayManager) touchInteractionService.getSystemService(DisplayManager.class)).getDisplay(0), 2024, null);
        this.mContext = createWindowContext;
        this.mNavButtonController = new TaskbarNavButtonController(touchInteractionService, (SystemUiProxy) SystemUiProxy.INSTANCE.get(createWindowContext), new Handler(), AssistUtils.newInstance(createWindowContext));
        ComponentCallbacks componentCallbacks = new ComponentCallbacks() { // from class: com.android.launcher3.taskbar.TaskbarManager.3
            private Configuration mOldConfig;

            {
                TaskbarManager.this = this;
                this.mOldConfig = this.mContext.getResources().getConfiguration();
            }

            @Override // android.content.ComponentCallbacks
            public final void onConfigurationChanged(Configuration configuration) {
                Trace.instantForTrack(4096L, "TaskbarManager", "onConfigurationChanged: " + configuration);
                TaskbarManager taskbarManager = TaskbarManager.this;
                taskbarManager.debugWhyTaskbarNotDestroyed("TaskbarManager#mComponentCallbacks.onConfigurationChanged: " + configuration);
                DeviceProfile deviceProfile = TaskbarManager.this.mUserUnlocked ? LauncherAppState.getIDP(TaskbarManager.this.mContext).getDeviceProfile(TaskbarManager.this.mContext) : null;
                int diff = this.mOldConfig.diff(configuration) & (-536874484);
                if ((diff & 512) != 0 && (this.mOldConfig.uiMode & 48) == (configuration.uiMode & 48)) {
                    diff &= -513;
                }
                TaskbarManager taskbarManager2 = TaskbarManager.this;
                taskbarManager2.debugWhyTaskbarNotDestroyed("ComponentCallbacks#onConfigurationChanged() configDiff=" + Configuration.configurationDiffToString(diff));
                if (diff != 0 || TaskbarManager.this.mTaskbarActivityContext == null) {
                    TaskbarManager.this.recreateTaskbar();
                } else if (deviceProfile == null || TaskbarManager.m(TaskbarManager.this, deviceProfile)) {
                    if (deviceProfile != null && TaskbarManager.m(TaskbarManager.this, deviceProfile)) {
                        if (TaskbarManager.FLAG_HIDE_NAVBAR_WINDOW) {
                            TaskbarManager.this.recreateTaskbar();
                        } else {
                            TaskbarManager.this.mTaskbarActivityContext.updateDeviceProfile(deviceProfile);
                        }
                    }
                    TaskbarManager.this.mTaskbarActivityContext.onConfigurationChanged(diff);
                } else {
                    TaskbarManager.this.destroyExistingTaskbar();
                }
                this.mOldConfig = new Configuration(configuration);
            }

            @Override // android.content.ComponentCallbacks
            public final void onLowMemory() {
            }
        };
        this.mComponentCallbacks = componentCallbacks;
        ((SettingsCache) SettingsCache.INSTANCE.get(createWindowContext)).register(USER_SETUP_COMPLETE_URI, r12);
        ((SettingsCache) SettingsCache.INSTANCE.get(createWindowContext)).register(NAV_BAR_KIDS_MODE, r12);
        Log.d("b/254119092", "registering component callbacks from constructor.");
        createWindowContext.registerComponentCallbacks(componentCallbacks);
        simpleBroadcastReceiver.register(createWindowContext, "android.intent.action.ACTION_SHUTDOWN");
        Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0440l0(this, 1));
        debugWhyTaskbarNotDestroyed("TaskbarManager created");
        recreateTaskbar();
    }

    public static void b(TaskbarManager taskbarManager) {
        Context context = taskbarManager.mContext;
        SimpleBroadcastReceiver simpleBroadcastReceiver = taskbarManager.mTaskbarBroadcastReceiver;
        simpleBroadcastReceiver.getClass();
        try {
            context.unregisterReceiver(simpleBroadcastReceiver);
        } catch (IllegalArgumentException unused) {
        }
    }

    public static void c(TaskbarManager taskbarManager, Intent intent) {
        TaskbarActivityContext taskbarActivityContext;
        taskbarManager.getClass();
        if (!"ACTION_SHOW_TASKBAR".equals(intent.getAction()) || (taskbarActivityContext = taskbarManager.mTaskbarActivityContext) == null) {
            return;
        }
        taskbarActivityContext.showTaskbarFromBroadcast();
    }

    private TaskbarUIController createTaskbarUIControllerForActivity(StatefulActivity statefulActivity) {
        return statefulActivity instanceof QuickstepLauncher ? this.mTaskbarActivityContext.getPackageManager().hasSystemFeature("android.hardware.type.pc") ? new DesktopTaskbarUIController((QuickstepLauncher) statefulActivity) : new LauncherTaskbarUIController((QuickstepLauncher) statefulActivity) : statefulActivity instanceof RecentsActivity ? new FallbackTaskbarUIController((RecentsActivity) statefulActivity) : TaskbarUIController.DEFAULT;
    }

    public static /* synthetic */ void d(TaskbarManager taskbarManager) {
        taskbarManager.getClass();
        Intent intent = new Intent("ACTION_SHOW_TASKBAR");
        Context context = taskbarManager.mContext;
        taskbarManager.mSharedState.taskbarSystemActionPendingIntent = PendingIntent.getBroadcast(context, 499, intent.setPackage(context.getPackageName()), 201326592);
        context.registerReceiver(taskbarManager.mTaskbarBroadcastReceiver, new IntentFilter("ACTION_SHOW_TASKBAR"), 4);
    }

    public void destroyExistingTaskbar() {
        debugWhyTaskbarNotDestroyed("destroyExistingTaskbar: " + this.mTaskbarActivityContext);
        if (this.mTaskbarActivityContext != null) {
            LauncherPrefs.Companion companion = LauncherPrefs.Companion;
            LauncherPrefs.Companion.get(this.mContext).removeListener(this.mTaskbarPinningPreferenceChangeListener, LauncherPrefs.TASKBAR_PINNING);
            this.mTaskbarActivityContext.onDestroy();
            if (FLAG_HIDE_NAVBAR_WINDOW) {
                return;
            }
            this.mTaskbarActivityContext = null;
        }
    }

    public static boolean isPhoneButtonNavMode(TaskbarActivityContext taskbarActivityContext) {
        return isPhoneMode(taskbarActivityContext.getDeviceProfile()) && taskbarActivityContext.isThreeButtonNav();
    }

    public static boolean isPhoneMode(DeviceProfile deviceProfile) {
        return FLAG_HIDE_NAVBAR_WINDOW && deviceProfile.isPhone;
    }

    public static boolean m(TaskbarManager taskbarManager, DeviceProfile deviceProfile) {
        taskbarManager.getClass();
        return FLAG_HIDE_NAVBAR_WINDOW || deviceProfile.isTaskbarPresent;
    }

    private void removeActivityCallbacksAndListeners() {
        StatefulActivity statefulActivity = this.mActivity;
        if (statefulActivity != null) {
            statefulActivity.removeOnDeviceProfileChangeListener(this.mDebugActivityDeviceProfileChanged);
            Log.d("b/254119092", "unregistering activity lifecycle callbacks from removeActivityCallbackAndListeners().");
            this.mActivity.unregisterActivityLifecycleCallbacks(this.mLifecycleCallbacks);
            StatefulActivity statefulActivity2 = this.mActivity;
            RemoteUnfoldTransitionReceiver unfoldTransitionProgressProvider = statefulActivity2 instanceof QuickstepLauncher ? ((QuickstepLauncher) statefulActivity2).getUnfoldTransitionProgressProvider() : null;
            if (unfoldTransitionProgressProvider != null) {
                unfoldTransitionProgressProvider.removeCallback(this.mUnfoldTransitionProgressListener);
            }
        }
    }

    public final AnimatorPlaybackController createLauncherStartFromSuwAnim() {
        TaskbarActivityContext taskbarActivityContext = this.mTaskbarActivityContext;
        if (taskbarActivityContext == null) {
            return null;
        }
        return taskbarActivityContext.createLauncherStartFromSuwAnim();
    }

    public final void debugWhyTaskbarNotDestroyed(String str) {
        StringJoiner stringJoiner = new StringJoiner("\n");
        stringJoiner.add(str);
        StatefulActivity statefulActivity = this.mActivity;
        boolean z4 = true;
        boolean z5 = statefulActivity != null && statefulActivity.getDeviceProfile().isTaskbarPresent;
        boolean z6 = this.mUserUnlocked;
        Context context = this.mContext;
        if (!z6 || !LauncherAppState.getIDP(context).getDeviceProfile(context).isTaskbarPresent) {
            z4 = false;
        }
        if (z5 == z4) {
            stringJoiner.add("mActivity and mContext agree taskbarIsPresent=" + z4);
            Log.d("b/254119092", stringJoiner.toString());
            return;
        }
        stringJoiner.add("mActivity and mContext device profiles have different values, add more logs.");
        stringJoiner.add("\tmActivity logs:");
        stringJoiner.add("\t\tmActivity=" + this.mActivity);
        if (this.mActivity != null) {
            stringJoiner.add("\t\tmActivity.getResources().getConfiguration()=" + this.mActivity.getResources().getConfiguration());
            stringJoiner.add("\t\tmActivity.getDeviceProfile().isTaskbarPresent=" + z5);
        }
        stringJoiner.add("\tmContext logs:");
        stringJoiner.add("\t\tmContext=" + context);
        stringJoiner.add("\t\tmContext.getResources().getConfiguration()=" + context.getResources().getConfiguration());
        if (this.mUserUnlocked) {
            stringJoiner.add("\t\tLauncherAppState.getIDP().getDeviceProfile(mContext).isTaskbarPresent=" + z4);
        } else {
            stringJoiner.add("\t\tCouldn't get DeviceProfile because !mUserUnlocked");
        }
        Log.d("b/254119092", stringJoiner.toString());
    }

    public final void destroy() {
        debugWhyTaskbarNotDestroyed("TaskbarManager#destroy()");
        removeActivityCallbacksAndListeners();
        Executors.UI_HELPER_EXECUTOR.execute(new RunnableC0440l0(this, 0));
        destroyExistingTaskbar();
        boolean z4 = this.mUserUnlocked;
        Context context = this.mContext;
        if (z4) {
            LauncherAppState.getIDP(context).removeOnChangeListener(this.mIdpChangeListener);
        }
        Uri uri = USER_SETUP_COMPLETE_URI;
        C0446o0 c0446o0 = this.mOnSettingsChangeListener;
        ((SettingsCache) SettingsCache.INSTANCE.get(context)).unregister(uri, c0446o0);
        ((SettingsCache) SettingsCache.INSTANCE.get(context)).unregister(NAV_BAR_KIDS_MODE, c0446o0);
        Log.d("b/254119092", "unregistering component callbacks from destroy().");
        context.unregisterComponentCallbacks(this.mComponentCallbacks);
        context.unregisterReceiver(this.mShutdownReceiver);
    }

    public final void disableNavBarElements(int i4, int i5, int i6, boolean z4) {
        TaskbarSharedState taskbarSharedState = this.mSharedState;
        taskbarSharedState.disableNavBarDisplayId = i4;
        taskbarSharedState.disableNavBarState1 = i5;
        taskbarSharedState.disableNavBarState2 = i6;
        TaskbarActivityContext taskbarActivityContext = this.mTaskbarActivityContext;
        if (taskbarActivityContext != null) {
            taskbarActivityContext.disableNavBarElements(i4, i6);
        }
    }

    public final void dumpLogs(PrintWriter printWriter) {
        printWriter.println("TaskbarManager:");
        TaskbarActivityContext taskbarActivityContext = this.mTaskbarActivityContext;
        if (taskbarActivityContext == null) {
            printWriter.println("\tTaskbarActivityContext: null");
        } else {
            taskbarActivityContext.dumpLogs("\t", printWriter);
        }
    }

    public final TaskbarActivityContext getCurrentActivityContext() {
        return this.mTaskbarActivityContext;
    }

    public final void onLongPressHomeEnabled(boolean z4) {
        TaskbarNavButtonController taskbarNavButtonController = this.mNavButtonController;
        if (taskbarNavButtonController != null) {
            taskbarNavButtonController.setAssistantLongPressEnabled(z4);
        }
    }

    public final void onNavButtonsDarkIntensityChanged(float f4) {
        this.mSharedState.navButtonsDarkIntensity = f4;
        TaskbarActivityContext taskbarActivityContext = this.mTaskbarActivityContext;
        if (taskbarActivityContext != null) {
            taskbarActivityContext.onNavButtonsDarkIntensityChanged(f4);
        }
    }

    public final void onRotationProposal(int i4, boolean z4) {
        TaskbarActivityContext taskbarActivityContext = this.mTaskbarActivityContext;
        if (taskbarActivityContext != null) {
            taskbarActivityContext.onRotationProposal(i4, z4);
        }
    }

    public final void onSystemBarAttributesChanged(int i4, int i5) {
        TaskbarSharedState taskbarSharedState = this.mSharedState;
        taskbarSharedState.systemBarAttrsDisplayId = i4;
        taskbarSharedState.systemBarAttrsBehavior = i5;
        TaskbarActivityContext taskbarActivityContext = this.mTaskbarActivityContext;
        if (taskbarActivityContext != null) {
            taskbarActivityContext.onSystemBarAttributesChanged(i4, i5);
        }
    }

    public final void onSystemUiFlagsChanged(int i4) {
        this.mSharedState.sysuiStateFlags = i4;
        TaskbarActivityContext taskbarActivityContext = this.mTaskbarActivityContext;
        if (taskbarActivityContext != null) {
            taskbarActivityContext.updateSysuiStateFlags(i4, false);
        }
    }

    public final void onUserUnlocked() {
        this.mUserUnlocked = true;
        LauncherAppState.getIDP(this.mContext).addOnChangeListener(this.mIdpChangeListener);
        recreateTaskbar();
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0056 A[Catch: all -> 0x00b3, TryCatch #0 {all -> 0x00b3, blocks: (B:50:0x0007, B:53:0x000d, B:55:0x0017, B:59:0x0022, B:67:0x002f, B:71:0x0041, B:75:0x005c, B:77:0x0068, B:80:0x0077, B:82:0x007b, B:84:0x008a, B:86:0x0095, B:87:0x009e, B:83:0x0087, B:74:0x0056), top: B:93:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0068 A[Catch: all -> 0x00b3, TRY_LEAVE, TryCatch #0 {all -> 0x00b3, blocks: (B:50:0x0007, B:53:0x000d, B:55:0x0017, B:59:0x0022, B:67:0x002f, B:71:0x0041, B:75:0x005c, B:77:0x0068, B:80:0x0077, B:82:0x007b, B:84:0x008a, B:86:0x0095, B:87:0x009e, B:83:0x0087, B:74:0x0056), top: B:93:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0077 A[Catch: all -> 0x00b3, TRY_ENTER, TryCatch #0 {all -> 0x00b3, blocks: (B:50:0x0007, B:53:0x000d, B:55:0x0017, B:59:0x0022, B:67:0x002f, B:71:0x0041, B:75:0x005c, B:77:0x0068, B:80:0x0077, B:82:0x007b, B:84:0x008a, B:86:0x0095, B:87:0x009e, B:83:0x0087, B:74:0x0056), top: B:93:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void recreateTaskbar() {
        /*
            r8 = this;
            java.lang.String r0 = "recreateTaskbar: isTaskbarEnabled="
            java.lang.String r1 = "recreateTaskbar"
            android.os.Trace.beginSection(r1)
            boolean r1 = r8.mUserUnlocked     // Catch: java.lang.Throwable -> Lb3
            android.content.Context r2 = r8.mContext
            if (r1 == 0) goto L16
            com.android.launcher3.InvariantDeviceProfile r1 = com.android.launcher3.LauncherAppState.getIDP(r2)     // Catch: java.lang.Throwable -> Lb3
            com.android.launcher3.DeviceProfile r1 = r1.getDeviceProfile(r2)     // Catch: java.lang.Throwable -> Lb3
            goto L17
        L16:
            r1 = 0
        L17:
            r8.destroyExistingTaskbar()     // Catch: java.lang.Throwable -> Lb3
            boolean r3 = com.android.launcher3.taskbar.TaskbarManager.FLAG_HIDE_NAVBAR_WINDOW
            r4 = 0
            r5 = 1
            if (r1 == 0) goto L2e
            if (r3 != 0) goto L29
            boolean r6 = r1.isTaskbarPresent     // Catch: java.lang.Throwable -> Lb3
            if (r6 == 0) goto L27
            goto L29
        L27:
            r6 = r4
            goto L2a
        L29:
            r6 = r5
        L2a:
            if (r6 == 0) goto L2e
            r6 = r5
            goto L2f
        L2e:
            r6 = r4
        L2f:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lb3
            r7.<init>(r0)     // Catch: java.lang.Throwable -> Lb3
            r7.append(r6)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r0 = " [dp != null (i.e. mUserUnlocked)]="
            r7.append(r0)     // Catch: java.lang.Throwable -> Lb3
            if (r1 == 0) goto L40
            r0 = r5
            goto L41
        L40:
            r0 = r4
        L41:
            r7.append(r0)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r0 = " FLAG_HIDE_NAVBAR_WINDOW="
            r7.append(r0)     // Catch: java.lang.Throwable -> Lb3
            r7.append(r3)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r0 = " dp.isTaskbarPresent="
            r7.append(r0)     // Catch: java.lang.Throwable -> Lb3
            if (r1 != 0) goto L56
            java.lang.String r0 = "null"
            goto L5c
        L56:
            boolean r0 = r1.isTaskbarPresent     // Catch: java.lang.Throwable -> Lb3
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Throwable -> Lb3
        L5c:
            r7.append(r0)     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r0 = r7.toString()     // Catch: java.lang.Throwable -> Lb3
            r8.debugWhyTaskbarNotDestroyed(r0)     // Catch: java.lang.Throwable -> Lb3
            if (r6 != 0) goto L77
            com.android.launcher3.util.MainThreadInitializedObject r8 = com.android.quickstep.SystemUiProxy.INSTANCE     // Catch: java.lang.Throwable -> Lb3
            java.lang.Object r8 = r8.get(r2)     // Catch: java.lang.Throwable -> Lb3
            com.android.quickstep.SystemUiProxy r8 = (com.android.quickstep.SystemUiProxy) r8     // Catch: java.lang.Throwable -> Lb3
            r8.notifyTaskbarStatus(r4, r4)     // Catch: java.lang.Throwable -> Lb3
            android.os.Trace.endSection()
            return
        L77:
            com.android.launcher3.taskbar.TaskbarActivityContext r0 = r8.mTaskbarActivityContext     // Catch: java.lang.Throwable -> Lb3
            if (r0 != 0) goto L87
            com.android.launcher3.taskbar.TaskbarActivityContext r0 = new com.android.launcher3.taskbar.TaskbarActivityContext     // Catch: java.lang.Throwable -> Lb3
            com.android.launcher3.taskbar.TaskbarNavButtonController r3 = r8.mNavButtonController     // Catch: java.lang.Throwable -> Lb3
            com.android.launcher3.taskbar.unfold.NonDestroyableScopedUnfoldTransitionProgressProvider r6 = r8.mUnfoldProgressProvider     // Catch: java.lang.Throwable -> Lb3
            r0.<init>(r2, r1, r3, r6)     // Catch: java.lang.Throwable -> Lb3
            r8.mTaskbarActivityContext = r0     // Catch: java.lang.Throwable -> Lb3
            goto L8a
        L87:
            r0.updateDeviceProfile(r1)     // Catch: java.lang.Throwable -> Lb3
        L8a:
            com.android.launcher3.taskbar.TaskbarActivityContext r0 = r8.mTaskbarActivityContext     // Catch: java.lang.Throwable -> Lb3
            com.android.launcher3.taskbar.TaskbarSharedState r1 = r8.mSharedState     // Catch: java.lang.Throwable -> Lb3
            r0.init(r1)     // Catch: java.lang.Throwable -> Lb3
            com.android.launcher3.statemanager.StatefulActivity r0 = r8.mActivity     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto L9e
            com.android.launcher3.taskbar.TaskbarActivityContext r1 = r8.mTaskbarActivityContext     // Catch: java.lang.Throwable -> Lb3
            com.android.launcher3.taskbar.TaskbarUIController r0 = r8.createTaskbarUIControllerForActivity(r0)     // Catch: java.lang.Throwable -> Lb3
            r1.setUIController(r0)     // Catch: java.lang.Throwable -> Lb3
        L9e:
            com.android.launcher3.LauncherPrefs$Companion r0 = com.android.launcher3.LauncherPrefs.Companion     // Catch: java.lang.Throwable -> Lb3
            com.android.launcher3.LauncherPrefs r0 = com.android.launcher3.LauncherPrefs.Companion.get(r2)     // Catch: java.lang.Throwable -> Lb3
            com.android.launcher3.taskbar.p0 r8 = r8.mTaskbarPinningPreferenceChangeListener     // Catch: java.lang.Throwable -> Lb3
            com.android.launcher3.Item[] r1 = new com.android.launcher3.Item[r5]     // Catch: java.lang.Throwable -> Lb3
            com.android.launcher3.ConstantItem r2 = com.android.launcher3.LauncherPrefs.TASKBAR_PINNING     // Catch: java.lang.Throwable -> Lb3
            r1[r4] = r2     // Catch: java.lang.Throwable -> Lb3
            r0.addListener(r8, r1)     // Catch: java.lang.Throwable -> Lb3
            android.os.Trace.endSection()
            return
        Lb3:
            r8 = move-exception
            android.os.Trace.endSection()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.taskbar.TaskbarManager.recreateTaskbar():void");
    }

    public final void setActivity(StatefulActivity statefulActivity) {
        if (this.mActivity == statefulActivity) {
            return;
        }
        removeActivityCallbacksAndListeners();
        this.mActivity = statefulActivity;
        debugWhyTaskbarNotDestroyed("Set mActivity=" + this.mActivity);
        this.mActivity.addOnDeviceProfileChangeListener(this.mDebugActivityDeviceProfileChanged);
        Log.d("b/254119092", "registering activity lifecycle callbacks from setActivity().");
        this.mActivity.registerActivityLifecycleCallbacks(this.mLifecycleCallbacks);
        RemoteUnfoldTransitionReceiver unfoldTransitionProgressProvider = statefulActivity instanceof QuickstepLauncher ? ((QuickstepLauncher) statefulActivity).getUnfoldTransitionProgressProvider() : null;
        if (unfoldTransitionProgressProvider != null) {
            unfoldTransitionProgressProvider.addCallback((Object) this.mUnfoldTransitionProgressListener);
        }
        this.mUnfoldProgressProvider.setSourceProvider(unfoldTransitionProgressProvider);
        TaskbarActivityContext taskbarActivityContext = this.mTaskbarActivityContext;
        if (taskbarActivityContext != null) {
            taskbarActivityContext.setUIController(createTaskbarUIControllerForActivity(this.mActivity));
        }
    }

    public final void setSetupUIVisible(boolean z4) {
        this.mSharedState.setupUIVisible = z4;
        TaskbarActivityContext taskbarActivityContext = this.mTaskbarActivityContext;
        if (taskbarActivityContext != null) {
            taskbarActivityContext.setSetupUIVisible(z4);
        }
    }

    public final void toggleAllApps(Intent intent) {
        TaskbarActivityContext taskbarActivityContext = this.mTaskbarActivityContext;
        Context context = this.mContext;
        if (taskbarActivityContext == null) {
            context.startActivity(intent);
            return;
        }
        StatefulActivity statefulActivity = this.mActivity;
        if (statefulActivity == null || !statefulActivity.isResumed() || this.mActivity.isInState(LauncherState.OVERVIEW)) {
            this.mTaskbarActivityContext.toggleAllApps();
        } else {
            context.startActivity(intent);
        }
    }
}
