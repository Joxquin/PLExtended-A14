package com.google.android.apps.nexuslauncher.allapps;

import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.taskbar.overlay.TaskbarOverlayContext;
/* loaded from: classes.dex */
public final class P2 extends C0719y0 {

    /* renamed from: P  reason: collision with root package name */
    public final /* synthetic */ TaskbarToastSessionController f6677P;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public P2(TaskbarToastSessionController taskbarToastSessionController, TaskbarOverlayContext taskbarOverlayContext) {
        super(taskbarOverlayContext);
        this.f6677P = taskbarToastSessionController;
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0719y0
    public final void E() {
        AbstractFloatingView.closeAllOpenViews(this.f6677P.f6889d);
    }

    @Override // com.google.android.apps.nexuslauncher.allapps.C0719y0, com.android.launcher3.ExtendedEditText.OnBackKeyListener
    public final boolean onBackKey() {
        return s();
    }
}
