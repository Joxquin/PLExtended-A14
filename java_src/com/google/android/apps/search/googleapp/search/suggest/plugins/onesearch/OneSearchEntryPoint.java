package com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum OneSearchEntryPoint implements L {
    ENTRY_POINT_UNKNOWN(0),
    ENTRY_POINT_QSB(1),
    ENTRY_POINT_ALL_APPS(2);
    
    private final int value;

    OneSearchEntryPoint(int i4) {
        this.value = i4;
    }

    public static OneSearchEntryPoint a(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    return null;
                }
                return ENTRY_POINT_ALL_APPS;
            }
            return ENTRY_POINT_QSB;
        }
        return ENTRY_POINT_UNKNOWN;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
