package com.android.quickstep.util;

import android.view.WindowManager;
import com.android.launcher3.Hotseat;
import com.android.launcher3.Launcher;
import com.android.launcher3.ShortcutAndWidgetContainer;
import w1.C1452d;
/* loaded from: classes.dex */
public class UnfoldMoveFromCenterHotseatAnimator extends BaseUnfoldMoveFromCenterAnimator {
    private final Launcher mLauncher;

    public UnfoldMoveFromCenterHotseatAnimator(Launcher launcher, WindowManager windowManager, C1452d c1452d) {
        super(windowManager, c1452d);
        this.mLauncher = launcher;
    }

    @Override // com.android.quickstep.util.BaseUnfoldMoveFromCenterAnimator
    public void onPrepareViewsForAnimation() {
        Hotseat hotseat = this.mLauncher.getHotseat();
        ShortcutAndWidgetContainer shortcutsAndWidgets = hotseat.getShortcutsAndWidgets();
        setClipChildren(hotseat, false);
        setClipToPadding(hotseat, false);
        for (int i4 = 0; i4 < shortcutsAndWidgets.getChildCount(); i4++) {
            registerViewForAnimation(shortcutsAndWidgets.getChildAt(i4));
        }
        super.onPrepareViewsForAnimation();
    }

    @Override // com.android.quickstep.util.BaseUnfoldMoveFromCenterAnimator, t1.InterfaceC1405d
    public void onTransitionFinished() {
        restoreClippings();
        super.onTransitionFinished();
    }

    @Override // com.android.quickstep.util.BaseUnfoldMoveFromCenterAnimator, t1.InterfaceC1405d
    public /* bridge */ /* synthetic */ void onTransitionFinishing() {
    }
}
