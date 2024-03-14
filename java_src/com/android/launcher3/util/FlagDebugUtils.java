package com.android.launcher3.util;

import java.util.StringJoiner;
/* loaded from: classes.dex */
public final class FlagDebugUtils {
    public static final void appendFlag(StringJoiner stringJoiner, int i4, int i5, String str) {
        if ((i4 & i5) != 0) {
            stringJoiner.add(str);
        }
    }
}
