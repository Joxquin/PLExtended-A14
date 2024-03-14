package androidx.fragment.app.strictmode;

import androidx.fragment.app.K;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class GetTargetFragmentUsageViolation extends TargetFragmentUsageViolation {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public GetTargetFragmentUsageViolation(K fragment) {
        super(fragment, "Attempting to get target fragment from fragment " + fragment);
        h.e(fragment, "fragment");
    }
}
