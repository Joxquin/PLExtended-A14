package com.google.gws.shared.protos.searchbox;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum SuggestAnswersProto$FinanceAnswerData$UserIntentType implements L {
    UNKNOWN(0),
    STOCK_PRICE(1),
    MARKET_CAP(2);
    
    private final int value;

    SuggestAnswersProto$FinanceAnswerData$UserIntentType(int i4) {
        this.value = i4;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
