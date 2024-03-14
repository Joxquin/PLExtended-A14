package com.android.launcher3.taskbar;
/* loaded from: classes.dex */
public final /* synthetic */ class Q implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5059d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TaskbarActivityContext f5060e;

    public /* synthetic */ Q(TaskbarActivityContext taskbarActivityContext, int i4) {
        this.f5059d = i4;
        this.f5060e = taskbarActivityContext;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5059d) {
            case 0:
                this.f5060e.setTaskbarWindowFocusableForIme(false);
                return;
            default:
                TaskbarActivityContext.d(this.f5060e);
                return;
        }
    }
}
