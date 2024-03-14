package com.google.android.apps.nexuslauncher.searchwidget.thirdparty;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum IntentDefinitionType implements L {
    UNKNOWN(0),
    URI_BASED(1),
    CLASS_BASED(2),
    ACTION_BASED(3);
    
    private final int value;

    IntentDefinitionType(int i4) {
        this.value = i4;
    }

    public static IntentDefinitionType a(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        return null;
                    }
                    return ACTION_BASED;
                }
                return CLASS_BASED;
            }
            return URI_BASED;
        }
        return UNKNOWN;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
