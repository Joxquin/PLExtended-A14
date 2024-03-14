package com.android.launcher3.taskbar.bubbles;

import com.android.launcher3.taskbar.bubbles.BubbleBarController;
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f5102d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ BubbleBarController f5103e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Object f5104f;

    public /* synthetic */ b(BubbleBarController bubbleBarController, Object obj, int i4) {
        this.f5102d = i4;
        this.f5103e = bubbleBarController;
        this.f5104f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f5102d) {
            case 0:
                r0.mMainExecutor.execute(new b(this.f5103e, (BubbleBarController.BubbleBarViewUpdate) this.f5104f, 1));
                return;
            case 1:
                this.f5103e.applyViewChanges((BubbleBarController.BubbleBarViewUpdate) this.f5104f);
                return;
            case 2:
                this.f5103e.applyViewChanges((BubbleBarController.BubbleBarViewUpdate) this.f5104f);
                return;
            default:
                BubbleBarController.a(this.f5103e, (BubbleBarOverflow) this.f5104f);
                return;
        }
    }
}
