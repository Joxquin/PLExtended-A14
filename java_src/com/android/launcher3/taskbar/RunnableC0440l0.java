package com.android.launcher3.taskbar;
/* renamed from: com.android.launcher3.taskbar.l0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0440l0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5141d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TaskbarManager f5142e;

    public /* synthetic */ RunnableC0440l0(TaskbarManager taskbarManager, int i4) {
        this.f5141d = i4;
        this.f5142e = taskbarManager;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5141d) {
            case 0:
                TaskbarManager.b(this.f5142e);
                return;
            default:
                TaskbarManager.d(this.f5142e);
                return;
        }
    }
}
