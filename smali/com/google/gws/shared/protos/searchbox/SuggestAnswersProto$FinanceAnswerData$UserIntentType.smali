.class public final enum Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/L;


# static fields
.field public static final enum d:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

.field public static final enum e:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

.field public static final enum f:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

.field public static final synthetic g:[Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;->d:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

    new-instance v1, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

    const-string v2, "STOCK_PRICE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;->e:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

    new-instance v2, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

    const-string v3, "MARKET_CAP"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;->f:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

    filled-new-array {v0, v1, v2}, [Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

    move-result-object v0

    sput-object v0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;->g:[Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;
    .locals 1

    const-class v0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

    return-object p0
.end method

.method public static values()[Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;
    .locals 1

    sget-object v0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;->g:[Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

    invoke-virtual {v0}, [Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$FinanceAnswerData$UserIntentType;->value:I

    return p0
.end method
