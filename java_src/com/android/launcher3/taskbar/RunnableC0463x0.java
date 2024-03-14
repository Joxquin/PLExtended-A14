package com.android.launcher3.taskbar;
/* renamed from: com.android.launcher3.taskbar.x0  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class RunnableC0463x0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5170d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ BaseTaskbarContext f5171e;

    public /* synthetic */ RunnableC0463x0(BaseTaskbarContext baseTaskbarContext, int i4) {
        this.f5170d = i4;
        this.f5171e = baseTaskbarContext;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5170d) {
            case 0:
                BaseTaskbarContext baseTaskbarContext = this.f5171e;
                baseTaskbarContext.getDragLayer().post(new RunnableC0463x0(baseTaskbarContext, 1));
                return;
            default:
                this.f5171e.onPopupVisibilityChanged(false);
                return;
        }
    }
}
