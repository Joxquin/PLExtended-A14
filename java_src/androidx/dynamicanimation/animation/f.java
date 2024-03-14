package androidx.dynamicanimation.animation;

import android.view.Choreographer;
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Choreographer.FrameCallback {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ Runnable f3170d;

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j4) {
        this.f3170d.run();
    }
}
