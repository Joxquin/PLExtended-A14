.class public final Lf2/p0;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final ANSWER_INFO_FIELD_NUMBER:I = 0xb

.field public static final CALCULATOR_INFO_FIELD_NUMBER:I = 0xf

.field private static final DEFAULT_INSTANCE:Lf2/p0;

.field public static final ENTITY_INFO_FIELD_NUMBER:I = 0x8

.field public static final IMAGE_DESCRIPTION_FIELD_NUMBER:I = 0x14

.field public static final IMAGE_URL_FIELD_NUMBER:I = 0x4

.field public static final INTERACTION_DIALOG_FIELD_NUMBER:I = 0xc

.field public static final IS_PERSONAL_FIELD_NUMBER:I = 0x5

.field public static final IS_TRENDING_FIELD_NUMBER:I = 0x11

.field public static final LAYOUT_INFO_FIELD_NUMBER:I = 0x13

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final RENDER_TEXT_FIELD_NUMBER:I = 0x3

.field public static final SCORE_FIELD_NUMBER:I = 0x12

.field public static final SEARCH_EXTRA_PARAMETERS_FIELD_NUMBER:I = 0xa

.field public static final SEARCH_QUERY_FIELD_NUMBER:I = 0x9

.field public static final SUGGESTION_ID_FIELD_NUMBER:I = 0xd

.field public static final SUPPORTS_QUERY_BUILDER_FIELD_NUMBER:I = 0x6

.field public static final TEXT_FIELD_NUMBER:I = 0x2

.field public static final TRUNCATE_TYPE_FIELD_NUMBER:I = 0xe

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final URL_FIELD_NUMBER:I = 0x15

.field public static final URL_INFO_FIELD_NUMBER:I = 0x10


# instance fields
.field private answerInfo_:Lf2/c0;

.field private bitField0_:I

.field private calculatorInfo_:Lf2/d0;

.field private entityInfo_:Lf2/e0;

.field private imageDescription_:Ljava/lang/String;

.field private imageUrl_:Ljava/lang/String;

.field private interactionDialog_:Lf2/h0;

.field private isPersonal_:Z

.field private isTrending_:Z

.field private layoutInfo_:Lf2/j0;

.field private renderText_:Ljava/lang/String;

.field private score_:I

.field private searchExtraParameters_:Lcom/google/protobuf/MapFieldLite;

.field private searchQuery_:Ljava/lang/String;

.field private suggestionId_:Ljava/lang/String;

.field private supportsQueryBuilder_:Z

.field private text_:Ljava/lang/String;

.field private truncateType_:I

.field private type_:I

.field private urlInfo_:Lf2/o0;

.field private url_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf2/p0;

    invoke-direct {v0}, Lf2/p0;-><init>()V

    sput-object v0, Lf2/p0;->DEFAULT_INSTANCE:Lf2/p0;

    const-class v1, Lf2/p0;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    sget-object v0, Lcom/google/protobuf/MapFieldLite;->d:Lcom/google/protobuf/MapFieldLite;

    iput-object v0, p0, Lf2/p0;->searchExtraParameters_:Lcom/google/protobuf/MapFieldLite;

    const-string v0, ""

    iput-object v0, p0, Lf2/p0;->suggestionId_:Ljava/lang/String;

    iput-object v0, p0, Lf2/p0;->text_:Ljava/lang/String;

    iput-object v0, p0, Lf2/p0;->renderText_:Ljava/lang/String;

    iput-object v0, p0, Lf2/p0;->imageUrl_:Ljava/lang/String;

    iput-object v0, p0, Lf2/p0;->searchQuery_:Ljava/lang/String;

    iput-object v0, p0, Lf2/p0;->imageDescription_:Ljava/lang/String;

    iput-object v0, p0, Lf2/p0;->url_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()Lf2/p0;
    .locals 1

    sget-object v0, Lf2/p0;->DEFAULT_INSTANCE:Lf2/p0;

    return-object v0
.end method


