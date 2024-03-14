package com.android.launcher3.taskbar;
/* loaded from: classes.dex */
public final /* synthetic */ class G0 implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5023d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ TaskbarStashController f5024e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ boolean f5025f;

    public /* synthetic */ G0(TaskbarStashController taskbarStashController, boolean z4, int i4) {
        this.f5023d = i4;
        this.f5024e = taskbarStashController;
        this.f5025f = z4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5023d) {
            case 0:
                TaskbarStashController.b(this.f5024e, this.f5025f);
                return;
            case 1:
                TaskbarStashController.f(this.f5024e, this.f5025f);
                return;
            default:
                TaskbarStashController.g(this.f5024e, this.f5025f);
                return;
        }
    }
}
