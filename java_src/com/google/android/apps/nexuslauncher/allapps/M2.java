package com.google.android.apps.nexuslauncher.allapps;

import android.view.WindowInsetsController;
import com.android.launcher3.taskbar.TaskbarDragController;
import com.android.launcher3.taskbar.allapps.TaskbarAllAppsContainerView;
/* loaded from: classes.dex */
public final /* synthetic */ class M2 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f6634d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Object f6635e;

    public /* synthetic */ M2(int i4, Object obj) {
        this.f6634d = i4;
        this.f6635e = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        WindowInsetsController windowInsetsController;
        switch (this.f6634d) {
            case 0:
                ((TaskbarDragController) this.f6635e).onPreDragAnimationEnd();
                return;
            default:
                TaskbarToastSessionController taskbarToastSessionController = (TaskbarToastSessionController) this.f6635e;
                if (taskbarToastSessionController.f6893h == null) {
                    return;
                }
                TaskbarAllAppsContainerView appsView = taskbarToastSessionController.f6889d.getAppsView();
                if (appsView != null && (windowInsetsController = appsView.getWindowInsetsController()) != null) {
                    windowInsetsController.removeOnControllableInsetsChangedListener(taskbarToastSessionController.f6893h);
                }
                taskbarToastSessionController.f6893h = null;
                return;
        }
    }
}