# virtual methods
.method public final b()Lf2/c0;
    .locals 0

    iget-object p0, p0, Lf2/p0;->answerInfo_:Lf2/c0;

    if-nez p0, :cond_0

    invoke-static {}, Lf2/c0;->b()Lf2/c0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final c()Lf2/e0;
    .locals 0

    iget-object p0, p0, Lf2/p0;->entityInfo_:Lf2/e0;

    if-nez p0, :cond_0

    invoke-static {}, Lf2/e0;->c()Lf2/e0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/p0;->imageDescription_:Ljava/lang/String;

    return-object p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 25

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lf2/p0;->PARSER:Lcom/google/protobuf/x0;

    if-nez v0, :cond_1

    const-class v1, Lf2/p0;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lf2/p0;->PARSER:Lcom/google/protobuf/x0;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/F;

    sget-object v2, Lf2/p0;->DEFAULT_INSTANCE:Lf2/p0;

    invoke-direct {v0, v2}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object v0, Lf2/p0;->PARSER:Lcom/google/protobuf/x0;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lf2/p0;->DEFAULT_INSTANCE:Lf2/p0;

    return-object v0

    :pswitch_2
    new-instance v0, Lf2/b0;

    invoke-direct {v0, v1}, Lf2/b0;-><init>(I)V

    return-object v0

    :pswitch_3
    new-instance v0, Lf2/p0;

    invoke-direct {v0}, Lf2/p0;-><init>()V

    return-object v0

    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "type_"

    sget-object v3, Lf2/m0;->a:Lf2/m0;

    const-string v4, "text_"

    const-string v5, "renderText_"

    const-string v6, "imageUrl_"

    const-string v7, "isPersonal_"

    const-string v8, "supportsQueryBuilder_"

    const-string v9, "entityInfo_"

    const-string v10, "searchQuery_"

    const-string v11, "searchExtraParameters_"

    sget-object v12, Lf2/l0;->a:Lcom/google/protobuf/i0;

    const-string v13, "answerInfo_"

    const-string v14, "interactionDialog_"

    const-string v15, "suggestionId_"

    const-string v16, "truncateType_"

    sget-object v17, Lf2/n0;->a:Lf2/n0;

    const-string v18, "calculatorInfo_"

    const-string v19, "urlInfo_"

    const-string v20, "isTrending_"

    const-string v21, "score_"

    const-string v22, "layoutInfo_"

    const-string v23, "imageDescription_"

    const-string v24, "url_"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u0014\u0000\u0001\u0001\u0015\u0014\u0001\u0000\u0000\u0001\u100c\u0001\u0002\u1008\u0002\u0003\u1008\u0003\u0004\u1008\u0005\u0005\u1007\u0006\u0006\u1007\u0008\u0008\u1009\n\t\u1008\t\n2\u000b\u1009\u000b\u000c\u1009\u000e\r\u1008\u0000\u000e\u100c\u0004\u000f\u1009\u000c\u0010\u1009\r\u0011\u1007\u0007\u0012\u1004\u000f\u0013\u1009\u0010\u0014\u1008\u0011\u0015\u1008\u0012"

    sget-object v2, Lf2/p0;->DEFAULT_INSTANCE:Lf2/p0;

    new-instance v3, Lcom/google/protobuf/B0;

    invoke-direct {v3, v2, v1, v0}, Lcom/google/protobuf/B0;-><init>(Lcom/google/protobuf/J;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :pswitch_5
    const/4 v0, 0x0

    return-object v0

    :pswitch_6
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/p0;->imageUrl_:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Lf2/h0;
    .locals 0

    iget-object p0, p0, Lf2/p0;->interactionDialog_:Lf2/h0;

    if-nez p0, :cond_0

    invoke-static {}, Lf2/h0;->b()Lf2/h0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Lf2/p0;->isPersonal_:Z

    return p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Lf2/p0;->isTrending_:Z

    return p0
.end method

.method public final i()Lf2/j0;
    .locals 0

    iget-object p0, p0, Lf2/p0;->layoutInfo_:Lf2/j0;

    if-nez p0, :cond_0

    invoke-static {}, Lf2/j0;->c()Lf2/j0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final j()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/p0;->renderText_:Ljava/lang/String;

    return-object p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lf2/p0;->score_:I

    return p0
.end method

.method public final l()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/p0;->suggestionId_:Ljava/lang/String;

    return-object p0
.end method

.method public final m()Z
    .locals 0

    iget-boolean p0, p0, Lf2/p0;->supportsQueryBuilder_:Z

    return p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/p0;->text_:Ljava/lang/String;

    return-object p0
.end method

.method public final o()Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;
    .locals 0

    iget p0, p0, Lf2/p0;->type_:I

    invoke-static {p0}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;->a(I)Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;->d:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$SuggestionType;

    :cond_0
    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/p0;->url_:Ljava/lang/String;

    return-object p0
.end method

.method public final q()Lf2/o0;
    .locals 0

    iget-object p0, p0, Lf2/p0;->urlInfo_:Lf2/o0;

    if-nez p0, :cond_0

    invoke-static {}, Lf2/o0;->b()Lf2/o0;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final r()Z
    .locals 1

    iget p0, p0, Lf2/p0;->bitField0_:I

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final s()Z
    .locals 0

    iget p0, p0, Lf2/p0;->bitField0_:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final t()Z
    .locals 0

    iget p0, p0, Lf2/p0;->bitField0_:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final u()Z
    .locals 0

    iget p0, p0, Lf2/p0;->bitField0_:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final v()Z
    .locals 1

    iget p0, p0, Lf2/p0;->bitField0_:I

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final w()Z
    .locals 1

    iget p0, p0, Lf2/p0;->bitField0_:I

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final x()Z
    .locals 1

    iget p0, p0, Lf2/p0;->bitField0_:I

    const/high16 v0, 0x40000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
