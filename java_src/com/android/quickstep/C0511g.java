package com.android.quickstep;

import com.android.quickstep.RemoteTargetGluer;
import com.android.quickstep.util.AnimatorControllerWithResistance;
import com.android.quickstep.util.SurfaceTransactionApplier;
import java.util.function.Consumer;
/* renamed from: com.android.quickstep.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0511g implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5627a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f5628b;

    public /* synthetic */ C0511g(int i4, Object obj) {
        this.f5627a = i4;
        this.f5628b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5627a) {
            case 0:
                ((AbsSwipeUpHandler) this.f5628b).lambda$onLauncherStart$5((RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
            case 1:
                ((AbsSwipeUpHandler) this.f5628b).onAnimatorPlaybackControllerCreated((AnimatorControllerWithResistance) obj);
                return;
            default:
                AbsSwipeUpHandler.lambda$linkRecentsViewScroll$29((SurfaceTransactionApplier) this.f5628b, (RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
        }
    }
}
