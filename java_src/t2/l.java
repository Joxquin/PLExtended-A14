package T2;

import com.google.gws.shared.protos.searchbox.SuggestAnswersProto$SportsAnswerData$EntityType;
import com.google.protobuf.M;
/* loaded from: classes.dex */
public final class l implements M {

    /* renamed from: a  reason: collision with root package name */
    public static final l f1726a = new l();

    @Override // com.google.protobuf.M
    public final boolean isInRange(int i4) {
        return (i4 != 0 ? i4 != 1 ? i4 != 2 ? i4 != 3 ? null : SuggestAnswersProto$SportsAnswerData$EntityType.ATHLETE : SuggestAnswersProto$SportsAnswerData$EntityType.LEAGUE : SuggestAnswersProto$SportsAnswerData$EntityType.TEAM : SuggestAnswersProto$SportsAnswerData$EntityType.UNKNOWN) != null;
    }
}
