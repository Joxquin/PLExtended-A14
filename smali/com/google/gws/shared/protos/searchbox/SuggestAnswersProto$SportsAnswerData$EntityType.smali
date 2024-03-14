.class public final enum Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/L;


# static fields
.field public static final enum d:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

.field public static final enum e:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

.field public static final enum f:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

.field public static final enum g:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

.field public static final synthetic h:[Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;->d:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    new-instance v1, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    const-string v2, "TEAM"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;->e:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    new-instance v2, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    const-string v3, "LEAGUE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;->f:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    new-instance v3, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    const-string v4, "ATHLETE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;->g:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    move-result-object v0

    sput-object v0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;->h:[Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;
    .locals 1

    const-class v0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    return-object p0
.end method

.method public static values()[Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;
    .locals 1

    sget-object v0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;->h:[Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    invoke-virtual {v0}, [Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;->value:I

    return p0
.end method
