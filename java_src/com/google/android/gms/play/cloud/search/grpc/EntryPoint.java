package com.google.android.gms.play.cloud.search.grpc;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum EntryPoint implements L {
    ENTRY_POINT_UNKNOWN(0),
    ENTRY_POINT_HOMESCREEN_SEARCH_BOX(1),
    ENTRY_POINT_ALL_APPS(2);
    
    private final int value;

    EntryPoint(int i4) {
        this.value = i4;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
