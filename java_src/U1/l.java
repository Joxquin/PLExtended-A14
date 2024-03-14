package U1;

import android.window.IRemoteTransitionFinishedCallback;
import android.window.TransitionInfo;
/* loaded from: classes.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final TransitionInfo.Change f1762a;

    /* renamed from: b  reason: collision with root package name */
    public final TransitionInfo.Change f1763b;

    /* renamed from: c  reason: collision with root package name */
    public final TransitionInfo.Change f1764c;

    /* renamed from: d  reason: collision with root package name */
    public final IRemoteTransitionFinishedCallback f1765d;

    public l(TransitionInfo.Change change, TransitionInfo.Change change2, TransitionInfo.Change change3, TransitionInfo.Change change4, IRemoteTransitionFinishedCallback finishCB) {
        kotlin.jvm.internal.h.e(finishCB, "finishCB");
        this.f1762a = change;
        this.f1763b = change2;
        this.f1764c = change4;
        this.f1765d = finishCB;
    }
}
