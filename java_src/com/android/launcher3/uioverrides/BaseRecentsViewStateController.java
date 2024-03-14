package com.android.launcher3.uioverrides;

import com.android.launcher3.LauncherState;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.quickstep.views.RecentsView;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public abstract class BaseRecentsViewStateController implements StateManager.StateHandler {
    protected final QuickstepLauncher mLauncher;
    protected final RecentsView mRecentsView;

    public BaseRecentsViewStateController(QuickstepLauncher quickstepLauncher) {
        this.mLauncher = quickstepLauncher;
        this.mRecentsView = (RecentsView) quickstepLauncher.getOverviewPanel();
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public final void setStateWithAnimation(Object obj, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation) {
        LauncherState launcherState = (LauncherState) obj;
        if (stateAnimationConfig.hasAnimationFlag(2)) {
            return;
        }
        setStateWithAnimationInternal(launcherState, stateAnimationConfig, pendingAnimation);
        pendingAnimation.addEndListener(new Consumer() { // from class: com.android.launcher3.uioverrides.a
            @Override // java.util.function.Consumer
            public final void accept(Object obj2) {
                BaseRecentsViewStateController baseRecentsViewStateController = BaseRecentsViewStateController.this;
                baseRecentsViewStateController.getClass();
                if (((Boolean) obj2).booleanValue()) {
                    return;
                }
                baseRecentsViewStateController.mRecentsView.reset();
            }
        });
    }

    public abstract void setStateWithAnimationInternal(LauncherState launcherState, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation);
}
