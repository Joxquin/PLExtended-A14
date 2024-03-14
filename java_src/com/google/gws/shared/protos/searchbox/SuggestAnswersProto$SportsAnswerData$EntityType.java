package com.google.gws.shared.protos.searchbox;

import com.google.protobuf.L;
/* loaded from: classes.dex */
public enum SuggestAnswersProto$SportsAnswerData$EntityType implements L {
    UNKNOWN(0),
    TEAM(1),
    LEAGUE(2),
    ATHLETE(3);
    
    private final int value;

    SuggestAnswersProto$SportsAnswerData$EntityType(int i4) {
        this.value = i4;
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
