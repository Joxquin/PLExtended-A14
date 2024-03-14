package com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum OneSearchError$Status implements L {
    UNKNOWN(0),
    HTTP_ERROR(1),
    NO_NETWORK(2),
    TIMEOUT(3);
    
    private final int value;

    OneSearchError$Status(int i4) {
        this.value = i4;
    }

    public static OneSearchError$Status a(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        return null;
                    }
                    return TIMEOUT;
                }
                return NO_NETWORK;
            }
            return HTTP_ERROR;
        }
        return UNKNOWN;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
