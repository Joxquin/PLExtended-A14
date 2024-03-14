package v1;

import com.android.systemui.unfold.progress.RemoteUnfoldTransitionReceiver;
/* renamed from: v1.c  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1433c implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ int f12632d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ RemoteUnfoldTransitionReceiver f12633e;

    public /* synthetic */ RunnableC1433c(RemoteUnfoldTransitionReceiver remoteUnfoldTransitionReceiver, int i4) {
        this.f12632d = i4;
        this.f12633e = remoteUnfoldTransitionReceiver;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1437g c1437g;
        C1432b c1432b;
        C1437g c1437g2;
        C1432b c1432b2;
        e3.f fVar = null;
        switch (this.f12632d) {
            case 0:
                c1437g2 = this.f12633e.filter;
                if (c1437g2 != null) {
                    c1437g2.onTransitionFinished();
                    fVar = e3.f.f9037a;
                }
                if (fVar == null) {
                    c1432b2 = this.f12633e.outputProgressListener;
                    c1432b2.onTransitionFinished();
                    return;
                }
                return;
            default:
                c1437g = this.f12633e.filter;
                if (c1437g != null) {
                    c1437g.onTransitionStarted();
                    fVar = e3.f.f9037a;
                }
                if (fVar == null) {
                    c1432b = this.f12633e.outputProgressListener;
                    c1432b.onTransitionStarted();
                    return;
                }
                return;
        }
    }
}
