package T2;

import com.google.gws.shared.protos.searchbox.SuggestAnswersProto$FinanceAnswerData$UserIntentType;
import com.google.protobuf.M;
/* loaded from: classes.dex */
public final class e implements M {

    /* renamed from: a  reason: collision with root package name */
    public static final e f1725a = new e();

    @Override // com.google.protobuf.M
    public final boolean isInRange(int i4) {
        return (i4 != 0 ? i4 != 1 ? i4 != 2 ? null : SuggestAnswersProto$FinanceAnswerData$UserIntentType.MARKET_CAP : SuggestAnswersProto$FinanceAnswerData$UserIntentType.STOCK_PRICE : SuggestAnswersProto$FinanceAnswerData$UserIntentType.UNKNOWN) != null;
    }
}
