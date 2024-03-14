package com.google.android.apps.nexuslauncher;

import android.animation.Animator;
import com.android.launcher3.BaseActivity;
import com.android.launcher3.LauncherState;
import com.android.launcher3.statemanager.BaseState;
import com.android.launcher3.util.ActivityTracker;
import com.google.android.apps.nexuslauncher.allapps.C0704u1;
import com.google.android.apps.nexuslauncher.allapps.DeviceSearchInputView;
/* loaded from: classes.dex */
public final class a implements ActivityTracker.SchedulerCallback {

    /* renamed from: d  reason: collision with root package name */
    public final String f6491d;

    public a(String str) {
        this.f6491d = str;
    }

    @Override // com.android.launcher3.util.ActivityTracker.SchedulerCallback
    public final boolean init(BaseActivity baseActivity, boolean z4) {
        NexusLauncherActivity nexusLauncherActivity = (NexusLauncherActivity) baseActivity;
        if (nexusLauncherActivity == null) {
            return false;
        }
        boolean z5 = nexusLauncherActivity.getDeviceProfile().isTablet;
        String str = this.f6491d;
        if (!z5 && "com.android.launcher3.action.SHOW_HYBRID_HOTSEAT_EDU".equals(str)) {
            nexusLauncherActivity.getHotseatPredictionController().showEdu();
        } else if ("com.android.launcher3.action.SHOW_ALLAPPS_SEARCH_EDU".equals(str)) {
            DeviceSearchInputView deviceSearchInputView = (DeviceSearchInputView) nexusLauncherActivity.getAppsView().getSearchUiManager();
            if (deviceSearchInputView instanceof DeviceSearchInputView) {
                nexusLauncherActivity.getStateManager().goToState((BaseState) LauncherState.ALL_APPS, true, (Animator.AnimatorListener) new C0704u1(deviceSearchInputView));
            }
        }
        return false;
    }
}
