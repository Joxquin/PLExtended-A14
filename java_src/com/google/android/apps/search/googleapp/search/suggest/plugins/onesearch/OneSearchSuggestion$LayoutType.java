package com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum OneSearchSuggestion$LayoutType implements L {
    SMALL_ICON_HORIZONTAL_TEXT(0),
    HORIZONTAL_MEDIUM_TEXT(1),
    EXTRA_TALL_ICON_ROW(2),
    TALL_CARD_WITH_IMAGE_NO_ICON(3);
    
    private final int value;

    OneSearchSuggestion$LayoutType(int i4) {
        this.value = i4;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
