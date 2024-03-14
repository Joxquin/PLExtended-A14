package com.android.launcher3.statemanager;

import android.content.res.Configuration;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.BaseDraggingActivity;
import com.android.launcher3.LauncherRootView;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.util.window.WindowManagerProxy;
import com.android.launcher3.views.BaseDragLayer;
import java.util.List;
/* loaded from: classes.dex */
public abstract class StatefulActivity extends BaseDraggingActivity {
    private boolean mDeferredResumePending;
    protected Configuration mOldConfig;
    private int mOldRotation;
    private LauncherRootView mRootView;
    public final Handler mHandler = new Handler();
    private final Runnable mHandleDeferredResume = new Runnable() { // from class: com.android.launcher3.statemanager.c
        @Override // java.lang.Runnable
        public final void run() {
            StatefulActivity.this.handleDeferredResume();
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void handleDeferredResume() {
        if (!hasBeenResumed() || getStateManager().getState().hasFlag(1)) {
            this.mDeferredResumePending = true;
            return;
        }
        addActivityFlags(4);
        onDeferredResumed();
        this.mDeferredResumePending = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onStop$0(BaseState baseState, BaseDragLayer baseDragLayer, int i4) {
        if (getStateManager().isInStableState(baseState) && baseDragLayer.getAlpha() >= 1.0f && baseDragLayer.getChildCount() == i4) {
            return;
        }
        onUiChangedWhileSleeping();
    }

    public abstract void collectStateHandlers(List list);

    public StateManager.AtomicAnimationFactory createAtomicAnimationFactory() {
        return new StateManager.AtomicAnimationFactory(0);
    }

    public void enterStageSplitFromRunningApp(boolean z4) {
    }

    @Override // android.app.Activity
    public View findViewById(int i4) {
        return this.mRootView.findViewById(i4);
    }

    public abstract StateManager getStateManager();

    public void handleConfigurationChanged(Configuration configuration) {
        int diff = configuration.diff(this.mOldConfig);
        int rotation = ((WindowManagerProxy) WindowManagerProxy.INSTANCE.get(this)).getRotation(this);
        if ((diff & 1152) != 0 || rotation != this.mOldRotation) {
            onHandleConfigurationChanged();
        }
        this.mOldConfig.setTo(configuration);
        this.mOldRotation = rotation;
    }

    public void inflateRootView(int i4) {
        LauncherRootView launcherRootView = (LauncherRootView) LayoutInflater.from(this).inflate(i4, (ViewGroup) null);
        this.mRootView = launcherRootView;
        launcherRootView.setSystemUiVisibility(1792);
    }

    public boolean isInState(BaseState baseState) {
        return getStateManager().getState() == baseState;
    }

    @Override // com.android.launcher3.BaseDraggingActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        handleConfigurationChanged(configuration);
        super.onConfigurationChanged(configuration);
    }

    @Override // com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mOldConfig = new Configuration(getResources().getConfiguration());
        this.mOldRotation = ((WindowManagerProxy) WindowManagerProxy.INSTANCE.get(this)).getRotation(this);
    }

    public void onDeferredResumed() {
    }

    public abstract void onHandleConfigurationChanged();

    public void onIdpChanged(boolean z4) {
        onHandleConfigurationChanged();
    }

    @Override // com.android.launcher3.BaseDraggingActivity, com.android.launcher3.BaseActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.mHandler.removeCallbacks(this.mHandleDeferredResume);
        Utilities.postAsyncCallback(this.mHandler, this.mHandleDeferredResume);
    }

    public void onStateSetEnd(BaseState baseState) {
    }

    public void onStateSetStart(BaseState baseState) {
        if (this.mDeferredResumePending) {
            handleDeferredResume();
        }
        LauncherState launcherState = LauncherState.NORMAL;
        if (baseState.hasFlag(128)) {
            AbstractFloatingView.closeAllOpenViews(this, !baseState.hasFlag(1));
        }
    }

    @Override // com.android.launcher3.BaseActivity, android.app.Activity
    public void onStop() {
        final BaseDragLayer dragLayer = getDragLayer();
        boolean isUserActive = isUserActive();
        final BaseState state = getStateManager().getState();
        final int childCount = dragLayer.getChildCount();
        super.onStop();
        if (!isChangingConfigurations()) {
            getStateManager().moveToRestState();
        }
        onTrimMemory(20);
        if (isUserActive) {
            dragLayer.post(new Runnable() { // from class: com.android.launcher3.statemanager.d
                @Override // java.lang.Runnable
                public final void run() {
                    StatefulActivity.this.lambda$onStop$0(state, dragLayer, childCount);
                }
            });
        }
    }

    public void onUiChangedWhileSleeping() {
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public void reapplyUi() {
        reapplyUi(true);
    }

    public void runOnBindToTouchInteractionService(Runnable runnable) {
        runnable.run();
    }

    @Override // com.android.launcher3.BaseDraggingActivity
    public final LauncherRootView getRootView() {
        return this.mRootView;
    }

    public void reapplyUi(boolean z4) {
        getRootView().dispatchInsets();
        getStateManager().reapplyState(z4);
    }
}
