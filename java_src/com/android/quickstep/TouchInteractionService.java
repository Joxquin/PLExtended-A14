package com.android.quickstep;

import android.app.PendingIntent;
import android.app.RemoteAction;
import android.app.Service;
import android.content.IIntentReceiver;
import android.content.IIntentSender;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Region;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Log;
import android.view.Choreographer;
import android.view.InputEvent;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.accessibility.AccessibilityManager;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.LauncherPrefs;
import com.android.launcher3.MotionEventsUtils;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.provider.RestoreDbTask;
import com.android.launcher3.statemanager.StatefulActivity;
import com.android.launcher3.taskbar.TaskbarActivityContext;
import com.android.launcher3.taskbar.TaskbarManager;
import com.android.launcher3.testing.TestLogging;
import com.android.launcher3.testing.shared.ResourceUtils;
import com.android.launcher3.uioverrides.flags.FlagsFactory;
import com.android.launcher3.uioverrides.plugins.PluginManagerWrapper;
import com.android.launcher3.util.DisplayController;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.LockedUserState;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.launcher3.util.OnboardingPrefs;
import com.android.launcher3.util.SafeCloseable;
import com.android.launcher3.util.TraceHelper;
import com.android.quickstep.AbsSwipeUpHandler;
import com.android.quickstep.GestureState;
import com.android.quickstep.TopTaskTracker;
import com.android.quickstep.TouchInteractionService;
import com.android.quickstep.inputconsumers.AccessibilityInputConsumer;
import com.android.quickstep.inputconsumers.AssistantInputConsumer;
import com.android.quickstep.inputconsumers.DeviceLockedInputConsumer;
import com.android.quickstep.inputconsumers.NavHandleLongPressInputConsumer;
import com.android.quickstep.inputconsumers.OneHandedModeInputConsumer;
import com.android.quickstep.inputconsumers.OtherActivityInputConsumer;
import com.android.quickstep.inputconsumers.OverviewInputConsumer;
import com.android.quickstep.inputconsumers.OverviewWithoutFocusInputConsumer;
import com.android.quickstep.inputconsumers.ProgressDelegateInputConsumer;
import com.android.quickstep.inputconsumers.ResetGestureInputConsumer;
import com.android.quickstep.inputconsumers.ScreenPinnedInputConsumer;
import com.android.quickstep.inputconsumers.SysUiOverlayInputConsumer;
import com.android.quickstep.inputconsumers.TaskbarUnstashInputConsumer;
import com.android.quickstep.inputconsumers.TrackpadStatusBarInputConsumer;
import com.android.quickstep.util.ActiveGestureErrorDetector;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.quickstep.util.AssistStateManager;
import com.android.quickstep.util.AssistUtils;
import com.android.systemui.shared.R;
import com.android.systemui.shared.recents.IOverviewProxy;
import com.android.systemui.shared.recents.ISystemUiProxy;
import com.android.systemui.shared.system.ActivityManagerWrapper;
import com.android.systemui.shared.system.InputChannelCompat;
import com.android.systemui.shared.system.InputConsumerController;
import com.android.systemui.shared.system.InputMonitorCompat;
import com.android.systemui.shared.system.QuickStepContract;
import com.android.systemui.shared.system.smartspace.ISysuiUnlockAnimationController;
import com.android.systemui.unfold.progress.IUnfoldAnimation;
import com.android.wm.shell.back.IBackAnimation;
import com.android.wm.shell.bubbles.IBubbles;
import com.android.wm.shell.desktopmode.IDesktopMode;
import com.android.wm.shell.draganddrop.IDragAndDrop;
import com.android.wm.shell.onehanded.IOneHanded;
import com.android.wm.shell.pip.IPip;
import com.android.wm.shell.recents.IRecentTasks;
import com.android.wm.shell.splitscreen.ISplitScreen;
import com.android.wm.shell.startingsurface.IStartingWindow;
import com.android.wm.shell.transition.IShellTransitions;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;
import v1.C1431a;
import y1.C1490a;
import z1.C1500a;
/* loaded from: classes.dex */
public class TouchInteractionService extends Service {
    private static final String HAS_ENABLED_QUICKSTEP_ONCE = "launcher.has_enabled_quickstep_once";
    private static final String NEWLINE_PREFIX = "\n\t\t\t-> ";
    private static final String SUBSTRING_PREFIX = "; ";
    private static final String TAG = "TouchInteractionService";
    private static boolean sConnected = false;
    private static boolean sIsInitialized = false;
    private ActivityManagerWrapper mAM;
    private InputConsumer mConsumer;
    private RecentsAnimationDeviceState mDeviceState;
    private GestureState mGestureState;
    private InputConsumerController mInputConsumer;
    private InputChannelCompat.InputEventReceiver mInputEventReceiver;
    private InputMonitorCompat mInputMonitorCompat;
    private Choreographer mMainChoreographer;
    private OverviewCommandHelper mOverviewCommandHelper;
    private OverviewComponentObserver mOverviewComponentObserver;
    private ResetGestureInputConsumer mResetGestureInputConsumer;
    private RotationTouchHelper mRotationTouchHelper;
    private Function mSwipeUpProxyProvider;
    private TaskAnimationManager mTaskAnimationManager;
    private TaskbarManager mTaskbarManager;
    private InputConsumer mUncheckedConsumer;
    private final TISBinder mTISBinder = new TISBinder(this, 0);
    private final AbsSwipeUpHandler.Factory mLauncherSwipeHandlerFactory = new AbsSwipeUpHandler.Factory() { // from class: com.android.quickstep.N1
        @Override // com.android.quickstep.AbsSwipeUpHandler.Factory
        public final AbsSwipeUpHandler newHandler(GestureState gestureState, long j4) {
            AbsSwipeUpHandler createFallbackSwipeHandler;
            AbsSwipeUpHandler createLauncherSwipeHandler;
            int i4 = r1;
            TouchInteractionService touchInteractionService = this;
            switch (i4) {
                case 0:
                    createLauncherSwipeHandler = touchInteractionService.createLauncherSwipeHandler(gestureState, j4);
                    return createLauncherSwipeHandler;
                default:
                    createFallbackSwipeHandler = touchInteractionService.createFallbackSwipeHandler(gestureState, j4);
                    return createFallbackSwipeHandler;
            }
        }
    };
    private final AbsSwipeUpHandler.Factory mFallbackSwipeHandlerFactory = new AbsSwipeUpHandler.Factory() { // from class: com.android.quickstep.N1
        @Override // com.android.quickstep.AbsSwipeUpHandler.Factory
        public final AbsSwipeUpHandler newHandler(GestureState gestureState, long j4) {
            AbsSwipeUpHandler createFallbackSwipeHandler;
            AbsSwipeUpHandler createLauncherSwipeHandler;
            int i4 = r1;
            TouchInteractionService touchInteractionService = this;
            switch (i4) {
                case 0:
                    createLauncherSwipeHandler = touchInteractionService.createLauncherSwipeHandler(gestureState, j4);
                    return createLauncherSwipeHandler;
                default:
                    createFallbackSwipeHandler = touchInteractionService.createFallbackSwipeHandler(gestureState, j4);
                    return createFallbackSwipeHandler;
            }
        }
    };

    /* renamed from: com.android.quickstep.TouchInteractionService$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends IIntentSender.Stub {
        final /* synthetic */ Intent val$homeIntent;

        public AnonymousClass1(Intent intent) {
            TouchInteractionService.this = r1;
            this.val$homeIntent = intent;
        }

        public /* synthetic */ void lambda$send$0(Intent intent) {
            TouchInteractionService.this.mTaskbarManager.toggleAllApps(intent);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void send(int i4, Intent intent, String str, IBinder iBinder, IIntentReceiver iIntentReceiver, String str2, Bundle bundle) {
            Executors.MAIN_EXECUTOR.execute(new T1(this, this.val$homeIntent, 0));
        }
    }

    /* loaded from: classes.dex */
    public class TISBinder extends IOverviewProxy.Stub {
        private Runnable mOnOverviewTargetChangeListener;
        private final WeakReference mTis;

        public /* synthetic */ TISBinder(TouchInteractionService touchInteractionService, int i4) {
            this(touchInteractionService);
        }

        private void executeForTaskbarManager(Consumer consumer) {
            Executors.MAIN_EXECUTOR.execute(new T1(this, consumer, 2));
        }

        private void executeForTouchInteractionService(Consumer consumer) {
            TouchInteractionService touchInteractionService = (TouchInteractionService) this.mTis.get();
            if (touchInteractionService == null) {
                return;
            }
            consumer.accept(touchInteractionService);
        }

