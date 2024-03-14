package com.android.launcher3.util;
/* loaded from: classes.dex */
public interface FlagOp {
    public static final C0476i NO_OP = new C0476i();

    default C0477j addFlag(int i4) {
        return new C0477j(this, i4, 0);
    }

    int apply(int i4);

    default C0477j removeFlag(int i4) {
        return new C0477j(this, i4, 1);
    }

    default FlagOp setFlag(int i4, boolean z4) {
        return z4 ? addFlag(i4) : removeFlag(i4);
    }
}
