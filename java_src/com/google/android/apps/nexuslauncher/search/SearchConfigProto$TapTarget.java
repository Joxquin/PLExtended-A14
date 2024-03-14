package com.google.android.apps.nexuslauncher.search;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum SearchConfigProto$TapTarget implements L {
    NONE(0),
    LOGO(1),
    TEXTBOX(2),
    PASTE(3);
    
    private final int value;

    SearchConfigProto$TapTarget(int i4) {
        this.value = i4;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
