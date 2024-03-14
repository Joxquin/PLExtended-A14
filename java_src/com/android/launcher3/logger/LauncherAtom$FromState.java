package com.android.launcher3.logger;

import com.google.protobuf.L;
import com.google.protobuf.M;
/* loaded from: classes.dex */
public enum LauncherAtom$FromState implements L {
    FROM_STATE_UNSPECIFIED(0),
    FROM_EMPTY(1),
    FROM_CUSTOM(2),
    FROM_SUGGESTED(3);
    
    private final int value;

    /* loaded from: classes.dex */
    final class FromStateVerifier implements M {
        static final M INSTANCE = new FromStateVerifier();

        @Override // com.google.protobuf.M
        public final boolean isInRange(int i4) {
            return LauncherAtom$FromState.forNumber(i4) != null;
        }
    }

    LauncherAtom$FromState(int i4) {
        this.value = i4;
    }

    public static LauncherAtom$FromState forNumber(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        return null;
                    }
                    return FROM_SUGGESTED;
                }
                return FROM_CUSTOM;
            }
            return FROM_EMPTY;
        }
        return FROM_STATE_UNSPECIFIED;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
