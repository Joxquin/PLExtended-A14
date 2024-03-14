package com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc implements L {
    NONE(0),
    DELETE(1),
    REPORT(2),
    LEARN_MORE(3);
    
    private final int value;

    OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc(int i4) {
        this.value = i4;
    }

    public static OneSearchSuggestion$InteractionDialog$DialogButton$ButtonActionRpc a(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        return null;
                    }
                    return LEARN_MORE;
                }
                return REPORT;
            }
            return DELETE;
        }
        return NONE;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
