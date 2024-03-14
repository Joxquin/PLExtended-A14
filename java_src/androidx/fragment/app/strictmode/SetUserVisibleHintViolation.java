package androidx.fragment.app.strictmode;

import androidx.fragment.app.K;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class SetUserVisibleHintViolation extends Violation {
    private final boolean isVisibleToUser;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetUserVisibleHintViolation(K fragment, boolean z4) {
        super(fragment, "Attempting to set user visible hint to " + z4 + " for fragment " + fragment);
        h.e(fragment, "fragment");
        this.isVisibleToUser = z4;
    }
}
