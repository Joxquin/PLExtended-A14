package com.android.quickstep.fallback;

import com.android.quickstep.RemoteTargetGluer;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Consumer {
    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        FallbackRecentsView.lambda$onStateTransitionComplete$1((RemoteTargetGluer.RemoteTargetHandle) obj);
    }
}
