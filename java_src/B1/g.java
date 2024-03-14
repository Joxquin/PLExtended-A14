package b1;

import java.util.function.Supplier;
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Supplier {
    @Override // java.util.function.Supplier
    public final Object get() {
        return new IllegalStateException("Trying to create getRemoteTransitionProgress when the transition is disabled");
    }
}
