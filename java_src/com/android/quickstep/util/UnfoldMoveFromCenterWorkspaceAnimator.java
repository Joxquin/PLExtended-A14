package com.android.quickstep.util;

import android.view.View;
import android.view.WindowManager;
import com.android.launcher3.CellLayout;
import com.android.launcher3.Launcher;
import com.android.launcher3.ShortcutAndWidgetContainer;
import com.android.launcher3.Workspace;
import java.util.function.Consumer;
import w1.C1452d;
/* loaded from: classes.dex */
public class UnfoldMoveFromCenterWorkspaceAnimator extends BaseUnfoldMoveFromCenterAnimator {
    private final Launcher mLauncher;

    public UnfoldMoveFromCenterWorkspaceAnimator(Launcher launcher, WindowManager windowManager, C1452d c1452d) {
        super(windowManager, c1452d);
        this.mLauncher = launcher;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPrepareViewsForAnimation$0(View view) {
        CellLayout cellLayout = (CellLayout) view;
        ShortcutAndWidgetContainer shortcutsAndWidgets = cellLayout.getShortcutsAndWidgets();
        setClipChildren(cellLayout, false);
        setClipToPadding(cellLayout, false);
        for (int i4 = 0; i4 < shortcutsAndWidgets.getChildCount(); i4++) {
            registerViewForAnimation(shortcutsAndWidgets.getChildAt(i4));
        }
    }

    @Override // com.android.quickstep.util.BaseUnfoldMoveFromCenterAnimator
    public void onPrepareViewsForAnimation() {
        Workspace workspace = this.mLauncher.getWorkspace();
        workspace.forEachVisiblePage(new Consumer() { // from class: com.android.quickstep.util.e0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                UnfoldMoveFromCenterWorkspaceAnimator.this.lambda$onPrepareViewsForAnimation$0((View) obj);
            }
        });
        setClipChildren(workspace, false);
        setClipToPadding(workspace, true);
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
