package androidx.fragment.app.strictmode;

import androidx.fragment.app.K;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public final class SetTargetFragmentUsageViolation extends TargetFragmentUsageViolation {
    private final int requestCode;
    private final K targetFragment;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SetTargetFragmentUsageViolation(K fragment, K targetFragment, int i4) {
        super(fragment, "Attempting to set target fragment " + targetFragment + " with request code " + i4 + " for fragment " + fragment);
        h.e(fragment, "fragment");
        h.e(targetFragment, "targetFragment");
        this.targetFragment = targetFragment;
        this.requestCode = i4;
    }
}
