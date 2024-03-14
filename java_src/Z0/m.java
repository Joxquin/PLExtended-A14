package Z0;

import com.android.launcher3.taskbar.bubbles.BubbleStashController;
/* loaded from: classes.dex */
public final /* synthetic */ class m implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f2365d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ BubbleStashController f2366e;

    public /* synthetic */ m(BubbleStashController bubbleStashController, int i4) {
        this.f2365d = i4;
        this.f2366e = bubbleStashController;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f2365d) {
            case 0:
                BubbleStashController.b(this.f2366e);
                return;
            default:
                BubbleStashController.a(this.f2366e);
                return;
        }
    }
}
