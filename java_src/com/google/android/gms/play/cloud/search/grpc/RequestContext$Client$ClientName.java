package com.google.android.gms.play.cloud.search.grpc;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum RequestContext$Client$ClientName implements L {
    UNKNOWN(0),
    PIXEL_LAUNCHER(1),
    AGA(2);
    
    private final int value;

    RequestContext$Client$ClientName(int i4) {
        this.value = i4;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
