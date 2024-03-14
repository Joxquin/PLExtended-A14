package com.google.android.apps.nexuslauncher.allapps;

import android.animation.AnimatorSet;
import android.text.TextUtils;
import android.util.Log;
import com.android.launcher3.LauncherState;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.uioverrides.states.AllAppsState;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import com.google.android.apps.nexuslauncher.search.SearchConfigProto$TapTarget;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class U extends C0719y0 implements StateManager.StateListener {

    /* renamed from: P  reason: collision with root package name */
    public String f6894P;

    public U(NexusLauncherActivity nexusLauncherActivity) {
        super(nexusLauncherActivity);
        ((NexusLauncherActivity) this.f7271d).getStateManager().addStateListener(this);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0719y0
    public final void D() {
        ((NexusLauncherActivity) this.f7271d).getStateManager().goToState(LauncherState.ALL_APPS);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0719y0
    public final void F() {
        if (((NexusLauncherActivity) this.f7271d).hasBeenResumed()) {
            ((NexusLauncherActivity) this.f7271d).registerActivityLifecycleCallbacks(new T(this));
        } else {
            ((NexusLauncherActivity) this.f7271d).recreate();
        }
    }

    public final void Q(String str, OneSearchSessionManager$ZeroEntryState oneSearchSessionManager$ZeroEntryState, boolean z4) {
        if (!this.f7283p.f7179b) {
            Log.e("LauncherSSManager", "Unable to start universal search. ENABLE_ONE_SEARCH flag disabled");
            return;
        }
        J(oneSearchSessionManager$ZeroEntryState);
        B();
        if (z4) {
            StateAnimationConfig stateAnimationConfig = new StateAnimationConfig();
            AllAppsState allAppsState = LauncherState.ALL_APPS;
            stateAnimationConfig.duration = allAppsState.getTransitionDuration((NexusLauncherActivity) this.f7271d, true);
            StateManager stateManager = ((NexusLauncherActivity) this.f7271d).getStateManager();
            AnimatorSet createAtomicAnimation = stateManager.createAtomicAnimation((LauncherState) stateManager.getState(), allAppsState, stateAnimationConfig);
            stateManager.setCurrentAnimation(createAtomicAnimation, allAppsState);
            createAtomicAnimation.start();
        }
        UniversalSearchInputView universalSearchInputView = (UniversalSearchInputView) ((NexusLauncherActivity) this.f7271d).getAppsView().getSearchUiManager();
        universalSearchInputView.b(str, SearchConfigProto$TapTarget.NONE);
        if (TextUtils.isEmpty(str)) {
            universalSearchInputView.o();
        }
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0719y0, com.android.launcher3.ExtendedEditText.OnBackKeyListener
    public final boolean onBackKey() {
        ((NexusLauncherActivity) this.f7271d).onStateBack();
        return true;
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public final void onStateTransitionComplete(Object obj) {
        ((ArrayList) this.f7278k).forEach(new S((LauncherState) obj, 1));
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public final void onStateTransitionStart(Object obj) {
        ((ArrayList) this.f7278k).forEach(new S((LauncherState) obj, 0));
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0719y0
    public final boolean t() {
        return ((NexusLauncherActivity) this.f7271d).isInState(LauncherState.ALL_APPS);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0719y0
    public final boolean u() {
        return ((NexusLauncherActivity) this.f7271d).isInState(LauncherState.NORMAL);
    }
}
