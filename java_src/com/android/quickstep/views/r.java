package com.android.quickstep.views;
/* loaded from: classes.dex */
public final /* synthetic */ class r implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5986d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RecentsView f5987e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ TaskView f5988f;

    public /* synthetic */ r(RecentsView recentsView, TaskView taskView, int i4) {
        this.f5986d = i4;
        this.f5987e = recentsView;
        this.f5988f = taskView;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5986d) {
            case 0:
                this.f5987e.lambda$addDismissedTaskAnimations$15(this.f5988f);
                return;
            default:
                this.f5987e.lambda$createTaskDismissAnimation$23(this.f5988f);
                return;
        }
    }
}
