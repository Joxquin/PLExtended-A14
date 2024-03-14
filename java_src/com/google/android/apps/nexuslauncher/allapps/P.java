package com.google.android.apps.nexuslauncher.allapps;

import android.os.Handler;
import android.util.Log;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.animation.Interpolator;
import com.android.launcher3.ExtendedEditText;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.allapps.ActivityAllAppsContainerView;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.anim.PendingAnimation;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.logging.KeyboardStateManager;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.states.StateAnimationConfig;
import com.android.launcher3.uioverrides.states.AllAppsState;
import com.android.launcher3.util.Executors;
import com.android.launcher3.views.ActivityContext;
import com.google.android.apps.nexuslauncher.NexusLauncherActivity;
import java.util.Objects;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class P implements StateManager.StateHandler {

    /* renamed from: h  reason: collision with root package name */
    public static final G f6667h = new G();

    /* renamed from: d  reason: collision with root package name */
    public final NexusLauncherActivity f6668d;

    /* renamed from: e  reason: collision with root package name */
    public L f6669e;

    /* renamed from: f  reason: collision with root package name */
    public H f6670f;

    /* renamed from: g  reason: collision with root package name */
    public LauncherState f6671g;

    public P(NexusLauncherActivity nexusLauncherActivity) {
        this.f6668d = nexusLauncherActivity;
    }

    public static Interpolator b(ActivityContext activityContext, boolean z4, boolean z5) {
        if (!z5) {
            return activityContext.getDeviceProfile().isTablet ? z4 ? y0.e.b(0.15f, 1.0f, y0.e.f12937a) : y0.e.b(0.0f, 0.15f, y0.e.f12937a) : z4 ? y0.e.b(0.333f, 1.0f, y0.e.f12939c) : y0.e.b(0.0f, 0.667f, y0.e.f12938b);
        } else if (FeatureFlags.ENABLE_FLOATING_SEARCH_BAR.get()) {
            return y0.e.f12949m;
        } else {
            float f4 = activityContext.getDeviceProfile().isTablet ? 0.6f : 0.4f;
            if (z4) {
                return y0.e.b(f4, 1.0f, y0.e.f12949m);
            }
            return y0.e.b(0.0f, 1.0f - f4, y0.e.f12949m);
        }
    }

    public Interpolator a(LauncherState launcherState, boolean z4) {
        return b(this.f6668d, launcherState.equals(LauncherState.ALL_APPS), z4);
    }

    public boolean c(LauncherState launcherState) {
        LauncherState launcherState2 = LauncherState.NORMAL;
        NexusLauncherActivity nexusLauncherActivity = this.f6668d;
        if (!nexusLauncherActivity.isInState(launcherState2) || !LauncherState.ALL_APPS.equals(launcherState)) {
            AllAppsState allAppsState = LauncherState.ALL_APPS;
            if ((!nexusLauncherActivity.isInState(allAppsState) || !launcherState2.equals(launcherState)) && (FeatureFlags.ENABLE_ALL_APPS_FROM_OVERVIEW.get() || !nexusLauncherActivity.isInState(allAppsState) || !LauncherState.OVERVIEW.equals(launcherState))) {
                return false;
            }
        }
        return true;
    }

    public void d(ActivityAllAppsContainerView activityAllAppsContainerView) {
        activityAllAppsContainerView.reset(false, false);
    }

    public final void e() {
        if (this.f6670f != null) {
            this.f6668d.getAppsView().getWindowInsetsController().removeOnControllableInsetsChangedListener(this.f6670f);
            this.f6670f = null;
        }
        this.f6671g = null;
    }

    public boolean f(LauncherState launcherState, StateAnimationConfig stateAnimationConfig) {
        return this.f6668d.f6476g.f7283p.f7188k || (stateAnimationConfig.userControlled && !launcherState.equals(LauncherState.ALL_APPS));
    }

    public boolean g(LauncherState launcherState, boolean z4, boolean z5, boolean z6) {
        LauncherState launcherState2 = LauncherState.NORMAL;
        NexusLauncherActivity nexusLauncherActivity = this.f6668d;
        boolean z7 = true;
        boolean z8 = nexusLauncherActivity.isInState(launcherState2) && LauncherState.ALL_APPS.equals(launcherState) && !z4 && (z5 || !z6) && (nexusLauncherActivity.f6476g.f7283p.f7188k || z6);
        if (!nexusLauncherActivity.isInState(LauncherState.ALL_APPS) || !z4 || (!nexusLauncherActivity.f6476g.f7283p.f7188k && !z6)) {
            z7 = z8;
        }
        Log.i("KeyboardInsetsHandler", "\nshouldKeyboardTransition, status=" + z7 + " toState:" + launcherState + nexusLauncherActivity.getStateManager().toString() + " isImeShown:" + z4 + " enableKeyboardAlwaysUp:" + z5 + " enableKeyboardSync:" + nexusLauncherActivity.f6476g.f7283p.f7188k + " isUserControlled:" + z6);
        return z7;
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public final void setState(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        L l4 = this.f6669e;
        if (l4 != null) {
            l4.a(3);
        }
        if (launcherState != this.f6671g) {
            e();
        }
        if (LauncherState.ALL_APPS.equals(launcherState)) {
            return;
        }
        this.f6668d.hideKeyboard();
    }

    /* JADX WARN: Type inference failed for: r11v4, types: [com.google.android.apps.nexuslauncher.allapps.H] */
    @Override // com.android.launcher3.statemanager.StateManager.StateHandler
    public final void setStateWithAnimation(Object obj, StateAnimationConfig stateAnimationConfig, PendingAnimation pendingAnimation) {
        NexusLauncherActivity nexusLauncherActivity;
        U u4;
        final ExtendedEditText editText;
        final LauncherState launcherState = (LauncherState) obj;
        L l4 = this.f6669e;
        if (l4 != null) {
            l4.a(3);
        }
        if (launcherState != this.f6671g) {
            e();
        }
        if (!c(launcherState) || !Utilities.ATLEAST_R || Utilities.isRunningInTestHarness() || (u4 = (nexusLauncherActivity = this.f6668d).f6476g) == null) {
            return;
        }
        WindowInsets rootWindowInsets = nexusLauncherActivity.getRootView().getRootWindowInsets();
        if (g(launcherState, rootWindowInsets != null && rootWindowInsets.isVisible(WindowInsets.Type.ime()), u4.m(), stateAnimationConfig.userControlled) && (editText = nexusLauncherActivity.getAppsView().getSearchUiManager().getEditText()) != null) {
            if (stateAnimationConfig.userControlled && (true ^ (this instanceof C0643f))) {
                this.f6669e = LauncherState.ALL_APPS.equals(launcherState) ? new O(nexusLauncherActivity) : new L();
            }
            if (!f(launcherState, stateAnimationConfig)) {
                pendingAnimation.addListener(new K(this, u4, editText, nexusLauncherActivity.getAllAppsController().getShiftRange()));
                return;
            }
            KeyboardStateManager keyboardStateManager = nexusLauncherActivity.getStatsLogManager().keyboardStateManager();
            AllAppsState allAppsState = LauncherState.ALL_APPS;
            if (launcherState.equals(allAppsState)) {
                d(nexusLauncherActivity.getAppsView());
                keyboardStateManager.setKeyboardState(KeyboardStateManager.KeyboardState.SHOW);
            } else {
                keyboardStateManager.setKeyboardState(KeyboardStateManager.KeyboardState.HIDE);
            }
            final Interpolator a4 = a(launcherState, stateAnimationConfig.userControlled);
            final F f4 = new F(launcherState.equals(allAppsState), stateAnimationConfig.getInterpolator(20, y0.e.f12941e), this.f6669e, nexusLauncherActivity.f6482m);
            pendingAnimation.setFloat(f4.f6549b, AnimatedFloat.VALUE, 1.0f, a4);
            e();
            this.f6670f = new WindowInsetsController.OnControllableInsetsChangedListener() { // from class: com.google.android.apps.nexuslauncher.allapps.H
                @Override // android.view.WindowInsetsController.OnControllableInsetsChangedListener
                public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController, int i4) {
                    P p4 = P.this;
                    Interpolator interpolator = a4;
                    F f5 = f4;
                    p4.getClass();
                    if ((WindowInsets.Type.ime() & i4) != 0) {
                        Log.i("KeyboardInsetsHandler", "onControllableInsetsChanged");
                        windowInsetsController.controlWindowInsetsAnimation(WindowInsets.Type.ime(), -1L, interpolator, null, f5);
                        Executors.MAIN_EXECUTOR.post(new J(1, p4));
                    }
                }
            };
            this.f6671g = launcherState;
            nexusLauncherActivity.getAppsView().getWindowInsetsController().addOnControllableInsetsChangedListener(this.f6670f);
            pendingAnimation.addListener(new E(f4, 0));
            pendingAnimation.addEndListener(new Consumer() { // from class: com.google.android.apps.nexuslauncher.allapps.I
                @Override // java.util.function.Consumer
                public final void accept(Object obj2) {
                    LauncherState launcherState2 = LauncherState.this;
                    ExtendedEditText extendedEditText = editText;
                    if (((Boolean) obj2).booleanValue() && launcherState2.equals(LauncherState.NORMAL)) {
                        Handler handler = Executors.MAIN_EXECUTOR.getHandler();
                        Objects.requireNonNull(extendedEditText);
                        handler.post(new J(2, extendedEditText));
                    }
                }
            });
            if (launcherState.equals(allAppsState)) {
                editText.showKeyboard(false);
            }
        }
    }
}
