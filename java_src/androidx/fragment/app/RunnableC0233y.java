package androidx.fragment.app;
/* renamed from: androidx.fragment.app.y  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0233y implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f3537d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ K f3538e;

    public /* synthetic */ RunnableC0233y(K k4, int i4) {
        this.f3537d = i4;
        this.f3538e = k4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f3537d) {
            case 0:
                this.f3538e.startPostponedEnterTransition();
                return;
            default:
                this.f3538e.callStartTransitionListener(false);
                return;
        }
    }
}
