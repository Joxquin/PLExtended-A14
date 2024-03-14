package com.android.launcher3.taskbar;
/* loaded from: classes.dex */
public final /* synthetic */ class K0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5037d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TaskbarTranslationController f5038e;

    public /* synthetic */ K0(TaskbarTranslationController taskbarTranslationController, int i4) {
        this.f5037d = i4;
        this.f5038e = taskbarTranslationController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5037d) {
            case 0:
                TaskbarTranslationController.a(this.f5038e);
                return;
            default:
                TaskbarTranslationController.b(this.f5038e);
                return;
        }
    }
}
