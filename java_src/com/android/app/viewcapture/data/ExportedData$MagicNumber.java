package com.android.app.viewcapture.data;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum ExportedData$MagicNumber implements L {
    INVALID(0),
    MAGIC_NUMBER_L(1703961976),
    MAGIC_NUMBER_H(1751482995);
    
    private final int value;

    ExportedData$MagicNumber(int i4) {
        this.value = i4;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
