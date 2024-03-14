package com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum GetSuggestionsResponse$Version implements L {
    VERSION_UNSPECIFIED(0),
    DROIDFOOD(1),
    ANDROID_BETA_1(2),
    ANDROID_BETA_2(3),
    ANDROID_BETA_3(4);
    
    private final int value;

    GetSuggestionsResponse$Version(int i4) {
        this.value = i4;
    }

    public static GetSuggestionsResponse$Version a(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                            return null;
                        }
                        return ANDROID_BETA_3;
                    }
                    return ANDROID_BETA_2;
                }
                return ANDROID_BETA_1;
            }
            return DROIDFOOD;
        }
        return VERSION_UNSPECIFIED;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
