package com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum OneSearchSuggestion$TruncateType implements L {
    UNDEFINED(0),
    END(1),
    MIDDLE(2),
    START(3);
    
    private final int value;

    OneSearchSuggestion$TruncateType(int i4) {
        this.value = i4;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
