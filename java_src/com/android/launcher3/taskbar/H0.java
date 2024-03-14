package com.android.launcher3.taskbar;
/* loaded from: classes.dex */
public final /* synthetic */ class H0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5027d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TaskbarStashController f5028e;

    public /* synthetic */ H0(TaskbarStashController taskbarStashController, int i4) {
        this.f5027d = i4;
        this.f5028e = taskbarStashController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5027d) {
            case 0:
                TaskbarStashController.j(this.f5028e);
                return;
            case 1:
                TaskbarStashController.e(this.f5028e);
                return;
            default:
                TaskbarStashController.i(this.f5028e);
                return;
        }
    }
}
