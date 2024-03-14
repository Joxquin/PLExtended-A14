package com.google.android.apps.nexuslauncher.search;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum SearchConfigProto$Source implements L {
    UNKNOWN(0),
    HOMESCREEN(1),
    ALL_APPS(2),
    SHELF(3);
    
    private final int value;

    SearchConfigProto$Source(int i4) {
        this.value = i4;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
