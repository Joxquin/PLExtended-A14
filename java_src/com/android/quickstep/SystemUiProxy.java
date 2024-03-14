package com.android.quickstep;

import android.app.ActivityManager;
import android.app.ActivityOptions;
import android.app.PendingIntent;
import android.app.PictureInPictureParams;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ShortcutInfo;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import android.view.IRecentsAnimationController;
import android.view.IRecentsAnimationRunner;
import android.view.IRemoteAnimationRunner;
import android.view.MotionEvent;
import android.view.RemoteAnimationAdapter;
import android.view.RemoteAnimationTarget;
import android.view.SurfaceControl;
import android.window.IOnBackInvokedCallback;
import android.window.RemoteTransition;
import android.window.TaskSnapshot;
import android.window.TransitionFilter;
import com.android.internal.logging.InstanceId;
import com.android.internal.util.ScreenshotRequest;
import com.android.internal.view.AppearanceRegion;
import com.android.launcher3.util.Executors;
import com.android.launcher3.util.MainThreadInitializedObject;
import com.android.quickstep.util.AssistUtils;
import com.android.quickstep.util.LogUtils;
import com.android.systemui.shared.recents.ISystemUiProxy;
import com.android.systemui.shared.recents.model.ThumbnailData;
import com.android.systemui.shared.system.RecentsAnimationControllerCompat;
import com.android.systemui.shared.system.RecentsAnimationListener;
import com.android.systemui.shared.system.smartspace.ILauncherUnlockAnimationController;
import com.android.systemui.shared.system.smartspace.ISysuiUnlockAnimationController;
import com.android.systemui.shared.system.smartspace.SmartspaceState;
import com.android.systemui.unfold.progress.IUnfoldAnimation;
import com.android.systemui.unfold.progress.IUnfoldTransitionListener;
import com.android.wm.shell.back.IBackAnimation;
import com.android.wm.shell.bubbles.IBubbles;
import com.android.wm.shell.bubbles.IBubblesListener;
import com.android.wm.shell.desktopmode.IDesktopMode;
import com.android.wm.shell.desktopmode.IDesktopTaskListener;
import com.android.wm.shell.draganddrop.IDragAndDrop;
import com.android.wm.shell.onehanded.IOneHanded;
import com.android.wm.shell.pip.IPip;
import com.android.wm.shell.pip.IPipAnimationListener;
import com.android.wm.shell.recents.IRecentTasks;
import com.android.wm.shell.recents.IRecentTasksListener;
import com.android.wm.shell.splitscreen.ISplitScreen;
import com.android.wm.shell.splitscreen.ISplitScreenListener;
import com.android.wm.shell.splitscreen.ISplitSelectListener;
import com.android.wm.shell.startingsurface.IStartingWindow;
import com.android.wm.shell.startingsurface.IStartingWindowListener;
import com.android.wm.shell.transition.IShellTransitions;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.function.BiConsumer;
/* loaded from: classes.dex */
public class SystemUiProxy implements ISystemUiProxy {
    private static final int MSG_SET_LAUNCHER_KEEP_CLEAR_AREA_HEIGHT = 2;
    private static final int MSG_SET_SHELF_HEIGHT = 1;
    private IBackAnimation mBackAnimation;
    private IOnBackInvokedCallback mBackToLauncherCallback;
    private IRemoteAnimationRunner mBackToLauncherRunner;
    private IBubbles mBubbles;
    private IBubblesListener mBubblesListener;
    private final Context mContext;
    private IDesktopMode mDesktopMode;
    private IDesktopTaskListener mDesktopTaskListener;
    private IDragAndDrop mDragAndDrop;
    private int mLastLauncherKeepClearAreaHeight;
    private boolean mLastLauncherKeepClearAreaHeightVisible;
    private int mLastShelfHeight;
    private boolean mLastShelfVisible;
    private int mLastSystemUiStateFlags;
    private ILauncherUnlockAnimationController mLauncherUnlockAnimationController;
    private IOneHanded mOneHanded;
    private IPip mPip;
    private IPipAnimationListener mPipAnimationListener;
    private IRecentTasks mRecentTasks;
    private IRecentTasksListener mRecentTasksListener;
    private final PendingIntent mRecentsPendingIntent;
    private IShellTransitions mShellTransitions;
    private ISplitScreen mSplitScreen;
    private ISplitScreenListener mSplitScreenListener;
    private ISplitSelectListener mSplitSelectListener;
    private IStartingWindow mStartingWindow;
    private IStartingWindowListener mStartingWindowListener;
    private ISystemUiProxy mSystemUiProxy;
    private ISysuiUnlockAnimationController mSysuiUnlockAnimationController;
    private IUnfoldAnimation mUnfoldAnimation;
    private IUnfoldTransitionListener mUnfoldAnimationListener;
    private static final String TAG = "SystemUiProxy";
    public static final MainThreadInitializedObject INSTANCE = new MainThreadInitializedObject(new C0510f1());
    private final IBinder.DeathRecipient mSystemUiProxyDeathRecipient = new IBinder.DeathRecipient() { // from class: com.android.quickstep.c1
        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            SystemUiProxy.this.lambda$new$1();
        }
    };
    private final LinkedHashMap mRemoteTransitions = new LinkedHashMap();
    private IBinder mOriginalTransactionToken = null;
    private final Handler mAsyncHandler = new Handler(Executors.UI_HELPER_EXECUTOR.getLooper(), new Handler.Callback() { // from class: com.android.quickstep.d1
        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            boolean handleMessageAsync;
            handleMessageAsync = SystemUiProxy.this.handleMessageAsync(message);
            return handleMessageAsync;
        }
    });

    public SystemUiProxy(Context context) {
        this.mContext = context;
        this.mRecentsPendingIntent = PendingIntent.getActivity(context, 0, new Intent().setPackage(context.getPackageName()), 50331656);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean handleMessageAsync(Message message) {
        int i4 = message.what;
        if (i4 == 1) {
            setShelfHeightAsync(message.arg1, message.arg2);
            return true;
        } else if (i4 != 2) {
            return false;
        } else {
            setLauncherKeepClearAreaHeight(message.arg1, message.arg2);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$1() {
        Executors.MAIN_EXECUTOR.execute(new Runnable() { // from class: com.android.quickstep.e1
            @Override // java.lang.Runnable
            public final void run() {
                SystemUiProxy.this.lambda$new$0();
            }
        });
    }

    private void linkToDeath() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.asBinder().linkToDeath(this.mSystemUiProxyDeathRecipient, 0);
            } catch (RemoteException unused) {
                Log.e(TAG, "Failed to link sysui proxy death recipient");
            }
        }
    }

    private void setShelfHeightAsync(int i4, int i5) {
        boolean z4 = true;
        boolean z5 = i4 != 0;
        if (z5 == this.mLastShelfVisible && i5 == this.mLastShelfHeight) {
            z4 = false;
        }
        IPip iPip = this.mPip;
        if (iPip == null || !z4) {
            return;
        }
        this.mLastShelfVisible = z5;
        this.mLastShelfHeight = i5;
        try {
            iPip.setShelfHeight(z5, i5);
        } catch (RemoteException e4) {
            Log.w(TAG, "Failed call setShelfHeight visible: " + z5 + " height: " + i5, e4);
        }
    }

    private void setupTransactionQueue() {
        IBinder iBinder = this.mOriginalTransactionToken;
        if (iBinder == null) {
            return;
        }
        IShellTransitions iShellTransitions = this.mShellTransitions;
        if (iShellTransitions == null) {
            SurfaceControl.Transaction.setDefaultApplyToken(iBinder);
            return;
        }
        try {
            IBinder shellApplyToken = iShellTransitions.getShellApplyToken();
            if (shellApplyToken == null) {
                Log.e(TAG, "Didn't receive apply token from Shell");
            } else {
                SurfaceControl.Transaction.setDefaultApplyToken(shellApplyToken);
            }
        } catch (RemoteException e4) {
            Log.e(TAG, "Error getting Shell's apply token", e4);
        }
    }

    private void unlinkToDeath() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            iSystemUiProxy.asBinder().unlinkToDeath(this.mSystemUiProxyDeathRecipient, 0);
        }
    }

    public void abortSwipePipToHome(int i4, ComponentName componentName) {
        IPip iPip = this.mPip;
        if (iPip != null) {
            try {
                iPip.abortSwipePipToHome(i4, componentName);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call abortSwipePipToHome");
            }
        }
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return null;
    }

    public void clearBackToLauncherCallback(IOnBackInvokedCallback iOnBackInvokedCallback) {
        if (this.mBackToLauncherCallback != iOnBackInvokedCallback) {
            return;
        }
        this.mBackToLauncherCallback = null;
        this.mBackToLauncherRunner = null;
        IBackAnimation iBackAnimation = this.mBackAnimation;
        if (iBackAnimation == null) {
            return;
        }
        try {
            iBackAnimation.clearBackToLauncherCallback();
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed call clearBackToLauncherCallback", e4);
        }
    }

    /* renamed from: clearProxy */
    public void lambda$new$0() {
        setProxy(null, null, null, null, null, null, null, null, null, null, null, null, null);
    }

    public void collapseBubbles() {
        IBubbles iBubbles = this.mBubbles;
        if (iBubbles != null) {
            try {
                iBubbles.collapseBubbles();
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call collapseBubbles");
            }
        }
    }

    public void customizeStatusBarAppearance(AppearanceRegion appearanceRegion) {
        IBackAnimation iBackAnimation = this.mBackAnimation;
        if (iBackAnimation == null) {
            return;
        }
        try {
            iBackAnimation.customizeStatusBarAppearance(appearanceRegion);
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed call useLauncherSysBarFlags", e4);
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void expandNotificationPanel() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.expandNotificationPanel();
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call expandNotificationPanel", e4);
            }
        }
    }

    public int getLastSystemUiStateFlags() {
        return this.mLastSystemUiStateFlags;
    }

    public ArrayList getRecentTasks(int i4, int i5) {
        IRecentTasks iRecentTasks = this.mRecentTasks;
        if (iRecentTasks != null) {
            try {
                H1.c[] recentTasks = iRecentTasks.getRecentTasks(i4, i5);
                return recentTasks == null ? new ArrayList() : new ArrayList(Arrays.asList(recentTasks));
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call getRecentTasks", e4);
            }
        }
        return new ArrayList();
    }

    public ArrayList getRunningTasks(int i4) {
        if (this.mRecentTasks != null && this.mContext.getPackageManager().hasSystemFeature("android.hardware.type.pc")) {
            try {
                return new ArrayList(Arrays.asList(this.mRecentTasks.getRunningTasks(i4)));
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call getRunningTasks", e4);
            }
        }
        return new ArrayList();
    }

    public int getVisibleDesktopTaskCount(int i4) {
        IDesktopMode iDesktopMode = this.mDesktopMode;
        if (iDesktopMode != null) {
            try {
                return iDesktopMode.getVisibleTaskCount(i4);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call getVisibleDesktopTaskCount", e4);
                return 0;
            }
        }
        return 0;
    }

    public void hideStashedDesktopApps(int i4) {
        IDesktopMode iDesktopMode = this.mDesktopMode;
        if (iDesktopMode != null) {
            try {
                iDesktopMode.hideStashedDesktopApps(i4);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call hideStashedDesktopApps", e4);
            }
        }
    }

    public boolean isActive() {
        return this.mSystemUiProxy != null;
    }

    public boolean isDragAndDropReady() {
        IDragAndDrop iDragAndDrop = this.mDragAndDrop;
        if (iDragAndDrop == null) {
            return false;
        }
        try {
            return iDragAndDrop.isReadyToHandleDrag();
        } catch (RemoteException e4) {
            Log.e(TAG, "Error querying drag state", e4);
            return false;
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void notifyAccessibilityButtonClicked(int i4) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.notifyAccessibilityButtonClicked(i4);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call notifyAccessibilityButtonClicked", e4);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void notifyAccessibilityButtonLongClicked() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.notifyAccessibilityButtonLongClicked();
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call notifyAccessibilityButtonLongClicked", e4);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void notifyPrioritizedRotation(int i4) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.notifyPrioritizedRotation(i4);
            } catch (RemoteException e4) {
                String str = TAG;
                Log.w(str, "Failed call notifyPrioritizedRotation with arg: " + i4, e4);
            }
        }
    }

    public void notifySysuiSmartspaceStateUpdated(SmartspaceState smartspaceState) {
        ISysuiUnlockAnimationController iSysuiUnlockAnimationController = this.mSysuiUnlockAnimationController;
        if (iSysuiUnlockAnimationController != null) {
            try {
                iSysuiUnlockAnimationController.onLauncherSmartspaceStateUpdated(smartspaceState);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call notifySysuiSmartspaceStateUpdated", e4);
                e4.printStackTrace();
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void notifyTaskbarAutohideSuspend(boolean z4) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.notifyTaskbarAutohideSuspend(z4);
            } catch (RemoteException e4) {
                String str = TAG;
                Log.w(str, "Failed call notifyTaskbarAutohideSuspend with arg: " + z4, e4);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void notifyTaskbarStatus(boolean z4, boolean z5) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.notifyTaskbarStatus(z4, z5);
            } catch (RemoteException e4) {
                String str = TAG;
                Log.w(str, "Failed call notifyTaskbarStatus with arg: " + z4 + ", " + z5, e4);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void onAssistantGestureCompletion(float f4) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.onAssistantGestureCompletion(f4);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call onAssistantGestureCompletion", e4);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void onAssistantProgress(float f4) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.onAssistantProgress(f4);
            } catch (RemoteException e4) {
                String str = TAG;
                Log.w(str, "Failed call onAssistantProgress with progress: " + f4, e4);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void onBackPressed() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.onBackPressed();
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call onBackPressed", e4);
            }
        }
    }

    public void onBubbleDrag(String str, boolean z4) {
        IBubbles iBubbles = this.mBubbles;
        if (iBubbles == null) {
            return;
        }
        try {
            iBubbles.onBubbleDrag(str, z4);
        } catch (RemoteException unused) {
            Log.w(TAG, "Failed call onBubbleDrag");
        }
    }

    public void onDesktopSplitSelectAnimComplete(ActivityManager.RunningTaskInfo runningTaskInfo) {
        IDesktopMode iDesktopMode = this.mDesktopMode;
        if (iDesktopMode != null) {
            try {
                iDesktopMode.onDesktopSplitSelectAnimComplete(runningTaskInfo);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call onDesktopSplitSelectAnimComplete", e4);
            }
        }
    }

    public RemoteAnimationTarget[] onGoingToRecentsLegacy(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        ISplitScreen iSplitScreen;
        if (TaskAnimationManager.ENABLE_SHELL_TRANSITIONS || (iSplitScreen = this.mSplitScreen) == null) {
            return null;
        }
        try {
            return iSplitScreen.onGoingToRecentsLegacy(remoteAnimationTargetArr);
        } catch (RemoteException unused) {
            Log.w(TAG, "Failed call onGoingToRecentsLegacy");
            return null;
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void onImeSwitcherPressed() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.onImeSwitcherPressed();
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call onImeSwitcherPressed", e4);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void onOverviewShown(boolean z4) {
        onOverviewShown(z4, TAG);
    }

    public RemoteAnimationTarget[] onStartingSplitLegacy(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        ISplitScreen iSplitScreen = this.mSplitScreen;
        if (iSplitScreen != null) {
            try {
                return iSplitScreen.onStartingSplitLegacy(remoteAnimationTargetArr);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call onStartingSplitLegacy");
                return null;
            }
        }
        return null;
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void onStatusBarTouchEvent(MotionEvent motionEvent) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.onStatusBarTouchEvent(motionEvent);
            } catch (RemoteException e4) {
                String str = TAG;
                Log.w(str, "Failed call onStatusBarTouchEvent with arg: " + motionEvent, e4);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void onStatusBarTrackpadEvent(MotionEvent motionEvent) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.onStatusBarTrackpadEvent(motionEvent);
            } catch (RemoteException e4) {
                String str = TAG;
                Log.w(str, "Failed call onStatusBarTrackpadEvent with arg: " + motionEvent, e4);
            }
        }
    }

    public void registerRecentTasksListener(IRecentTasksListener iRecentTasksListener) {
        IRecentTasks iRecentTasks = this.mRecentTasks;
        if (iRecentTasks != null) {
            try {
                iRecentTasks.registerRecentTasksListener(iRecentTasksListener);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call registerRecentTasksListener", e4);
            }
        }
        this.mRecentTasksListener = iRecentTasksListener;
    }

    public void registerRemoteTransition(RemoteTransition remoteTransition, TransitionFilter transitionFilter) {
        IShellTransitions iShellTransitions = this.mShellTransitions;
        if (iShellTransitions != null) {
            try {
                iShellTransitions.registerRemote(remoteTransition, transitionFilter);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call registerRemoteTransition");
            }
        }
        if (this.mRemoteTransitions.containsKey(remoteTransition)) {
            return;
        }
        this.mRemoteTransitions.put(remoteTransition, transitionFilter);
    }

    public void registerSplitScreenListener(ISplitScreenListener iSplitScreenListener) {
        ISplitScreen iSplitScreen = this.mSplitScreen;
        if (iSplitScreen != null) {
            try {
                iSplitScreen.registerSplitScreenListener(iSplitScreenListener);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call registerSplitScreenListener");
            }
        }
        this.mSplitScreenListener = iSplitScreenListener;
    }

    public void registerSplitSelectListener(ISplitSelectListener iSplitSelectListener) {
        ISplitScreen iSplitScreen = this.mSplitScreen;
        if (iSplitScreen != null) {
            try {
                iSplitScreen.registerSplitSelectListener(iSplitSelectListener);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call registerSplitSelectListener");
            }
        }
        this.mSplitSelectListener = iSplitSelectListener;
    }

    public void removeAllBubbles() {
        IBubbles iBubbles = this.mBubbles;
        if (iBubbles == null) {
            return;
        }
        try {
            iBubbles.removeAllBubbles();
        } catch (RemoteException unused) {
            Log.w(TAG, "Failed call removeAllBubbles");
        }
    }

    public void removeBubble(String str) {
        IBubbles iBubbles = this.mBubbles;
        if (iBubbles == null) {
            return;
        }
        try {
            iBubbles.removeBubble(str);
        } catch (RemoteException unused) {
            Log.w(TAG, "Failed call removeBubble");
        }
    }

    public void removeFromSideStage(int i4) {
        ISplitScreen iSplitScreen = this.mSplitScreen;
        if (iSplitScreen != null) {
            try {
                iSplitScreen.removeFromSideStage(i4);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call removeFromSideStage");
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void setAssistantOverridesRequested(int[] iArr) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.setAssistantOverridesRequested(iArr);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call setAssistantOverridesRequested", e4);
            }
        }
    }

    public void setBackToLauncherCallback(IOnBackInvokedCallback iOnBackInvokedCallback, IRemoteAnimationRunner iRemoteAnimationRunner) {
        this.mBackToLauncherCallback = iOnBackInvokedCallback;
        this.mBackToLauncherRunner = iRemoteAnimationRunner;
        IBackAnimation iBackAnimation = this.mBackAnimation;
        if (iBackAnimation == null || iOnBackInvokedCallback == null) {
            return;
        }
        try {
            iBackAnimation.setBackToLauncherCallback(iOnBackInvokedCallback, iRemoteAnimationRunner);
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed call setBackToLauncherCallback", e4);
        }
    }

    public void setBubblesListener(IBubblesListener iBubblesListener) {
        IBubbles iBubbles = this.mBubbles;
        if (iBubbles != null) {
            try {
                IBubblesListener iBubblesListener2 = this.mBubblesListener;
                if (iBubblesListener2 != null) {
                    iBubbles.unregisterBubbleListener(iBubblesListener2);
                }
                if (iBubblesListener != null) {
                    this.mBubbles.registerBubbleListener(iBubblesListener);
                }
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call registerBubblesListener");
            }
        }
        this.mBubblesListener = iBubblesListener;
    }

    public void setDesktopTaskListener(IDesktopTaskListener iDesktopTaskListener) {
        this.mDesktopTaskListener = iDesktopTaskListener;
        IDesktopMode iDesktopMode = this.mDesktopMode;
        if (iDesktopMode != null) {
            try {
                iDesktopMode.setTaskListener(iDesktopTaskListener);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call setDesktopTaskListener", e4);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void setHomeRotationEnabled(boolean z4) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.setHomeRotationEnabled(z4);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call onBackPressed", e4);
            }
        }
    }

    public void setLastSystemUiStateFlags(int i4) {
        this.mLastSystemUiStateFlags = i4;
    }

    public void setLauncherAppIconSize(int i4) {
        IPip iPip = this.mPip;
        if (iPip != null) {
            try {
                iPip.setLauncherAppIconSize(i4);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call setLauncherAppIconSize", e4);
            }
        }
    }

    public void setLauncherKeepClearAreaHeight(boolean z4, int i4) {
        Message.obtain(this.mAsyncHandler, 2, z4 ? 1 : 0, i4).sendToTarget();
    }

    public void setLauncherUnlockAnimationController(ILauncherUnlockAnimationController iLauncherUnlockAnimationController) {
        ISysuiUnlockAnimationController iSysuiUnlockAnimationController = this.mSysuiUnlockAnimationController;
        if (iSysuiUnlockAnimationController != null) {
            try {
                iSysuiUnlockAnimationController.setLauncherUnlockController(iLauncherUnlockAnimationController);
                if (iLauncherUnlockAnimationController != null) {
                    iLauncherUnlockAnimationController.dispatchSmartspaceStateToSysui();
                }
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call setLauncherUnlockAnimationController", e4);
            }
        }
        this.mLauncherUnlockAnimationController = iLauncherUnlockAnimationController;
    }

    public void setPipAnimationListener(IPipAnimationListener iPipAnimationListener) {
        IPip iPip = this.mPip;
        if (iPip != null) {
            try {
                iPip.setPipAnimationListener(iPipAnimationListener);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call setPinnedStackAnimationListener", e4);
            }
        }
        this.mPipAnimationListener = iPipAnimationListener;
    }

    public void setPipAnimationTypeToAlpha() {
        IPip iPip = this.mPip;
        if (iPip != null) {
            try {
                iPip.setPipAnimationTypeToAlpha();
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call setPipAnimationTypeToAlpha", e4);
            }
        }
    }

    public void setProxy(ISystemUiProxy iSystemUiProxy, IPip iPip, IBubbles iBubbles, ISplitScreen iSplitScreen, IOneHanded iOneHanded, IShellTransitions iShellTransitions, IStartingWindow iStartingWindow, IRecentTasks iRecentTasks, ISysuiUnlockAnimationController iSysuiUnlockAnimationController, IBackAnimation iBackAnimation, IDesktopMode iDesktopMode, IUnfoldAnimation iUnfoldAnimation, IDragAndDrop iDragAndDrop) {
        unlinkToDeath();
        this.mSystemUiProxy = iSystemUiProxy;
        this.mPip = iPip;
        this.mBubbles = iBubbles;
        this.mSplitScreen = iSplitScreen;
        this.mOneHanded = iOneHanded;
        this.mShellTransitions = iShellTransitions;
        this.mStartingWindow = iStartingWindow;
        this.mSysuiUnlockAnimationController = iSysuiUnlockAnimationController;
        this.mRecentTasks = iRecentTasks;
        this.mBackAnimation = iBackAnimation;
        this.mDesktopMode = iDesktopMode;
        this.mUnfoldAnimation = iUnfoldAnimation;
        this.mDragAndDrop = iDragAndDrop;
        linkToDeath();
        setPipAnimationListener(this.mPipAnimationListener);
        setBubblesListener(this.mBubblesListener);
        registerSplitScreenListener(this.mSplitScreenListener);
        registerSplitSelectListener(this.mSplitSelectListener);
        setStartingWindowListener(this.mStartingWindowListener);
        setLauncherUnlockAnimationController(this.mLauncherUnlockAnimationController);
        new LinkedHashMap(this.mRemoteTransitions).forEach(new BiConsumer() { // from class: com.android.quickstep.g1
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                SystemUiProxy.this.registerRemoteTransition((RemoteTransition) obj, (TransitionFilter) obj2);
            }
        });
        setupTransactionQueue();
        registerRecentTasksListener(this.mRecentTasksListener);
        setBackToLauncherCallback(this.mBackToLauncherCallback, this.mBackToLauncherRunner);
        setUnfoldAnimationListener(this.mUnfoldAnimationListener);
        setDesktopTaskListener(this.mDesktopTaskListener);
        setAssistantOverridesRequested(AssistUtils.newInstance(this.mContext).getSysUiAssistOverrideInvocationTypes());
    }

    public void setShelfHeight(boolean z4, int i4) {
        Message.obtain(this.mAsyncHandler, 1, z4 ? 1 : 0, i4).sendToTarget();
    }

    public void setStartingWindowListener(IStartingWindowListener iStartingWindowListener) {
        IStartingWindow iStartingWindow = this.mStartingWindow;
        if (iStartingWindow != null) {
            try {
                iStartingWindow.setStartingWindowListener(iStartingWindowListener);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call setStartingWindowListener", e4);
            }
        }
        this.mStartingWindowListener = iStartingWindowListener;
    }

    public void setUnfoldAnimationListener(IUnfoldTransitionListener iUnfoldTransitionListener) {
        this.mUnfoldAnimationListener = iUnfoldTransitionListener;
        if (this.mUnfoldAnimation == null) {
            return;
        }
        try {
            Log.d(TAG, "Registering unfold animation receiver");
            this.mUnfoldAnimation.setListener(iUnfoldTransitionListener);
        } catch (RemoteException e4) {
            Log.e(TAG, "Failed call setUnfoldAnimationListener", e4);
        }
    }

    public void shareTransactionQueue() {
        if (this.mOriginalTransactionToken == null) {
            this.mOriginalTransactionToken = SurfaceControl.Transaction.getDefaultApplyToken();
        }
        setupTransactionQueue();
    }

    public void showBubble(String str, int i4, int i5) {
        IBubbles iBubbles = this.mBubbles;
        if (iBubbles != null) {
            try {
                iBubbles.showBubble(str, i4, i5);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call showBubble");
            }
        }
    }

    public void showDesktopApp(int i4) {
        IDesktopMode iDesktopMode = this.mDesktopMode;
        if (iDesktopMode != null) {
            try {
                iDesktopMode.showDesktopApp(i4);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call showDesktopApp", e4);
            }
        }
    }

    public void showDesktopApps(int i4) {
        IDesktopMode iDesktopMode = this.mDesktopMode;
        if (iDesktopMode != null) {
            try {
                iDesktopMode.showDesktopApps(i4);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call showDesktopApps", e4);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void startAssistant(Bundle bundle) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.startAssistant(bundle);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call startAssistant", e4);
            }
        }
    }

    public void startIntent(PendingIntent pendingIntent, int i4, Intent intent, int i5, Bundle bundle, InstanceId instanceId) {
        ISplitScreen iSplitScreen = this.mSplitScreen;
        if (iSplitScreen != null) {
            try {
                iSplitScreen.startIntent(pendingIntent, i4, intent, i5, bundle, instanceId);
            } catch (RemoteException e4) {
                Log.w(TAG, LogUtils.splitFailureMessage("startIntent", "RemoteException"), e4);
            }
        }
    }

    public void startIntentAndTask(PendingIntent pendingIntent, int i4, Bundle bundle, int i5, Bundle bundle2, int i6, float f4, RemoteTransition remoteTransition, InstanceId instanceId) {
        if (this.mSystemUiProxy != null) {
            try {
                this.mSplitScreen.startIntentAndTask(pendingIntent, i4, bundle, i5, bundle2, i6, f4, remoteTransition, instanceId);
            } catch (RemoteException e4) {
                Log.w(TAG, LogUtils.splitFailureMessage("startIntentAndTask", "RemoteException"), e4);
            }
        }
    }

    public void startIntentAndTaskWithLegacyTransition(PendingIntent pendingIntent, int i4, Bundle bundle, int i5, Bundle bundle2, int i6, float f4, RemoteAnimationAdapter remoteAnimationAdapter, InstanceId instanceId) {
        if (this.mSystemUiProxy != null) {
            try {
                this.mSplitScreen.startIntentAndTaskWithLegacyTransition(pendingIntent, i4, bundle, i5, bundle2, i6, f4, remoteAnimationAdapter, instanceId);
            } catch (RemoteException e4) {
                Log.w(TAG, LogUtils.splitFailureMessage("startIntentAndTaskWithLegacyTransition", "RemoteException"), e4);
            }
        }
    }

    public void startIntents(PendingIntent pendingIntent, int i4, ShortcutInfo shortcutInfo, Bundle bundle, PendingIntent pendingIntent2, int i5, ShortcutInfo shortcutInfo2, Bundle bundle2, int i6, float f4, RemoteTransition remoteTransition, InstanceId instanceId) {
        if (this.mSystemUiProxy != null) {
            try {
                this.mSplitScreen.startIntents(pendingIntent, i4, shortcutInfo, bundle, pendingIntent2, i5, shortcutInfo2, bundle2, i6, f4, remoteTransition, instanceId);
            } catch (RemoteException e4) {
                Log.w(TAG, LogUtils.splitFailureMessage("startIntents", "RemoteException"), e4);
            }
        }
    }

    public void startIntentsWithLegacyTransition(PendingIntent pendingIntent, int i4, ShortcutInfo shortcutInfo, Bundle bundle, PendingIntent pendingIntent2, int i5, ShortcutInfo shortcutInfo2, Bundle bundle2, int i6, float f4, RemoteAnimationAdapter remoteAnimationAdapter, InstanceId instanceId) {
        if (this.mSystemUiProxy != null) {
            try {
                this.mSplitScreen.startIntentsWithLegacyTransition(pendingIntent, i4, shortcutInfo, bundle, pendingIntent2, i5, shortcutInfo2, bundle2, i6, f4, remoteAnimationAdapter, instanceId);
            } catch (RemoteException e4) {
                Log.w(TAG, LogUtils.splitFailureMessage("startIntentsWithLegacyTransition", "RemoteException"), e4);
            }
        }
    }

    public void startOneHandedMode() {
        IOneHanded iOneHanded = this.mOneHanded;
        if (iOneHanded != null) {
            try {
                iOneHanded.startOneHanded();
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call startOneHandedMode", e4);
            }
        }
    }

    public boolean startRecentsActivity(Intent intent, ActivityOptions activityOptions, final RecentsAnimationListener recentsAnimationListener) {
        if (this.mRecentTasks == null) {
            return false;
        }
        IRecentsAnimationRunner iRecentsAnimationRunner = new IRecentsAnimationRunner.Stub() { // from class: com.android.quickstep.SystemUiProxy.1
            public void onAnimationCanceled(int[] iArr, TaskSnapshot[] taskSnapshotArr) {
                recentsAnimationListener.onAnimationCanceled(ThumbnailData.wrap(iArr, taskSnapshotArr));
            }

            public void onAnimationStart(IRecentsAnimationController iRecentsAnimationController, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, Rect rect, Rect rect2) {
                recentsAnimationListener.onAnimationStart(new RecentsAnimationControllerCompat(iRecentsAnimationController), remoteAnimationTargetArr, remoteAnimationTargetArr2, rect, rect2);
            }

            public void onTasksAppeared(RemoteAnimationTarget[] remoteAnimationTargetArr) {
                recentsAnimationListener.onTasksAppeared(remoteAnimationTargetArr);
            }
        };
        try {
            this.mRecentTasks.startRecentsTransition(this.mRecentsPendingIntent, intent, activityOptions.toBundle(), this.mContext.getIApplicationThread(), iRecentsAnimationRunner);
            return true;
        } catch (RemoteException e4) {
            Log.e(TAG, "Error starting recents via shell", e4);
            return false;
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void startScreenPinning(int i4) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.startScreenPinning(i4);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call startScreenPinning", e4);
            }
        }
    }

    public void startShortcut(String str, String str2, int i4, Bundle bundle, UserHandle userHandle, InstanceId instanceId) {
        ISplitScreen iSplitScreen = this.mSplitScreen;
        if (iSplitScreen != null) {
            try {
                iSplitScreen.startShortcut(str, str2, i4, bundle, userHandle, instanceId);
            } catch (RemoteException e4) {
                Log.w(TAG, LogUtils.splitFailureMessage("startShortcut", "RemoteException"), e4);
            }
        }
    }

    public void startShortcutAndTask(ShortcutInfo shortcutInfo, Bundle bundle, int i4, Bundle bundle2, int i5, float f4, RemoteTransition remoteTransition, InstanceId instanceId) {
        if (this.mSystemUiProxy != null) {
            try {
                this.mSplitScreen.startShortcutAndTask(shortcutInfo, bundle, i4, bundle2, i5, f4, remoteTransition, instanceId);
            } catch (RemoteException e4) {
                Log.w(TAG, LogUtils.splitFailureMessage("startShortcutAndTask", "RemoteException"), e4);
            }
        }
    }

    public void startShortcutAndTaskWithLegacyTransition(ShortcutInfo shortcutInfo, Bundle bundle, int i4, Bundle bundle2, int i5, float f4, RemoteAnimationAdapter remoteAnimationAdapter, InstanceId instanceId) {
        if (this.mSystemUiProxy != null) {
            try {
                this.mSplitScreen.startShortcutAndTaskWithLegacyTransition(shortcutInfo, bundle, i4, bundle2, i5, f4, remoteAnimationAdapter, instanceId);
            } catch (RemoteException e4) {
                Log.w(TAG, LogUtils.splitFailureMessage("startShortcutAndTaskWithLegacyTransition", "RemoteException"), e4);
            }
        }
    }

    public Rect startSwipePipToHome(ComponentName componentName, ActivityInfo activityInfo, PictureInPictureParams pictureInPictureParams, int i4, Rect rect) {
        IPip iPip = this.mPip;
        if (iPip != null) {
            try {
                return iPip.startSwipePipToHome(componentName, activityInfo, pictureInPictureParams, i4, rect);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call startSwipePipToHome", e4);
                return null;
            }
        }
        return null;
    }

    public void startTasks(int i4, Bundle bundle, int i5, Bundle bundle2, int i6, float f4, RemoteTransition remoteTransition, InstanceId instanceId) {
        if (this.mSystemUiProxy != null) {
            try {
                this.mSplitScreen.startTasks(i4, bundle, i5, bundle2, i6, f4, remoteTransition, instanceId);
            } catch (RemoteException e4) {
                Log.w(TAG, LogUtils.splitFailureMessage("startTasks", "RemoteException"), e4);
            }
        }
    }

    public void startTasksWithLegacyTransition(int i4, Bundle bundle, int i5, Bundle bundle2, int i6, float f4, RemoteAnimationAdapter remoteAnimationAdapter, InstanceId instanceId) {
        if (this.mSystemUiProxy != null) {
            try {
                this.mSplitScreen.startTasksWithLegacyTransition(i4, bundle, i5, bundle2, i6, f4, remoteAnimationAdapter, instanceId);
            } catch (RemoteException e4) {
                Log.w(TAG, LogUtils.splitFailureMessage("startTasksWithLegacyTransition", "RemoteException"), e4);
            }
        }
    }

    public void stashDesktopApps(int i4) {
        IDesktopMode iDesktopMode = this.mDesktopMode;
        if (iDesktopMode != null) {
            try {
                iDesktopMode.stashDesktopApps(i4);
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call stashDesktopApps", e4);
            }
        }
    }

    public void stopOneHandedMode() {
        IOneHanded iOneHanded = this.mOneHanded;
        if (iOneHanded != null) {
            try {
                iOneHanded.stopOneHanded();
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call stopOneHandedMode", e4);
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void stopScreenPinning() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.stopScreenPinning();
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call stopScreenPinning", e4);
            }
        }
    }

    public void stopSwipePipToHome(int i4, ComponentName componentName, Rect rect, SurfaceControl surfaceControl) {
        IPip iPip = this.mPip;
        if (iPip != null) {
            try {
                iPip.stopSwipePipToHome(i4, componentName, rect, surfaceControl);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call stopSwipePipToHome");
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void takeScreenshot(ScreenshotRequest screenshotRequest) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.takeScreenshot(screenshotRequest);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call takeScreenshot");
            }
        }
    }

    @Override // com.android.systemui.shared.recents.ISystemUiProxy
    public void toggleNotificationPanel() {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.toggleNotificationPanel();
            } catch (RemoteException e4) {
                Log.w(TAG, "Failed call toggleNotificationPanel", e4);
            }
        }
    }

    public void unregisterRecentTasksListener(IRecentTasksListener iRecentTasksListener) {
        IRecentTasks iRecentTasks = this.mRecentTasks;
        if (iRecentTasks != null) {
            try {
                iRecentTasks.unregisterRecentTasksListener(iRecentTasksListener);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call unregisterRecentTasksListener");
            }
        }
        this.mRecentTasksListener = null;
    }

    public void unregisterRemoteTransition(RemoteTransition remoteTransition) {
        IShellTransitions iShellTransitions = this.mShellTransitions;
        if (iShellTransitions != null) {
            try {
                iShellTransitions.unregisterRemote(remoteTransition);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call registerRemoteTransition");
            }
        }
        this.mRemoteTransitions.remove(remoteTransition);
    }

    public void unregisterSplitScreenListener(ISplitScreenListener iSplitScreenListener) {
        ISplitScreen iSplitScreen = this.mSplitScreen;
        if (iSplitScreen != null) {
            try {
                iSplitScreen.unregisterSplitScreenListener(iSplitScreenListener);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call unregisterSplitScreenListener");
            }
        }
        this.mSplitScreenListener = null;
    }

    public void unregisterSplitSelectListener(ISplitSelectListener iSplitSelectListener) {
        ISplitScreen iSplitScreen = this.mSplitScreen;
        if (iSplitScreen != null) {
            try {
                iSplitScreen.unregisterSplitSelectListener(iSplitSelectListener);
            } catch (RemoteException unused) {
                Log.w(TAG, "Failed call unregisterSplitSelectListener");
            }
        }
        this.mSplitSelectListener = null;
    }

    public void unshareTransactionQueue() {
        IBinder iBinder = this.mOriginalTransactionToken;
        if (iBinder == null) {
            return;
        }
        SurfaceControl.Transaction.setDefaultApplyToken(iBinder);
        this.mOriginalTransactionToken = null;
    }

    public void onOverviewShown(boolean z4, String str) {
        ISystemUiProxy iSystemUiProxy = this.mSystemUiProxy;
        if (iSystemUiProxy != null) {
            try {
                iSystemUiProxy.onOverviewShown(z4);
            } catch (RemoteException e4) {
                Log.w(str, "Failed call onOverviewShown from: ".concat(z4 ? "home" : "app"), e4);
            }
        }
    }

    private void setLauncherKeepClearAreaHeight(int i4, int i5) {
        boolean z4 = true;
        boolean z5 = i4 != 0;
        if (z5 == this.mLastLauncherKeepClearAreaHeightVisible && i5 == this.mLastLauncherKeepClearAreaHeight) {
            z4 = false;
        }
        IPip iPip = this.mPip;
        if (iPip == null || !z4) {
            return;
        }
        this.mLastLauncherKeepClearAreaHeightVisible = z5;
        this.mLastLauncherKeepClearAreaHeight = i5;
        try {
            iPip.setLauncherKeepClearAreaHeight(z5, i5);
        } catch (RemoteException e4) {
            Log.w(TAG, "Failed call setLauncherKeepClearAreaHeight visible: " + z5 + " height: " + i5, e4);
        }
    }
}
