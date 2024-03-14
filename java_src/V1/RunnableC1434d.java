package v1;

import com.android.systemui.unfold.progress.RemoteUnfoldTransitionReceiver;
/* renamed from: v1.d  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC1434d implements Runnable {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ RemoteUnfoldTransitionReceiver f12634d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ float f12635e;

    public RunnableC1434d(RemoteUnfoldTransitionReceiver remoteUnfoldTransitionReceiver, float f4) {
        this.f12634d = remoteUnfoldTransitionReceiver;
        this.f12635e = f4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C1437g c1437g;
        e3.f fVar;
        C1432b c1432b;
        c1437g = this.f12634d.filter;
        if (c1437g != null) {
            c1437g.onTransitionProgress(this.f12635e);
            fVar = e3.f.f9037a;
        } else {
            fVar = null;
        }
        if (fVar == null) {
            c1432b = this.f12634d.outputProgressListener;
            c1432b.onTransitionProgress(this.f12635e);
        }
    }
}