        public static /* synthetic */ void lambda$enterStageSplitFromRunningApp$17(boolean z4, TouchInteractionService touchInteractionService) {
            StatefulActivity createdActivity = touchInteractionService.mOverviewComponentObserver.getActivityInterface().getCreatedActivity();
            if (createdActivity != null) {
                createdActivity.enterStageSplitFromRunningApp(z4);
            }
        }

        public static /* synthetic */ void lambda$executeForTaskbarManager$23(Consumer consumer, TouchInteractionService touchInteractionService) {
            TaskbarManager taskbarManager = touchInteractionService.mTaskbarManager;
            if (taskbarManager == null) {
                return;
            }
            consumer.accept(taskbarManager);
        }

        public /* synthetic */ void lambda$executeForTaskbarManager$24(Consumer consumer) {
            executeForTouchInteractionService(new U1(0, consumer));
        }

        public static /* synthetic */ void lambda$onActiveNavBarRegionChanges$15(Region region, TouchInteractionService touchInteractionService) {
            touchInteractionService.mDeviceState.setDeferredGestureRegion(region);
        }

        public /* synthetic */ void lambda$onActiveNavBarRegionChanges$16(Region region) {
            executeForTouchInteractionService(new U1(1, region));
        }

        public /* synthetic */ void lambda$onAssistantAvailable$8(boolean z4, boolean z5, TouchInteractionService touchInteractionService) {
            touchInteractionService.mDeviceState.setAssistantAvailable(z4);
            touchInteractionService.onAssistantVisibilityChanged();
            executeForTaskbarManager(new f2(0, z5));
        }

        public /* synthetic */ void lambda$onAssistantAvailable$9(final boolean z4, final boolean z5) {
            executeForTouchInteractionService(new Consumer() { // from class: com.android.quickstep.g2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TouchInteractionService.TISBinder.this.lambda$onAssistantAvailable$8(z4, z5, (TouchInteractionService) obj);
                }
            });
        }

        public static /* synthetic */ void lambda$onAssistantOverrideInvoked$12(int i4, TouchInteractionService touchInteractionService) {
            if (AssistUtils.newInstance(touchInteractionService).tryStartAssistOverride(i4)) {
                return;
            }
            Log.w(TouchInteractionService.TAG, "Failed to invoke Assist override");
        }

        public static /* synthetic */ void lambda$onAssistantVisibilityChanged$10(float f4, TouchInteractionService touchInteractionService) {
            touchInteractionService.mDeviceState.setAssistantVisibility(f4);
            touchInteractionService.onAssistantVisibilityChanged();
        }

        public /* synthetic */ void lambda$onAssistantVisibilityChanged$11(float f4) {
            executeForTouchInteractionService(new W1(f4, 1));
        }

