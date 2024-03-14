package androidx.fragment.app.strictmode;

import androidx.fragment.app.K;
import kotlin.jvm.internal.h;
/* loaded from: classes.dex */
public abstract class Violation extends RuntimeException {
    private final K fragment;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Violation(K fragment, String str) {
        super(str);
        h.e(fragment, "fragment");
        this.fragment = fragment;
    }

    public final K a() {
        return this.fragment;
    }
}
