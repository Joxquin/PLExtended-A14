package com.google.android.apps.nexuslauncher.allapps;

import com.android.launcher3.allapps.AllAppsTransitionListener;
import com.google.android.apps.nexuslauncher.allapps.UniversalSearchInputView;
/* loaded from: classes.dex */
public final class d3 implements AllAppsTransitionListener {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ UniversalSearchInputView f7030d;

    public d3(UniversalSearchInputView universalSearchInputView) {
        this.f7030d = universalSearchInputView;
    }

    @Override // com.android.launcher3.allapps.AllAppsTransitionListener
    public final void onAllAppsTransitionEnd(boolean z4) {
        UniversalSearchInputView universalSearchInputView = this.f7030d;
        if (!z4) {
            universalSearchInputView.f6942w.f7595m.clearFocus();
        } else if (universalSearchInputView.f6908H) {
            universalSearchInputView.f6942w.f7595m.requestFocus();
            universalSearchInputView.f6942w.f7595m.setCursorVisible(true);
        }
        universalSearchInputView.f6908H = false;
        universalSearchInputView.updateState();
        universalSearchInputView.p();
    }

    @Override // com.android.launcher3.allapps.AllAppsTransitionListener
    public final void onAllAppsTransitionStart(boolean z4) {
        UniversalSearchInputView universalSearchInputView = this.f7030d;
        universalSearchInputView.f6908H |= universalSearchInputView.mState == UniversalSearchInputView.QsbState.ZERO_FOCUSED;
        if (z4) {
            C0719y0 c0719y0 = universalSearchInputView.f6932m;
            if (!c0719y0.f7291x && c0719y0.m()) {
                universalSearchInputView.f6908H = true;
            }
        }
        universalSearchInputView.updateState();
        universalSearchInputView.p();
    }
}