        public static /* synthetic */ void lambda$onInitialize$0(ISystemUiProxy iSystemUiProxy, IPip iPip, IBubbles iBubbles, ISplitScreen iSplitScreen, IOneHanded iOneHanded, IShellTransitions iShellTransitions, IStartingWindow iStartingWindow, IRecentTasks iRecentTasks, ISysuiUnlockAnimationController iSysuiUnlockAnimationController, IBackAnimation iBackAnimation, IDesktopMode iDesktopMode, IUnfoldAnimation iUnfoldAnimation, IDragAndDrop iDragAndDrop, TouchInteractionService touchInteractionService) {
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(touchInteractionService)).setProxy(iSystemUiProxy, iPip, iBubbles, iSplitScreen, iOneHanded, iShellTransitions, iStartingWindow, iRecentTasks, iSysuiUnlockAnimationController, iBackAnimation, iDesktopMode, iUnfoldAnimation, iDragAndDrop);
            touchInteractionService.initInputMonitor("TISBinder#onInitialize()");
            touchInteractionService.preloadOverview(true);
        }

        public /* synthetic */ void lambda$onInitialize$1(final ISystemUiProxy iSystemUiProxy, final IPip iPip, final IBubbles iBubbles, final ISplitScreen iSplitScreen, final IOneHanded iOneHanded, final IShellTransitions iShellTransitions, final IStartingWindow iStartingWindow, final IRecentTasks iRecentTasks, final ISysuiUnlockAnimationController iSysuiUnlockAnimationController, final IBackAnimation iBackAnimation, final IDesktopMode iDesktopMode, final IUnfoldAnimation iUnfoldAnimation, final IDragAndDrop iDragAndDrop) {
            executeForTouchInteractionService(new Consumer() { // from class: com.android.quickstep.b2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TouchInteractionService.TISBinder.lambda$onInitialize$0(ISystemUiProxy.this, iPip, iBubbles, iSplitScreen, iOneHanded, iShellTransitions, iStartingWindow, iRecentTasks, iSysuiUnlockAnimationController, iBackAnimation, iDesktopMode, iUnfoldAnimation, iDragAndDrop, (TouchInteractionService) obj);
                }
            });
        }

        public static /* synthetic */ void lambda$onOverviewHidden$6(boolean z4, boolean z5, TouchInteractionService touchInteractionService) {
            if (!z4 || z5) {
                return;
            }
            touchInteractionService.mOverviewCommandHelper.addCommand(3);
        }

        public static /* synthetic */ void lambda$onOverviewShown$5(boolean z4, TouchInteractionService touchInteractionService) {
            if (!z4) {
                touchInteractionService.mOverviewCommandHelper.addCommand(1);
                return;
            }
            TaskUtils.closeSystemWindowsAsync(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_RECENTS);
            touchInteractionService.mOverviewCommandHelper.addCommand(2);
        }

        public static /* synthetic */ void lambda$onOverviewToggle$4(TouchInteractionService touchInteractionService) {
            if (touchInteractionService.mDeviceState.isScreenPinningActive()) {
                return;
            }
            TaskUtils.closeSystemWindowsAsync(ActivityManagerWrapper.CLOSE_SYSTEM_WINDOWS_REASON_RECENTS);
            touchInteractionService.mOverviewCommandHelper.addCommand(4);
        }

        public static /* synthetic */ void lambda$onSystemUiStateChanged$13(int i4, TouchInteractionService touchInteractionService) {
            int systemUiStateFlags = touchInteractionService.mDeviceState.getSystemUiStateFlags();
            touchInteractionService.mDeviceState.setSystemUiFlags(i4);
            touchInteractionService.onSystemUiFlagsChanged(systemUiStateFlags);
        }

        public /* synthetic */ void lambda$onSystemUiStateChanged$14(int i4) {
            executeForTouchInteractionService(new e2(i4, 0));
        }

        public static /* synthetic */ void lambda$onTaskbarToggled$2(TouchInteractionService touchInteractionService) {
            TaskbarActivityContext currentActivityContext = touchInteractionService.mTaskbarManager.getCurrentActivityContext();
            if (currentActivityContext != null) {
                currentActivityContext.toggleTaskbarStash();
            }
        }

        public /* synthetic */ void lambda$onTaskbarToggled$3() {
            executeForTouchInteractionService(new h2(1));
        }

        public static /* synthetic */ void lambda$preloadOverviewForSUWAllSet$18(TouchInteractionService touchInteractionService) {
            touchInteractionService.preloadOverview(false, true);
        }

        public static /* synthetic */ AnimatedFloat lambda$setSwipeUpProxy$25(GestureState gestureState) {
            return null;
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void disable(final int i4, final int i5, final int i6, final boolean z4) {
            executeForTaskbarManager(new Consumer() { // from class: com.android.quickstep.d2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((TaskbarManager) obj).disableNavBarElements(i4, i5, i6, z4);
                }
            });
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void enterStageSplitFromRunningApp(boolean z4) {
            executeForTouchInteractionService(new f2(2, z4));
        }

        public OverviewCommandHelper getOverviewCommandHelper() {
            TouchInteractionService touchInteractionService = (TouchInteractionService) this.mTis.get();
            if (touchInteractionService == null) {
                return null;
            }
            return touchInteractionService.mOverviewCommandHelper;
        }

        public TaskbarManager getTaskbarManager() {
            TouchInteractionService touchInteractionService = (TouchInteractionService) this.mTis.get();
            if (touchInteractionService == null) {
                return null;
            }
            return touchInteractionService.mTaskbarManager;
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onActiveNavBarRegionChanges(Region region) {
            Executors.MAIN_EXECUTOR.execute(new T1(this, region, 1));
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onAssistantAvailable(final boolean z4, final boolean z5) {
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.a2
                @Override // java.lang.Runnable
                public final void run() {
                    TouchInteractionService.TISBinder.this.lambda$onAssistantAvailable$9(z4, z5);
                }
            });
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onAssistantOverrideInvoked(int i4) {
            executeForTouchInteractionService(new e2(i4, 1));
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onAssistantVisibilityChanged(final float f4) {
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.c2
                @Override // java.lang.Runnable
                public final void run() {
                    TouchInteractionService.TISBinder.this.lambda$onAssistantVisibilityChanged$11(f4);
                }
            });
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onInitialize(Bundle bundle) {
            final IPip aVar;
            final IBubbles c1500a;
            final ISplitScreen aVar2;
            final IOneHanded aVar3;
            final IShellTransitions aVar4;
            final IStartingWindow aVar5;
            final IRecentTasks aVar6;
            final IBackAnimation c1490a;
            final IDesktopMode aVar7;
            final IUnfoldAnimation c1431a;
            final IDragAndDrop aVar8;
            final ISystemUiProxy asInterface = ISystemUiProxy.Stub.asInterface(bundle.getBinder(QuickStepContract.KEY_EXTRA_SYSUI_PROXY));
            IBinder binder = bundle.getBinder("extra_shell_pip");
            if (binder == null) {
                aVar = null;
            } else {
                IInterface queryLocalInterface = binder.queryLocalInterface("com.android.wm.shell.pip.IPip");
                aVar = (queryLocalInterface == null || !(queryLocalInterface instanceof IPip)) ? new com.android.wm.shell.pip.a(binder) : (IPip) queryLocalInterface;
            }
            IBinder binder2 = bundle.getBinder("extra_shell_bubbles");
            if (binder2 == null) {
                c1500a = null;
            } else {
                IInterface queryLocalInterface2 = binder2.queryLocalInterface("com.android.wm.shell.bubbles.IBubbles");
                c1500a = (queryLocalInterface2 == null || !(queryLocalInterface2 instanceof IBubbles)) ? new C1500a(binder2) : (IBubbles) queryLocalInterface2;
            }
            IBinder binder3 = bundle.getBinder("extra_shell_split_screen");
            if (binder3 == null) {
                aVar2 = null;
            } else {
                IInterface queryLocalInterface3 = binder3.queryLocalInterface("com.android.wm.shell.splitscreen.ISplitScreen");
                aVar2 = (queryLocalInterface3 == null || !(queryLocalInterface3 instanceof ISplitScreen)) ? new com.android.wm.shell.splitscreen.a(binder3) : (ISplitScreen) queryLocalInterface3;
            }
            IBinder binder4 = bundle.getBinder("extra_shell_one_handed");
            if (binder4 == null) {
                aVar3 = null;
            } else {
                IInterface queryLocalInterface4 = binder4.queryLocalInterface("com.android.wm.shell.onehanded.IOneHanded");
                aVar3 = (queryLocalInterface4 == null || !(queryLocalInterface4 instanceof IOneHanded)) ? new E1.a(binder4) : (IOneHanded) queryLocalInterface4;
            }
            IBinder binder5 = bundle.getBinder("extra_shell_shell_transitions");
            if (binder5 == null) {
                aVar4 = null;
            } else {
                IInterface queryLocalInterface5 = binder5.queryLocalInterface("com.android.wm.shell.transition.IShellTransitions");
                aVar4 = (queryLocalInterface5 == null || !(queryLocalInterface5 instanceof IShellTransitions)) ? new G1.a(binder5) : (IShellTransitions) queryLocalInterface5;
            }
            IBinder binder6 = bundle.getBinder("extra_shell_starting_window");
            if (binder6 == null) {
                aVar5 = null;
            } else {
                IInterface queryLocalInterface6 = binder6.queryLocalInterface("com.android.wm.shell.startingsurface.IStartingWindow");
                aVar5 = (queryLocalInterface6 == null || !(queryLocalInterface6 instanceof IStartingWindow)) ? new F1.a(binder6) : (IStartingWindow) queryLocalInterface6;
            }
            final ISysuiUnlockAnimationController asInterface2 = ISysuiUnlockAnimationController.Stub.asInterface(bundle.getBinder(QuickStepContract.KEY_EXTRA_UNLOCK_ANIMATION_CONTROLLER));
            IBinder binder7 = bundle.getBinder("extra_shell_recent_tasks");
            if (binder7 == null) {
                aVar6 = null;
            } else {
                IInterface queryLocalInterface7 = binder7.queryLocalInterface("com.android.wm.shell.recents.IRecentTasks");
                aVar6 = (queryLocalInterface7 == null || !(queryLocalInterface7 instanceof IRecentTasks)) ? new com.android.wm.shell.recents.a(binder7) : (IRecentTasks) queryLocalInterface7;
            }
            IBinder binder8 = bundle.getBinder("extra_shell_back_animation");
            if (binder8 == null) {
                c1490a = null;
            } else {
                IInterface queryLocalInterface8 = binder8.queryLocalInterface("com.android.wm.shell.back.IBackAnimation");
                c1490a = (queryLocalInterface8 == null || !(queryLocalInterface8 instanceof IBackAnimation)) ? new C1490a(binder8) : (IBackAnimation) queryLocalInterface8;
            }
            IBinder binder9 = bundle.getBinder("extra_shell_desktop_mode");
            if (binder9 == null) {
                aVar7 = null;
            } else {
                IInterface queryLocalInterface9 = binder9.queryLocalInterface("com.android.wm.shell.desktopmode.IDesktopMode");
                aVar7 = (queryLocalInterface9 == null || !(queryLocalInterface9 instanceof IDesktopMode)) ? new C1.a(binder9) : (IDesktopMode) queryLocalInterface9;
            }
            IBinder binder10 = bundle.getBinder(QuickStepContract.KEY_EXTRA_UNFOLD_ANIMATION_FORWARDER);
            if (binder10 == null) {
                c1431a = null;
            } else {
                IInterface queryLocalInterface10 = binder10.queryLocalInterface("com.android.systemui.unfold.progress.IUnfoldAnimation");
                c1431a = (queryLocalInterface10 == null || !(queryLocalInterface10 instanceof IUnfoldAnimation)) ? new C1431a(binder10) : (IUnfoldAnimation) queryLocalInterface10;
            }
            IBinder binder11 = bundle.getBinder("extra_shell_drag_and_drop");
            if (binder11 == null) {
                aVar8 = null;
            } else {
                IInterface queryLocalInterface11 = binder11.queryLocalInterface("com.android.wm.shell.draganddrop.IDragAndDrop");
                aVar8 = (queryLocalInterface11 == null || !(queryLocalInterface11 instanceof IDragAndDrop)) ? new D1.a(binder11) : (IDragAndDrop) queryLocalInterface11;
            }
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.X1
                @Override // java.lang.Runnable
                public final void run() {
                    TouchInteractionService.TISBinder.this.lambda$onInitialize$1(asInterface, aVar, c1500a, aVar2, aVar3, aVar4, aVar5, aVar6, asInterface2, c1490a, aVar7, c1431a, aVar8);
                }
            });
            TouchInteractionService.sIsInitialized = true;
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onNavButtonsDarkIntensityChanged(float f4) {
            executeForTaskbarManager(new W1(f4, 0));
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onNavigationBarSurface(SurfaceControl surfaceControl) {
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onOverviewHidden(final boolean z4, final boolean z5) {
            executeForTouchInteractionService(new Consumer() { // from class: com.android.quickstep.V1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    TouchInteractionService.TISBinder.lambda$onOverviewHidden$6(z4, z5, (TouchInteractionService) obj);
                }
            });
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onOverviewShown(boolean z4) {
            executeForTouchInteractionService(new f2(1, z4));
        }

        public void onOverviewTargetChange() {
            Runnable runnable = this.mOnOverviewTargetChangeListener;
            if (runnable != null) {
                runnable.run();
                this.mOnOverviewTargetChangeListener = null;
            }
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onOverviewToggle() {
            TestLogging.recordEvent("Main", "onOverviewToggle");
            executeForTouchInteractionService(new h2(0));
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onRotationProposal(final int i4, final boolean z4) {
            executeForTaskbarManager(new Consumer() { // from class: com.android.quickstep.Y1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((TaskbarManager) obj).onRotationProposal(i4, z4);
                }
            });
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onSystemBarAttributesChanged(final int i4, final int i5) {
            executeForTaskbarManager(new Consumer() { // from class: com.android.quickstep.Z1
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    ((TaskbarManager) obj).onSystemBarAttributesChanged(i4, i5);
                }
            });
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onSystemUiStateChanged(final int i4) {
            Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.i2
                @Override // java.lang.Runnable
                public final void run() {
                    TouchInteractionService.TISBinder.this.lambda$onSystemUiStateChanged$14(i4);
                }
            });
        }

        @Override // com.android.systemui.shared.recents.IOverviewProxy
        public void onTaskbarToggled() {
            if (FeatureFlags.ENABLE_KEYBOARD_TASKBAR_TOGGLE.get()) {
                Executors.MAIN_EXECUTOR.execute(new R1(1, this));
            }
        }

        public void preloadOverviewForSUWAllSet() {
            executeForTouchInteractionService(new h2(2));
        }

        public void setGestureBlockedTaskId(int i4) {
            TouchInteractionService touchInteractionService = (TouchInteractionService) this.mTis.get();
            if (touchInteractionService == null) {
                return;
            }
            touchInteractionService.mDeviceState.setGestureBlockingTaskId(i4);
        }

        public void setOverviewTargetChangeListener(Runnable runnable) {
            this.mOnOverviewTargetChangeListener = runnable;
        }

        public void setSwipeUpProxy(Function function) {
            TouchInteractionService touchInteractionService = (TouchInteractionService) this.mTis.get();
            if (touchInteractionService == null) {
                return;
            }
            if (function == null) {
                function = new O1(1);
            }
            touchInteractionService.mSwipeUpProxyProvider = function;
        }

        private TISBinder(TouchInteractionService touchInteractionService) {
            this.mOnOverviewTargetChangeListener = null;
            this.mTis = new WeakReference(touchInteractionService);
        }
    }

    public TouchInteractionService() {
        InputConsumer inputConsumer = InputConsumer.NO_OP;
        this.mUncheckedConsumer = inputConsumer;
        this.mConsumer = inputConsumer;
        this.mGestureState = GestureState.DEFAULT_STATE;
        this.mSwipeUpProxyProvider = new O1(0);
    }

    private RemoteAction createAllAppsAction() {
        Intent action = new Intent(this.mOverviewComponentObserver.getHomeIntent()).setAction("launcher.intent_action_all_apps_toggle");
        return new RemoteAction(Icon.createWithResource(this, (int) R.drawable.ic_apps), getString(R.string.all_apps_label), getString(R.string.all_apps_label), FeatureFlags.ENABLE_ALL_APPS_SEARCH_IN_TASKBAR.get() ? new PendingIntent(new AnonymousClass1(action)) : PendingIntent.getActivity(this, 14, action, 201326592));
    }

    private InputConsumer createDeviceLockedInputConsumer(GestureState gestureState, ActiveGestureLog.CompoundString compoundString) {
        if ((!this.mDeviceState.isFullyGesturalNavMode() && !gestureState.isTrackpadGesture()) || gestureState.getRunningTask() == null) {
            return getDefaultInputConsumer(compoundString.append(SUBSTRING_PREFIX).append((this.mDeviceState.isFullyGesturalNavMode() || gestureState.isTrackpadGesture()) ? "running task == null" : "device is not in gesture nav mode and it's not a trackpad gesture").append(", trying to use default input consumer"));
        }
        compoundString.append(SUBSTRING_PREFIX).append("device is in gesture nav mode or 3-button mode with a trackpad gestureand running task != null").append(", using DeviceLockedInputConsumer");
        return new DeviceLockedInputConsumer(this, this.mDeviceState, this.mTaskAnimationManager, gestureState, this.mInputMonitorCompat);
    }

    public AbsSwipeUpHandler createFallbackSwipeHandler(GestureState gestureState, long j4) {
        RecentsAnimationDeviceState recentsAnimationDeviceState = this.mDeviceState;
        TaskAnimationManager taskAnimationManager = this.mTaskAnimationManager;
        return new FallbackSwipeHandler(this, recentsAnimationDeviceState, taskAnimationManager, gestureState, j4, taskAnimationManager.isRecentsAnimationRunning(), this.mInputConsumer);
    }

    public AbsSwipeUpHandler createLauncherSwipeHandler(GestureState gestureState, long j4) {
        RecentsAnimationDeviceState recentsAnimationDeviceState = this.mDeviceState;
        TaskAnimationManager taskAnimationManager = this.mTaskAnimationManager;
        return new LauncherSwipeHandlerV2(this, recentsAnimationDeviceState, taskAnimationManager, gestureState, j4, taskAnimationManager.isRecentsAnimationRunning(), this.mInputConsumer);
    }

    private InputConsumer createOtherActivityInputConsumer(GestureState gestureState, MotionEvent motionEvent) {
        return new OtherActivityInputConsumer(this, this.mDeviceState, this.mTaskAnimationManager, gestureState, !this.mOverviewComponentObserver.isHomeAndOverviewSame() || gestureState.getActivityInterface().deferStartingActivity(this.mDeviceState, motionEvent), new M1(0, this), this.mInputMonitorCompat, this.mInputEventReceiver, this.mDeviceState.isInExclusionRegion(motionEvent), getSwipeUpHandlerFactory());
    }

    private void disposeEventHandlers(String str) {
        Log.d(TAG, "disposeEventHandlers: Reason: " + str);
        InputChannelCompat.InputEventReceiver inputEventReceiver = this.mInputEventReceiver;
        if (inputEventReceiver != null) {
            inputEventReceiver.dispose();
            this.mInputEventReceiver = null;
        }
        InputMonitorCompat inputMonitorCompat = this.mInputMonitorCompat;
        if (inputMonitorCompat != null) {
            inputMonitorCompat.dispose();
            this.mInputMonitorCompat = null;
        }
    }

    private InputConsumer getDefaultInputConsumer() {
        return getDefaultInputConsumer(ActiveGestureLog.CompoundString.NO_OP);
    }

    private void handleOrientationSetup(InputConsumer inputConsumer) {
        inputConsumer.notifyOrientationSetup();
    }

    public void initInputMonitor(String str) {
        disposeEventHandlers(androidx.constraintlayout.widget.j.a("Initializing input monitor due to: ", str));
        if (!this.mDeviceState.isButtonNavMode() || FeatureFlags.ENABLE_TRACKPAD_GESTURE.get()) {
            InputMonitorCompat inputMonitorCompat = new InputMonitorCompat("swipe-up", this.mDeviceState.getDisplayId());
            this.mInputMonitorCompat = inputMonitorCompat;
            this.mInputEventReceiver = inputMonitorCompat.getInputReceiver(Looper.getMainLooper(), this.mMainChoreographer, new InputChannelCompat.InputEventListener() { // from class: com.android.quickstep.S1
                @Override // com.android.systemui.shared.system.InputChannelCompat.InputEventListener
                public final void onInputEvent(InputEvent inputEvent) {
                    TouchInteractionService.this.onInputEvent(inputEvent);
                }
            });
            this.mRotationTouchHelper.updateGestureTouchRegions();
        }
    }

    public static boolean isConnected() {
        return sConnected;
    }

    private boolean isCursorHoverEvent(MotionEvent motionEvent) {
        return motionEvent.isHoverEvent() && motionEvent.getSource() == 8194;
    }

    public static boolean isInitialized() {
        return sIsInitialized;
    }

    private static boolean isTablet(Configuration configuration) {
        return configuration.smallestScreenWidthDp >= 600;
    }

    public static /* synthetic */ AnimatedFloat lambda$new$0(GestureState gestureState) {
        return null;
    }

    private void logInputConsumerSelectionReason(InputConsumer inputConsumer, ActiveGestureLog.CompoundString compoundString) {
        ActiveGestureLog activeGestureLog = ActiveGestureLog.INSTANCE;
        activeGestureLog.addLog(new ActiveGestureLog.CompoundString("setInputConsumer: ").append(inputConsumer.getName()).append(". reason(s):").append(compoundString));
        if ((inputConsumer.getType() & 4) != 0) {
            activeGestureLog.trackEvent(ActiveGestureErrorDetector.GestureEvent.FLAG_USING_OTHER_ACTIVITY_INPUT_CONSUMER);
        }
    }

    private InputConsumer newBaseConsumer(GestureState gestureState, GestureState gestureState2, MotionEvent motionEvent, ActiveGestureLog.CompoundString compoundString) {
        if (this.mDeviceState.isKeyguardShowingOccluded()) {
            return createDeviceLockedInputConsumer(gestureState2, compoundString.append(SUBSTRING_PREFIX).append("keyguard is showing occluded").append(", trying to use device locked input consumer"));
        }
        compoundString.append(SUBSTRING_PREFIX).append("keyguard is not showing occluded");
        boolean z4 = true;
        boolean z5 = gestureState2.getActivityInterface().isStarted() && gestureState2.getRunningTask() != null && gestureState2.getRunningTask().isRootChooseActivity();
        TopTaskTracker.CachedTaskInfo otherVisibleTaskThisIsExcludedOver = gestureState2.getRunningTask() == null ? null : gestureState2.getRunningTask().otherVisibleTaskThisIsExcludedOver();
        if (otherVisibleTaskThisIsExcludedOver != null) {
            ActiveGestureLog.INSTANCE.addLog(new ActiveGestureLog.CompoundString("Changing active task to ").append(otherVisibleTaskThisIsExcludedOver.getPackageName()).append(" because the previous task running on top of this one (").append(gestureState2.getRunningTask().getPackageName()).append(") was excluded from recents"));
            gestureState2.updateRunningTask(otherVisibleTaskThisIsExcludedOver);
        }
        boolean isRunningAnimationToLauncher = gestureState.isRunningAnimationToLauncher();
        if (!gestureState2.getActivityInterface().isResumed() || gestureState.isRecentsAnimationRunning()) {
            z4 = false;
        }
        if (gestureState2.getActivityInterface().isInLiveTileMode()) {
            return createOverviewInputConsumer(gestureState, gestureState2, motionEvent, z5, compoundString.append(SUBSTRING_PREFIX).append("is in live tile mode, trying to use overview input consumer"));
        }
        if (gestureState2.getRunningTask() == null) {
            return getDefaultInputConsumer(compoundString.append(SUBSTRING_PREFIX).append("running task == null"));
        }
        if (isRunningAnimationToLauncher || z4 || z5) {
            return createOverviewInputConsumer(gestureState, gestureState2, motionEvent, z5, compoundString.append(SUBSTRING_PREFIX).append(isRunningAnimationToLauncher ? "previous gesture animated to launcher" : z4 ? "launcher resumed through a shell transition" : "forceOverviewInputConsumer == true").append(", trying to use overview input consumer"));
        } else if (this.mDeviceState.isGestureBlockedTask(gestureState2.getRunningTask())) {
            return getDefaultInputConsumer(compoundString.append(SUBSTRING_PREFIX).append("is gesture-blocked task, trying to use default input consumer"));
        } else {
            compoundString.append(SUBSTRING_PREFIX).append("using OtherActivityInputConsumer");
            return createOtherActivityInputConsumer(gestureState2, motionEvent);
        }
    }

    private ActiveGestureLog.CompoundString newCompoundString(String str) {
        return new ActiveGestureLog.CompoundString(NEWLINE_PREFIX).append(str);
    }

    private InputConsumer newConsumer(GestureState gestureState, GestureState gestureState2, MotionEvent motionEvent) {
        ActiveGestureLog.CompoundString append;
        OneHandedModeInputConsumer newBaseConsumer;
        NavHandleLongPressInputConsumer navHandleLongPressInputConsumer;
        String str;
        OneHandedModeInputConsumer oneHandedModeInputConsumer;
        AnimatedFloat animatedFloat = (AnimatedFloat) this.mSwipeUpProxyProvider.apply(this.mGestureState);
        if (animatedFloat != null) {
            ProgressDelegateInputConsumer progressDelegateInputConsumer = new ProgressDelegateInputConsumer(this, this.mTaskAnimationManager, this.mGestureState, this.mInputMonitorCompat, animatedFloat);
            logInputConsumerSelectionReason(progressDelegateInputConsumer, newCompoundString("mSwipeUpProxyProvider has been set, using ProgressDelegateInputConsumer"));
            return progressDelegateInputConsumer;
        }
        boolean canStartTrackpadGesture = this.mGestureState.isTrackpadGesture() ? this.mDeviceState.canStartTrackpadGesture() : this.mDeviceState.canStartSystemGesture();
        MainThreadInitializedObject mainThreadInitializedObject = LockedUserState.INSTANCE;
        if (!LockedUserState.Companion.get(this).isUserUnlocked()) {
            ActiveGestureLog.CompoundString newCompoundString = newCompoundString("device locked");
            InputConsumer createDeviceLockedInputConsumer = canStartTrackpadGesture ? createDeviceLockedInputConsumer(gestureState2, newCompoundString.append(SUBSTRING_PREFIX).append("can start system gesture")) : getDefaultInputConsumer(newCompoundString.append(SUBSTRING_PREFIX).append("cannot start system gesture"));
            logInputConsumerSelectionReason(createDeviceLockedInputConsumer, newCompoundString);
            return createDeviceLockedInputConsumer;
        }
        if (canStartTrackpadGesture || gestureState.isRecentsAnimationRunning()) {
            append = newCompoundString(canStartTrackpadGesture ? "can start system gesture" : "recents animation was running").append(", trying to use base consumer");
            newBaseConsumer = newBaseConsumer(gestureState, gestureState2, motionEvent, append);
        } else {
            append = newCompoundString("cannot start system gesture and recents animation was not running").append(", trying to use default input consumer");
            newBaseConsumer = getDefaultInputConsumer(append);
        }
        ActiveGestureLog.CompoundString compoundString = append;
        if (this.mDeviceState.isGesturalNavMode() || gestureState2.isTrackpadGesture()) {
            handleOrientationSetup(newBaseConsumer);
        }
        if (this.mDeviceState.isFullyGesturalNavMode() || gestureState2.isTrackpadGesture()) {
            if (this.mDeviceState.canTriggerAssistantAction(motionEvent)) {
                compoundString.append(NEWLINE_PREFIX).append("device is in gesture navigation mode or 3-button mode with a trackpad gesture").append(SUBSTRING_PREFIX).append("gesture can trigger the assistant").append(", trying to use assistant input consumer");
                navHandleLongPressInputConsumer = tryCreateAssistantInputConsumer(newBaseConsumer, gestureState2, motionEvent, compoundString);
            } else {
                navHandleLongPressInputConsumer = newBaseConsumer;
            }
            TaskbarActivityContext currentActivityContext = this.mTaskbarManager.getCurrentActivityContext();
            if (currentActivityContext == null || (navHandleLongPressInputConsumer instanceof AssistantInputConsumer)) {
                str = "device is in gesture navigation mode or 3-button mode with a trackpad gesture";
                if (canStartTrackpadGesture && FeatureFlags.ENABLE_LONG_PRESS_NAV_HANDLE.get() && !gestureState.isRecentsAnimationRunning()) {
                    compoundString.append(NEWLINE_PREFIX).append(str).append(SUBSTRING_PREFIX).append("Long press nav handle enabled, using NavHandleLongPressInputConsumer");
                    navHandleLongPressInputConsumer = new NavHandleLongPressInputConsumer(this, navHandleLongPressInputConsumer, this.mInputMonitorCompat);
                }
            } else {
                DeviceProfile deviceProfile = currentActivityContext.getDeviceProfile();
                boolean z4 = (!deviceProfile.isTaskbarPresent || TaskbarManager.isPhoneMode(deviceProfile) || currentActivityContext.isInStashedLauncherState()) ? false : true;
                if (canStartTrackpadGesture && z4) {
                    compoundString.append(NEWLINE_PREFIX).append("device is in gesture navigation mode or 3-button mode with a trackpad gesture").append(SUBSTRING_PREFIX).append("TaskbarActivityContext != null, using TaskbarUnstashInputConsumer");
                    str = "device is in gesture navigation mode or 3-button mode with a trackpad gesture";
                    navHandleLongPressInputConsumer = new TaskbarUnstashInputConsumer(this, navHandleLongPressInputConsumer, this.mInputMonitorCompat, currentActivityContext, this.mOverviewCommandHelper);
                } else {
                    str = "device is in gesture navigation mode or 3-button mode with a trackpad gesture";
                }
            }
            if (this.mDeviceState.isBubblesExpanded()) {
                compoundString = newCompoundString(str).append(SUBSTRING_PREFIX).append("bubbles expanded, trying to use default input consumer");
                navHandleLongPressInputConsumer = getDefaultInputConsumer(compoundString);
            }
            if (this.mDeviceState.isSystemUiDialogShowing()) {
                compoundString = newCompoundString(str).append(SUBSTRING_PREFIX).append("system dialog is showing, using SysUiOverlayInputConsumer");
                navHandleLongPressInputConsumer = new SysUiOverlayInputConsumer(getBaseContext(), this.mDeviceState, this.mInputMonitorCompat);
            }
            if (FeatureFlags.ENABLE_TRACKPAD_GESTURE.get() && this.mGestureState.isTrackpadGesture() && canStartTrackpadGesture && !gestureState.isRecentsAnimationRunning()) {
                compoundString = newCompoundString(str).append(SUBSTRING_PREFIX).append("Trackpad 3-finger gesture, using TrackpadStatusBarInputConsumer");
                navHandleLongPressInputConsumer = new TrackpadStatusBarInputConsumer(getBaseContext(), navHandleLongPressInputConsumer, this.mInputMonitorCompat);
            }
            if (this.mDeviceState.isScreenPinningActive()) {
                ActiveGestureLog.CompoundString append2 = newCompoundString(str).append(SUBSTRING_PREFIX).append("screen pinning is active, using ScreenPinnedInputConsumer");
                navHandleLongPressInputConsumer = new ScreenPinnedInputConsumer(this, gestureState2);
                compoundString = append2;
            }
            if (this.mDeviceState.canTriggerOneHandedAction(motionEvent)) {
                compoundString.append(NEWLINE_PREFIX).append(str).append(SUBSTRING_PREFIX).append("gesture can trigger one handed mode").append(", using OneHandedModeInputConsumer");
                oneHandedModeInputConsumer = new OneHandedModeInputConsumer(this, this.mDeviceState, navHandleLongPressInputConsumer, this.mInputMonitorCompat);
            } else {
                oneHandedModeInputConsumer = navHandleLongPressInputConsumer;
            }
            if (this.mDeviceState.isAccessibilityMenuAvailable()) {
                compoundString.append(NEWLINE_PREFIX).append(str).append(SUBSTRING_PREFIX).append("accessibility menu is available").append(", using AccessibilityInputConsumer");
                newBaseConsumer = new AccessibilityInputConsumer(this, this.mDeviceState, this.mGestureState, oneHandedModeInputConsumer, this.mInputMonitorCompat);
            } else {
                newBaseConsumer = oneHandedModeInputConsumer;
            }
        } else {
            if (this.mDeviceState.isScreenPinningActive()) {
                compoundString = newCompoundString("device is not in gesture navigation mode").append(SUBSTRING_PREFIX).append("screen pinning is active, trying to use default input consumer");
                newBaseConsumer = getDefaultInputConsumer(compoundString);
            }
            if (this.mDeviceState.canTriggerOneHandedAction(motionEvent)) {
                compoundString.append(NEWLINE_PREFIX).append("device is not in gesture navigation mode").append(SUBSTRING_PREFIX).append("gesture can trigger one handed mode").append(", using OneHandedModeInputConsumer");
                newBaseConsumer = new OneHandedModeInputConsumer(this, this.mDeviceState, newBaseConsumer, this.mInputMonitorCompat);
            }
        }
        logInputConsumerSelectionReason(newBaseConsumer, compoundString);
        return newBaseConsumer;
    }

    public void onAssistantVisibilityChanged() {
        MainThreadInitializedObject mainThreadInitializedObject = LockedUserState.INSTANCE;
        if (LockedUserState.Companion.get(this).isUserUnlocked()) {
            this.mOverviewComponentObserver.getActivityInterface().onAssistantVisibilityChanged(this.mDeviceState.getAssistantVisibility());
        }
    }

    public void onConsumerInactive(InputConsumer inputConsumer) {
        InputConsumer inputConsumer2 = this.mConsumer;
        if (inputConsumer2 == null || inputConsumer2.getActiveConsumerInHierarchy() != inputConsumer) {
            return;
        }
        reset();
    }

    public void onInputEvent(InputEvent inputEvent) {
        InputConsumer inputConsumer;
        if (!(inputEvent instanceof MotionEvent)) {
            Log.e(TAG, "Unknown event " + inputEvent);
            return;
        }
        MotionEvent motionEvent = (MotionEvent) inputEvent;
        TestLogging.recordMotionEvent("TIS", "TouchInteractionService.onInputEvent", motionEvent);
        MainThreadInitializedObject mainThreadInitializedObject = LockedUserState.INSTANCE;
        if (LockedUserState.Companion.get(this).isUserUnlocked()) {
            if (!this.mDeviceState.isButtonNavMode() || MotionEventsUtils.isTrackpadMotionEvent(motionEvent)) {
                SafeCloseable allowIpcs = TraceHelper.INSTANCE.allowIpcs("TIS.onInputEvent");
                int actionMasked = motionEvent.getActionMasked();
                boolean z4 = false;
                boolean z5 = motionEvent.isHoverEvent() && (this.mUncheckedConsumer.getType() & 16384) == 0;
                if (actionMasked == 0 || z5) {
                    this.mRotationTouchHelper.setOrientationTransformIfNeeded(motionEvent);
                    if ((!this.mDeviceState.isOneHandedModeActive() && this.mRotationTouchHelper.isInSwipeUpTouchRegion(motionEvent)) || z5) {
                        GestureState gestureState = new GestureState(this.mGestureState);
                        GestureState createGestureState = createGestureState(this.mGestureState, GestureState.TrackpadGestureType.getTrackpadGestureType(motionEvent));
                        createGestureState.setSwipeUpStartTimeMs(SystemClock.uptimeMillis());
                        this.mConsumer.onConsumerAboutToBeSwitched();
                        this.mGestureState = createGestureState;
                        InputConsumer newConsumer = newConsumer(gestureState, createGestureState, motionEvent);
                        this.mConsumer = newConsumer;
                        this.mUncheckedConsumer = newConsumer;
                    } else if (LockedUserState.Companion.get(this).isUserUnlocked() && ((this.mDeviceState.isFullyGesturalNavMode() || MotionEventsUtils.isTrackpadMultiFingerSwipe(motionEvent)) && this.mDeviceState.canTriggerAssistantAction(motionEvent))) {
                        GestureState createGestureState2 = createGestureState(this.mGestureState, GestureState.TrackpadGestureType.getTrackpadGestureType(motionEvent));
                        this.mGestureState = createGestureState2;
                        this.mUncheckedConsumer = tryCreateAssistantInputConsumer(createGestureState2, motionEvent);
                    } else if (this.mDeviceState.canTriggerOneHandedAction(motionEvent)) {
                        this.mUncheckedConsumer = new OneHandedModeInputConsumer(this, this.mDeviceState, InputConsumer.NO_OP, this.mInputMonitorCompat);
                    } else {
                        this.mUncheckedConsumer = InputConsumer.NO_OP;
                    }
                } else if (this.mUncheckedConsumer != InputConsumer.NO_OP) {
                    this.mRotationTouchHelper.setOrientationTransformIfNeeded(motionEvent);
                }
                if (this.mUncheckedConsumer != InputConsumer.NO_OP) {
                    int actionMasked2 = motionEvent.getActionMasked();
                    if (actionMasked2 == 0 || actionMasked2 == 1) {
                        ActiveGestureLog.INSTANCE.addLog("onMotionEvent(" + ((int) motionEvent.getRawX()) + ", " + ((int) motionEvent.getRawY()) + "): " + MotionEvent.actionToString(motionEvent.getActionMasked()) + ", " + MotionEvent.classificationToString(motionEvent.getClassification()), motionEvent.getActionMasked() == 0 ? ActiveGestureErrorDetector.GestureEvent.MOTION_DOWN : ActiveGestureErrorDetector.GestureEvent.MOTION_UP);
                    } else if (actionMasked2 != 2) {
                        ActiveGestureLog.INSTANCE.addLog("onMotionEvent: " + MotionEvent.actionToString(motionEvent.getActionMasked()) + "," + MotionEvent.classificationToString(motionEvent.getClassification()));
                    } else {
                        ActiveGestureLog.INSTANCE.addLog("onMotionEvent: " + MotionEvent.actionToString(motionEvent.getActionMasked()) + "," + MotionEvent.classificationToString(motionEvent.getClassification()) + ", pointerCount: " + motionEvent.getPointerCount(), ActiveGestureErrorDetector.GestureEvent.MOTION_MOVE);
                    }
                }
                boolean z6 = this.mGestureState.getActivityInterface() != null && this.mGestureState.getActivityInterface().shouldCancelCurrentGesture();
                if ((actionMasked == 1 || actionMasked == 3 || z6) && (inputConsumer = this.mConsumer) != null && !inputConsumer.getActiveConsumerInHierarchy().isConsumerDetachedFromGesture()) {
                    z4 = true;
                }
                if (z6) {
                    motionEvent.setAction(3);
                }
                if (!this.mGestureState.isTrackpadGesture() || (actionMasked != 5 && actionMasked != 6)) {
                    if (isCursorHoverEvent(motionEvent)) {
                        this.mUncheckedConsumer.onHoverEvent(motionEvent);
                    } else {
                        this.mUncheckedConsumer.onMotionEvent(motionEvent);
                    }
                }
                if (z4) {
                    reset();
                }
                allowIpcs.close();
            }
        }
    }

    public void onNavigationModeChanged() {
        initInputMonitor("onNavigationModeChanged()");
        resetHomeBounceSeenOnQuickstepEnabledFirstTime();
    }

    public void onOverviewTargetChange(boolean z4) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) getSystemService(AccessibilityManager.class);
        if (z4) {
            accessibilityManager.registerSystemAction(createAllAppsAction(), 14);
        } else {
            accessibilityManager.unregisterSystemAction(14);
        }
        StatefulActivity createdActivity = this.mOverviewComponentObserver.getActivityInterface().getCreatedActivity();
        if (createdActivity != null) {
            this.mTaskbarManager.setActivity(createdActivity);
        }
        this.mTISBinder.onOverviewTargetChange();
    }

    public void onSystemUiFlagsChanged(int i4) {
        MainThreadInitializedObject mainThreadInitializedObject = LockedUserState.INSTANCE;
        if (LockedUserState.Companion.get(this).isUserUnlocked()) {
            int systemUiStateFlags = this.mDeviceState.getSystemUiStateFlags();
            ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this)).setLastSystemUiStateFlags(systemUiStateFlags);
            this.mOverviewComponentObserver.onSystemUiStateChanged();
            this.mTaskbarManager.onSystemUiFlagsChanged(systemUiStateFlags);
            boolean z4 = (i4 & 2052) != 0;
            boolean z5 = (systemUiStateFlags & 2052) != 0;
            if (z4 == z5 || !z5) {
                return;
            }
            this.mTaskAnimationManager.endLiveTile();
        }
    }

    public void preloadOverview(boolean z4, boolean z5) {
        MainThreadInitializedObject mainThreadInitializedObject = LockedUserState.INSTANCE;
        if (LockedUserState.Companion.get(this).isUserUnlocked()) {
            if (!this.mDeviceState.isButtonNavMode() || this.mOverviewComponentObserver.isHomeAndOverviewSame()) {
                if ((!RestoreDbTask.isPending(this) || z5) && this.mDeviceState.isUserSetupComplete()) {
                    BaseActivityInterface activityInterface = this.mOverviewComponentObserver.getActivityInterface();
                    Intent intent = new Intent(this.mOverviewComponentObserver.getOverviewIntentIgnoreSysUiState());
                    if (activityInterface.getCreatedActivity() == null || !z4) {
                        Log.i(TAG, "preloadOverview: forSUWAllSet=" + z5 + ", isHomeAndOverviewSame=" + this.mOverviewComponentObserver.isHomeAndOverviewSame());
                        this.mTaskAnimationManager.preloadRecentsAnimation(intent);
                    }
                }
            }
        }
    }

    private void reset() {
        InputConsumer defaultInputConsumer = getDefaultInputConsumer();
        this.mUncheckedConsumer = defaultInputConsumer;
        this.mConsumer = defaultInputConsumer;
        this.mGestureState = GestureState.DEFAULT_STATE;
        InputChannelCompat.InputEventReceiver inputEventReceiver = this.mInputEventReceiver;
        if (inputEventReceiver != null) {
            inputEventReceiver.setBatchingEnabled(true);
        }
    }

    private void resetHomeBounceSeenOnQuickstepEnabledFirstTime() {
        MainThreadInitializedObject mainThreadInitializedObject = LockedUserState.INSTANCE;
        if (!LockedUserState.Companion.get(this).isUserUnlocked() || this.mDeviceState.isButtonNavMode()) {
            return;
        }
        SharedPreferences prefs = LauncherPrefs.getPrefs(this);
        if (prefs.getBoolean(HAS_ENABLED_QUICKSTEP_ONCE, true)) {
            return;
        }
        prefs.edit().putBoolean(HAS_ENABLED_QUICKSTEP_ONCE, true).putBoolean(OnboardingPrefs.HOME_BOUNCE_SEEN, false).apply();
    }

    private InputConsumer tryCreateAssistantInputConsumer(GestureState gestureState, MotionEvent motionEvent) {
        return tryCreateAssistantInputConsumer(InputConsumer.NO_OP, gestureState, motionEvent, ActiveGestureLog.CompoundString.NO_OP);
    }

    public GestureState createGestureState(GestureState gestureState, GestureState.TrackpadGestureType trackpadGestureType) {
        GestureState gestureState2;
        TopTaskTracker.CachedTaskInfo cachedTopTask;
        if (this.mTaskAnimationManager.isRecentsAnimationRunning()) {
            gestureState2 = new GestureState(this.mOverviewComponentObserver, ActiveGestureLog.INSTANCE.getLogId());
            cachedTopTask = gestureState.getRunningTask();
            gestureState2.updateRunningTask(cachedTopTask);
            gestureState2.updateLastStartedTaskIds(gestureState.getLastStartedTaskIds());
            gestureState2.updatePreviouslyAppearedTaskIds(gestureState.getPreviouslyAppearedTaskIds());
        } else {
            gestureState2 = new GestureState(this.mOverviewComponentObserver, ActiveGestureLog.INSTANCE.incrementLogId());
            cachedTopTask = ((TopTaskTracker) TopTaskTracker.INSTANCE.get(this)).getCachedTopTask(false);
            gestureState2.updateRunningTask(cachedTopTask);
        }
        gestureState2.setTrackpadGestureType(trackpadGestureType);
        ActiveGestureLog activeGestureLog = ActiveGestureLog.INSTANCE;
        activeGestureLog.addLog(new ActiveGestureLog.CompoundString("Current running task package name=").append(cachedTopTask == null ? "no running task" : cachedTopTask.getPackageName()));
        activeGestureLog.addLog(new ActiveGestureLog.CompoundString("Current SystemUi state flags=").append(this.mDeviceState.getSystemUiStateString()));
        return gestureState2;
    }

    public InputConsumer createOverviewInputConsumer(GestureState gestureState, GestureState gestureState2, MotionEvent motionEvent, boolean z4, ActiveGestureLog.CompoundString compoundString) {
        StatefulActivity createdActivity = gestureState2.getActivityInterface().getCreatedActivity();
        if (createdActivity == null) {
            return getDefaultInputConsumer(compoundString.append(SUBSTRING_PREFIX).append("activity == null, trying to use default input consumer"));
        }
        boolean hasWindowFocus = createdActivity.getRootView().hasWindowFocus();
        boolean isRunningAnimationToLauncher = gestureState.isRunningAnimationToLauncher();
        boolean isInLiveTileMode = gestureState2.getActivityInterface().isInLiveTileMode();
        compoundString.append(SUBSTRING_PREFIX).append(hasWindowFocus ? "activity has window focus" : isRunningAnimationToLauncher ? "previous gesture is still animating to launcher" : isInLiveTileMode ? "device is in live mode" : "all overview focus conditions failed");
        if (hasWindowFocus || isRunningAnimationToLauncher || isInLiveTileMode) {
            compoundString.append(SUBSTRING_PREFIX).append("overview should have focus, using OverviewInputConsumer");
            return new OverviewInputConsumer(gestureState2, createdActivity, this.mInputMonitorCompat, false);
        }
        compoundString.append(SUBSTRING_PREFIX).append("overview shouldn't have focus, using OverviewWithoutFocusInputConsumer");
        return new OverviewWithoutFocusInputConsumer(createdActivity, this.mDeviceState, gestureState2, this.mInputMonitorCompat, this.mDeviceState.isInExclusionRegion(motionEvent));
    }

    @Override // android.app.Service
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int i4 = FlagsFactory.f5242a;
        MainThreadInitializedObject mainThreadInitializedObject = LockedUserState.INSTANCE;
        if (LockedUserState.Companion.get(this).isUserUnlocked()) {
            ((PluginManagerWrapper) PluginManagerWrapper.INSTANCE.get(getBaseContext())).dump(printWriter);
        }
        this.mDeviceState.dump(printWriter);
        OverviewComponentObserver overviewComponentObserver = this.mOverviewComponentObserver;
        if (overviewComponentObserver != null) {
            overviewComponentObserver.dump(printWriter);
        }
        OverviewCommandHelper overviewCommandHelper = this.mOverviewCommandHelper;
        if (overviewCommandHelper != null) {
            overviewCommandHelper.dump(printWriter);
        }
        GestureState gestureState = this.mGestureState;
        if (gestureState != null) {
            gestureState.dump(printWriter);
        }
        printWriter.println("Input state:");
        printWriter.println("  mInputMonitorCompat=" + this.mInputMonitorCompat);
        printWriter.println("  mInputEventReceiver=" + this.mInputEventReceiver);
        ((DisplayController) DisplayController.INSTANCE.get(this)).dump(printWriter);
        printWriter.println("TouchState:");
        OverviewComponentObserver overviewComponentObserver2 = this.mOverviewComponentObserver;
        StatefulActivity createdActivity = overviewComponentObserver2 == null ? null : overviewComponentObserver2.getActivityInterface().getCreatedActivity();
        OverviewComponentObserver overviewComponentObserver3 = this.mOverviewComponentObserver;
        boolean z4 = overviewComponentObserver3 != null && overviewComponentObserver3.getActivityInterface().isResumed();
        printWriter.println("  createdOverviewActivity=" + createdActivity);
        printWriter.println("  resumed=" + z4);
        printWriter.println("  mConsumer=" + this.mConsumer.getName());
        ActiveGestureLog.INSTANCE.dump("", printWriter);
        ((RecentsModel) RecentsModel.INSTANCE.get(this)).dump("", printWriter);
        if (createdActivity != null) {
            createdActivity.getDeviceProfile().dump(this, "", printWriter);
        }
        this.mTaskbarManager.dumpLogs(printWriter);
        printWriter.println("AssistStateManager:");
        ((AssistStateManager) AssistStateManager.INSTANCE.get(this)).dump("  ", printWriter);
    }

    public OverviewCommandHelper getOverviewCommandHelper() {
        return this.mOverviewCommandHelper;
    }

    public AbsSwipeUpHandler.Factory getSwipeUpHandlerFactory() {
        return !this.mOverviewComponentObserver.isHomeAndOverviewSame() ? this.mFallbackSwipeHandlerFactory : this.mLauncherSwipeHandlerFactory;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        Log.d(TAG, "Touch service connected: user=" + getUserId());
        return this.mTISBinder;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        StatefulActivity createdActivity;
        MainThreadInitializedObject mainThreadInitializedObject = LockedUserState.INSTANCE;
        if (!LockedUserState.Companion.get(this).isUserUnlocked() || (createdActivity = this.mOverviewComponentObserver.getActivityInterface().getCreatedActivity()) == null || createdActivity.isStarted()) {
            return;
        }
        if ((isTablet(createdActivity.getResources().getConfiguration()) != isTablet(configuration)) || !this.mOverviewComponentObserver.canHandleConfigChanges(createdActivity.getComponentName(), createdActivity.getResources().getConfiguration().diff(configuration))) {
            preloadOverview(false);
        } else {
            this.mDeviceState.onOneHandedModeChanged(ResourceUtils.getNavbarSize(getApplicationContext().getResources(), "navigation_bar_gesture_height"));
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.mMainChoreographer = Choreographer.getInstance();
        this.mAM = ActivityManagerWrapper.getInstance();
        this.mDeviceState = new RecentsAnimationDeviceState(this, true);
        this.mTaskbarManager = new TaskbarManager(this);
        this.mRotationTouchHelper = this.mDeviceState.getRotationTouchHelper();
        BootAwarePreloader.start(this);
        MainThreadInitializedObject mainThreadInitializedObject = LockedUserState.INSTANCE;
        LockedUserState.Companion.get(this).runOnUserUnlocked(new Runnable() { // from class: com.android.quickstep.Q1
            @Override // java.lang.Runnable
            public final void run() {
                switch (r1) {
                    case 0:
                        this.onUserUnlocked();
                        return;
                    default:
                        this.onNavigationModeChanged();
                        return;
                }
            }
        });
        LockedUserState lockedUserState = LockedUserState.Companion.get(this);
        TaskbarManager taskbarManager = this.mTaskbarManager;
        Objects.requireNonNull(taskbarManager);
        lockedUserState.runOnUserUnlocked(new R1(0, taskbarManager));
        this.mDeviceState.addNavigationModeChangedCallback(new Runnable() { // from class: com.android.quickstep.Q1
            @Override // java.lang.Runnable
            public final void run() {
                switch (r1) {
                    case 0:
                        this.onUserUnlocked();
                        return;
                    default:
                        this.onNavigationModeChanged();
                        return;
                }
            }
        });
        sConnected = true;
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.d(TAG, "Touch service destroyed: user=" + getUserId());
        sIsInitialized = false;
        MainThreadInitializedObject mainThreadInitializedObject = LockedUserState.INSTANCE;
        if (LockedUserState.Companion.get(this).isUserUnlocked()) {
            this.mInputConsumer.unregisterInputConsumer();
            this.mOverviewComponentObserver.onDestroy();
        }
        disposeEventHandlers("TouchInteractionService onDestroy()");
        this.mDeviceState.destroy();
        ((SystemUiProxy) SystemUiProxy.INSTANCE.get(this)).lambda$new$0();
        ((AccessibilityManager) getSystemService(AccessibilityManager.class)).unregisterSystemAction(14);
        this.mTaskbarManager.destroy();
        sConnected = false;
        super.onDestroy();
    }

    public void onUserUnlocked() {
        this.mTaskAnimationManager = new TaskAnimationManager(this);
        OverviewComponentObserver overviewComponentObserver = new OverviewComponentObserver(this, this.mDeviceState);
        this.mOverviewComponentObserver = overviewComponentObserver;
        this.mOverviewCommandHelper = new OverviewCommandHelper(this, overviewComponentObserver, this.mTaskAnimationManager);
        TaskAnimationManager taskAnimationManager = this.mTaskAnimationManager;
        final TaskbarManager taskbarManager = this.mTaskbarManager;
        Objects.requireNonNull(taskbarManager);
        this.mResetGestureInputConsumer = new ResetGestureInputConsumer(taskAnimationManager, new Supplier() { // from class: com.android.quickstep.P1
            @Override // java.util.function.Supplier
            public final Object get() {
                return TaskbarManager.this.getCurrentActivityContext();
            }
        });
        InputConsumerController recentsAnimationInputConsumer = InputConsumerController.getRecentsAnimationInputConsumer();
        this.mInputConsumer = recentsAnimationInputConsumer;
        recentsAnimationInputConsumer.registerInputConsumer();
        onSystemUiFlagsChanged(this.mDeviceState.getSystemUiStateFlags());
        onAssistantVisibilityChanged();
        TopTaskTracker.INSTANCE.get(this);
        resetHomeBounceSeenOnQuickstepEnabledFirstTime();
        this.mOverviewComponentObserver.setOverviewChangeListener(new M1(1, this));
        onOverviewTargetChange(this.mOverviewComponentObserver.isHomeAndOverviewSame());
    }

    private InputConsumer getDefaultInputConsumer(ActiveGestureLog.CompoundString compoundString) {
        if (this.mResetGestureInputConsumer != null) {
            compoundString.append(SUBSTRING_PREFIX).append("mResetGestureInputConsumer initialized, using ResetGestureInputConsumer");
            return this.mResetGestureInputConsumer;
        }
        compoundString.append(SUBSTRING_PREFIX).append("mResetGestureInputConsumer not initialized, using no-op input consumer");
        return InputConsumer.NO_OP;
    }

    private InputConsumer tryCreateAssistantInputConsumer(InputConsumer inputConsumer, GestureState gestureState, MotionEvent motionEvent, ActiveGestureLog.CompoundString compoundString) {
        if (this.mDeviceState.isGestureBlockedTask(gestureState.getRunningTask())) {
            compoundString.append(SUBSTRING_PREFIX).append("is gesture-blocked task, using base input consumer");
            return inputConsumer;
        }
        compoundString.append(SUBSTRING_PREFIX).append("using AssistantInputConsumer");
        return new AssistantInputConsumer(this, gestureState, inputConsumer, this.mInputMonitorCompat, this.mDeviceState, motionEvent);
    }

    public void preloadOverview(boolean z4) {
        Trace.beginSection("preloadOverview(fromInit=" + z4 + ")");
        preloadOverview(z4, false);
        Trace.endSection();
    }
}
