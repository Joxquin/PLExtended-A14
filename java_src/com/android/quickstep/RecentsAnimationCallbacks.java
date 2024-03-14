package com.android.quickstep;

import android.graphics.Rect;
import android.os.Handler;
import android.util.ArraySet;
import android.view.RemoteAnimationTarget;
import com.android.launcher3.Utilities;
import com.android.launcher3.util.Executors;
import com.android.quickstep.util.ActiveGestureErrorDetector;
import com.android.quickstep.util.ActiveGestureLog;
import com.android.systemui.shared.system.RecentsAnimationControllerCompat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class RecentsAnimationCallbacks implements com.android.systemui.shared.system.RecentsAnimationListener {
    private final boolean mAllowMinimizeSplitScreen;
    private boolean mCancelled;
    private RecentsAnimationController mController;
    private final Set mListeners = new ArraySet();
    private final SystemUiProxy mSystemUiProxy;

    /* loaded from: classes.dex */
    public interface RecentsAnimationListener {
        default void onRecentsAnimationCanceled(HashMap hashMap) {
        }

        default void onRecentsAnimationFinished(RecentsAnimationController recentsAnimationController) {
        }

        default void onRecentsAnimationStart(RecentsAnimationController recentsAnimationController, RecentsAnimationTargets recentsAnimationTargets) {
        }

        default boolean onSwitchToScreenshot(Runnable runnable) {
            return false;
        }

        default void onTasksAppeared(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        }
    }

    public RecentsAnimationCallbacks(SystemUiProxy systemUiProxy, boolean z4) {
        this.mSystemUiProxy = systemUiProxy;
        this.mAllowMinimizeSplitScreen = z4;
    }

    private void classifyTargets(RemoteAnimationTarget[] remoteAnimationTargetArr, ArrayList arrayList, ArrayList arrayList2) {
        for (RemoteAnimationTarget remoteAnimationTarget : remoteAnimationTargetArr) {
            if (remoteAnimationTarget.windowType == 2034) {
                arrayList2.add(remoteAnimationTarget);
            } else {
                arrayList.add(remoteAnimationTarget);
            }
        }
    }

    private RecentsAnimationListener[] getListeners() {
        Set set = this.mListeners;
        return (RecentsAnimationListener[]) set.toArray(new RecentsAnimationListener[set.size()]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAnimationCanceled$2(HashMap hashMap) {
        ActiveGestureLog.INSTANCE.addLog("RecentsAnimationCallbacks.onAnimationCanceled", ActiveGestureErrorDetector.GestureEvent.CANCEL_RECENTS_ANIMATION);
        for (RecentsAnimationListener recentsAnimationListener : getListeners()) {
            recentsAnimationListener.onRecentsAnimationCanceled(hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAnimationFinished$5(RecentsAnimationController recentsAnimationController) {
        ActiveGestureLog.INSTANCE.addLog("RecentsAnimationCallbacks.onAnimationFinished");
        for (RecentsAnimationListener recentsAnimationListener : getListeners()) {
            recentsAnimationListener.onRecentsAnimationFinished(recentsAnimationController);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$onAnimationStart$0(RemoteAnimationTarget remoteAnimationTarget) {
        return remoteAnimationTarget.mode == 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAnimationStart$1(RecentsAnimationTargets recentsAnimationTargets) {
        ActiveGestureLog.INSTANCE.addLog("RecentsAnimationCallbacks.onAnimationStart", recentsAnimationTargets.apps.length, ActiveGestureErrorDetector.GestureEvent.START_RECENTS_ANIMATION);
        for (RecentsAnimationListener recentsAnimationListener : getListeners()) {
            recentsAnimationListener.onRecentsAnimationStart(this.mController, recentsAnimationTargets);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSwitchToScreenshot$4(Runnable runnable) {
        for (RecentsAnimationListener recentsAnimationListener : getListeners()) {
            if (recentsAnimationListener.onSwitchToScreenshot(runnable)) {
                return;
            }
        }
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onTasksAppeared$3(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        ActiveGestureLog.INSTANCE.addLog("RecentsAnimationCallbacks.onTasksAppeared", ActiveGestureErrorDetector.GestureEvent.TASK_APPEARED);
        for (RecentsAnimationListener recentsAnimationListener : getListeners()) {
            recentsAnimationListener.onTasksAppeared(remoteAnimationTargetArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onAnimationFinished(RecentsAnimationController recentsAnimationController) {
        Utilities.postAsyncCallback(Executors.MAIN_EXECUTOR.getHandler(), new RunnableC0553u0(this, recentsAnimationController, 1));
    }

    public void addListener(RecentsAnimationListener recentsAnimationListener) {
        this.mListeners.add(recentsAnimationListener);
    }

    public void notifyAnimationCanceled() {
        this.mCancelled = true;
        onAnimationCanceled(new HashMap());
    }

    @Override // com.android.systemui.shared.system.RecentsAnimationListener
    public final void onAnimationCanceled(HashMap hashMap) {
        Utilities.postAsyncCallback(Executors.MAIN_EXECUTOR.getHandler(), new RunnableC0553u0(this, hashMap, 0));
    }

    @Deprecated
    public final void onAnimationStart(RecentsAnimationControllerCompat recentsAnimationControllerCompat, RemoteAnimationTarget[] remoteAnimationTargetArr, Rect rect, Rect rect2) {
        onAnimationStart(recentsAnimationControllerCompat, remoteAnimationTargetArr, new RemoteAnimationTarget[0], rect, rect2);
    }

    @Override // com.android.systemui.shared.system.RecentsAnimationListener
    public boolean onSwitchToScreenshot(Runnable runnable) {
        Utilities.postAsyncCallback(Executors.MAIN_EXECUTOR.getHandler(), new RunnableC0553u0(this, runnable, 3));
        return true;
    }

    @Override // com.android.systemui.shared.system.RecentsAnimationListener
    public void onTasksAppeared(RemoteAnimationTarget[] remoteAnimationTargetArr) {
        Utilities.postAsyncCallback(Executors.MAIN_EXECUTOR.getHandler(), new RunnableC0553u0(this, remoteAnimationTargetArr, 2));
    }

    public void removeAllListeners() {
        this.mListeners.clear();
    }

    public void removeListener(RecentsAnimationListener recentsAnimationListener) {
        this.mListeners.remove(recentsAnimationListener);
    }

    @Override // com.android.systemui.shared.system.RecentsAnimationListener
    public final void onAnimationStart(RecentsAnimationControllerCompat recentsAnimationControllerCompat, RemoteAnimationTarget[] remoteAnimationTargetArr, RemoteAnimationTarget[] remoteAnimationTargetArr2, Rect rect, Rect rect2) {
        RemoteAnimationTarget[] remoteAnimationTargetArr3;
        if (Arrays.stream(remoteAnimationTargetArr).filter(new C0581v0()).count() == 0) {
            ActiveGestureLog.INSTANCE.addLog("RecentsAnimationCallbacks.onAnimationStart (canceled)", 0, ActiveGestureErrorDetector.GestureEvent.START_RECENTS_ANIMATION);
            notifyAnimationCanceled();
            recentsAnimationControllerCompat.finish(false, false);
            return;
        }
        this.mController = new RecentsAnimationController(recentsAnimationControllerCompat, this.mAllowMinimizeSplitScreen, new Consumer() { // from class: com.android.quickstep.w0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                RecentsAnimationCallbacks.this.onAnimationFinished((RecentsAnimationController) obj);
            }
        });
        if (this.mCancelled) {
            Handler handler = Executors.MAIN_EXECUTOR.getHandler();
            final RecentsAnimationController recentsAnimationController = this.mController;
            Objects.requireNonNull(recentsAnimationController);
            Utilities.postAsyncCallback(handler, new Runnable() { // from class: com.android.quickstep.x0
                @Override // java.lang.Runnable
                public final void run() {
                    RecentsAnimationController.this.finishAnimationToApp();
                }
            });
            return;
        }
        if (!TaskAnimationManager.ENABLE_SHELL_TRANSITIONS) {
            remoteAnimationTargetArr3 = this.mSystemUiProxy.onGoingToRecentsLegacy(remoteAnimationTargetArr);
        } else {
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            classifyTargets(remoteAnimationTargetArr, arrayList, arrayList2);
            remoteAnimationTargetArr = (RemoteAnimationTarget[]) arrayList.toArray(new RemoteAnimationTarget[arrayList.size()]);
            remoteAnimationTargetArr3 = (RemoteAnimationTarget[]) arrayList2.toArray(new RemoteAnimationTarget[arrayList2.size()]);
        }
        RemoteAnimationTarget[] remoteAnimationTargetArr4 = remoteAnimationTargetArr;
        if (remoteAnimationTargetArr3 == null) {
            remoteAnimationTargetArr3 = new RemoteAnimationTarget[0];
        }
        Utilities.postAsyncCallback(Executors.MAIN_EXECUTOR.getHandler(), new RunnableC0553u0(this, new RecentsAnimationTargets(remoteAnimationTargetArr4, remoteAnimationTargetArr2, remoteAnimationTargetArr3, rect, rect2), 4));
    }
}
