package com.google.android.apps.search.googleapp.search.suggest.plugins.onesearch;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum OneSearchSuggestion$SuggestionType implements L {
    QUERY(0),
    TRENDING(1),
    ENTITY(2),
    ANSWER(3),
    CALCULATOR(4),
    URL(5);
    
    private final int value;

    OneSearchSuggestion$SuggestionType(int i4) {
        this.value = i4;
    }

    public static OneSearchSuggestion$SuggestionType a(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                            if (i4 != 5) {
                                return null;
                            }
                            return URL;
                        }
                        return CALCULATOR;
                    }
                    return ANSWER;
                }
                return ENTITY;
            }
            return TRENDING;
        }
        return QUERY;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
