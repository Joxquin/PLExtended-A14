package com.android.launcher3.taskbar;
/* renamed from: com.android.launcher3.taskbar.j0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0436j0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5134d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TaskbarLauncherStateController f5135e;

    public /* synthetic */ RunnableC0436j0(TaskbarLauncherStateController taskbarLauncherStateController, int i4) {
        this.f5134d = i4;
        this.f5135e = taskbarLauncherStateController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5134d) {
            case 0:
            default:
                TaskbarLauncherStateController.a(this.f5135e);
                return;
        }
    }
}
