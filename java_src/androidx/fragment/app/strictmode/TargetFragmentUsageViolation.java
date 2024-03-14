package androidx.fragment.app.strictmode;

import androidx.fragment.app.K;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public abstract class TargetFragmentUsageViolation extends Violation {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TargetFragmentUsageViolation(K fragment, String str) {
        super(fragment, str);
        h.e(fragment, "fragment");
    }
}
