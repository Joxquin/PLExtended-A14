.class public final LT2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/M;


# static fields
.field public static final a:LT2/l;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LT2/l;

    invoke-direct {v0}, LT2/l;-><init>()V

    sput-object v0, LT2/l;->a:LT2/l;

    return-void
.end method


# virtual methods
.method public final isInRange(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, p0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;->g:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;->f:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;->e:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;->d:Lcom/google/gws/shared/protos/searchbox/SuggestAnswersProto$SportsAnswerData$EntityType;

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
