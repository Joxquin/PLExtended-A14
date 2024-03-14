package com.android.quickstep;

import com.android.quickstep.FallbackSwipeHandler;
import com.android.quickstep.RemoteTargetGluer;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class F implements Consumer {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f5457a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Object f5458b;

    public /* synthetic */ F(int i4, Object obj) {
        this.f5457a = i4;
        this.f5458b = obj;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        switch (this.f5457a) {
            case 0:
                ((FallbackSwipeHandler.FallbackHomeAnimationFactory) this.f5458b).lambda$new$0((RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
            case 1:
                ((FallbackSwipeHandler.FallbackHomeAnimationFactory) this.f5458b).lambda$new$1((RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
            default:
                ((FallbackSwipeHandler) this.f5458b).lambda$new$0((RemoteTargetGluer.RemoteTargetHandle) obj);
                return;
        }
    }
}
