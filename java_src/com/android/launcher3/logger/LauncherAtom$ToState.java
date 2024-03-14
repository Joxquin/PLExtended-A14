package com.android.launcher3.logger;

import com.google.protobuf.L;
import com.google.protobuf.M;
import com.google.protobuf.O;
/* loaded from: classes.dex */
public enum LauncherAtom$ToState implements L {
    TO_STATE_UNSPECIFIED(0),
    UNCHANGED(1),
    TO_SUGGESTION0(2),
    TO_SUGGESTION1_WITH_VALID_PRIMARY(3),
    TO_SUGGESTION1_WITH_EMPTY_PRIMARY(4),
    TO_SUGGESTION2_WITH_VALID_PRIMARY(5),
    TO_SUGGESTION2_WITH_EMPTY_PRIMARY(6),
    TO_SUGGESTION3_WITH_VALID_PRIMARY(7),
    TO_SUGGESTION3_WITH_EMPTY_PRIMARY(8),
    TO_EMPTY_WITH_VALID_PRIMARY(9),
    TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY(10),
    TO_EMPTY_WITH_EMPTY_SUGGESTIONS(11),
    TO_EMPTY_WITH_SUGGESTIONS_DISABLED(12),
    TO_CUSTOM_WITH_VALID_PRIMARY(13),
    TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY(14),
    TO_CUSTOM_WITH_EMPTY_SUGGESTIONS(15),
    TO_CUSTOM_WITH_SUGGESTIONS_DISABLED(16);
    
    private final int value;

    /* renamed from: com.android.launcher3.logger.LauncherAtom$ToState$1  reason: invalid class name */
    /* loaded from: classes.dex */
    final class AnonymousClass1 implements O {
        @Override // com.google.protobuf.O
        public final LauncherAtom$Attribute convert(Object obj) {
            LauncherAtom$Attribute forNumber = LauncherAtom$Attribute.forNumber(((Integer) obj).intValue());
            return forNumber == null ? LauncherAtom$Attribute.UNKNOWN : forNumber;
        }
    }

    /* loaded from: classes.dex */
    final class ToStateVerifier implements M {
        static final M INSTANCE = new ToStateVerifier();

        @Override // com.google.protobuf.M
        public final boolean isInRange(int i4) {
            return LauncherAtom$ToState.forNumber(i4) != null;
        }
    }

    LauncherAtom$ToState(int i4) {
        this.value = i4;
    }

    public static LauncherAtom$ToState forNumber(int i4) {
        switch (i4) {
            case 0:
                return TO_STATE_UNSPECIFIED;
            case 1:
                return UNCHANGED;
            case 2:
                return TO_SUGGESTION0;
            case 3:
                return TO_SUGGESTION1_WITH_VALID_PRIMARY;
            case 4:
                return TO_SUGGESTION1_WITH_EMPTY_PRIMARY;
            case 5:
                return TO_SUGGESTION2_WITH_VALID_PRIMARY;
            case 6:
                return TO_SUGGESTION2_WITH_EMPTY_PRIMARY;
            case 7:
                return TO_SUGGESTION3_WITH_VALID_PRIMARY;
            case 8:
                return TO_SUGGESTION3_WITH_EMPTY_PRIMARY;
            case 9:
                return TO_EMPTY_WITH_VALID_PRIMARY;
            case 10:
                return TO_EMPTY_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY;
            case 11:
                return TO_EMPTY_WITH_EMPTY_SUGGESTIONS;
            case 12:
                return TO_EMPTY_WITH_SUGGESTIONS_DISABLED;
            case 13:
                return TO_CUSTOM_WITH_VALID_PRIMARY;
            case 14:
                return TO_CUSTOM_WITH_VALID_SUGGESTIONS_AND_EMPTY_PRIMARY;
            case 15:
                return TO_CUSTOM_WITH_EMPTY_SUGGESTIONS;
            case 16:
                return TO_CUSTOM_WITH_SUGGESTIONS_DISABLED;
            default:
                return null;
        }
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
