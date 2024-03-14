.class public final Lf2/j0;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final BUTTON_INFO_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lf2/j0;

.field public static final HEADER_DESCRIPTION_FIELD_NUMBER:I = 0x6

.field public static final HEADER_FIELD_NUMBER:I = 0x2

.field public static final LAYOUT_TYPE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final SUBTITLE_DESCRIPTION_FIELD_NUMBER:I = 0x8

.field public static final SUBTITLE_FIELD_NUMBER:I = 0x4

.field public static final TITLE_DESCRIPTION_FIELD_NUMBER:I = 0x7

.field public static final TITLE_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private buttonInfo_:Lcom/google/protobuf/S;

.field private headerDescription_:Ljava/lang/String;

.field private header_:Ljava/lang/String;

.field private layoutType_:I

.field private subtitleDescription_:Ljava/lang/String;

.field private subtitle_:Ljava/lang/String;

.field private titleDescription_:Ljava/lang/String;

.field private title_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf2/j0;

    invoke-direct {v0}, Lf2/j0;-><init>()V

    sput-object v0, Lf2/j0;->DEFAULT_INSTANCE:Lf2/j0;

    const-class v1, Lf2/j0;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lf2/j0;->header_:Ljava/lang/String;

    iput-object v0, p0, Lf2/j0;->headerDescription_:Ljava/lang/String;

    iput-object v0, p0, Lf2/j0;->title_:Ljava/lang/String;

    iput-object v0, p0, Lf2/j0;->titleDescription_:Ljava/lang/String;

    iput-object v0, p0, Lf2/j0;->subtitle_:Ljava/lang/String;

    iput-object v0, p0, Lf2/j0;->subtitleDescription_:Ljava/lang/String;

    sget-object v0, Lcom/google/protobuf/A0;->g:Lcom/google/protobuf/A0;

    iput-object v0, p0, Lf2/j0;->buttonInfo_:Lcom/google/protobuf/S;

    return-void
.end method

.method public static bridge synthetic a()Lf2/j0;
    .locals 1

    sget-object v0, Lf2/j0;->DEFAULT_INSTANCE:Lf2/j0;

    return-object v0
.end method

.method public static c()Lf2/j0;
    .locals 1

    sget-object v0, Lf2/j0;->DEFAULT_INSTANCE:Lf2/j0;

    return-object v0
.end method


# virtual methods
.method public final b()Lcom/google/protobuf/S;
    .locals 0

    iget-object p0, p0, Lf2/j0;->buttonInfo_:Lcom/google/protobuf/S;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/j0;->header_:Ljava/lang/String;

    return-object p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 11

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lf2/j0;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lf2/j0;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lf2/j0;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lf2/j0;->DEFAULT_INSTANCE:Lf2/j0;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lf2/j0;->PARSER:Lcom/google/protobuf/x0;

    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object p0

    :pswitch_1
    sget-object p0, Lf2/j0;->DEFAULT_INSTANCE:Lf2/j0;

    return-object p0

    :pswitch_2
    new-instance p0, Lf2/b0;

    const/4 p1, 0x6

    invoke-direct {p0, p1}, Lf2/b0;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lf2/j0;

    invoke-direct {p0}, Lf2/j0;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "layoutType_"

    sget-object v2, Lf2/k0;->a:Lf2/k0;

    const-string v3, "header_"

    const-string v4, "title_"

    const-string v5, "subtitle_"

    const-string v6, "buttonInfo_"

    const-class v7, Lf2/i0;

    const-string v8, "headerDescription_"

    const-string v9, "titleDescription_"

    const-string v10, "subtitleDescription_"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1008\u0003\u0004\u1008\u0005\u0005\u001b\u0006\u1008\u0002\u0007\u1008\u0004\u0008\u1008\u0006"

    sget-object v0, Lf2/j0;->DEFAULT_INSTANCE:Lf2/j0;

    new-instance v1, Lcom/google/protobuf/B0;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/B0;-><init>(Lcom/google/protobuf/J;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    const/4 p0, 0x0

    return-object p0

    :pswitch_6
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    nop

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

    iget-object p0, p0, Lf2/j0;->headerDescription_:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$LayoutType;
    .locals 2

    iget p0, p0, Lf2/j0;->layoutType_:I

    sget-object v0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$LayoutType;->d:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$LayoutType;

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$LayoutType;->g:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$LayoutType;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$LayoutType;->f:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$LayoutType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$LayoutType;->e:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchSuggestion$LayoutType;

    goto :goto_0

    :cond_3
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_4

    goto :goto_1

    :cond_4
    move-object v0, p0

    :goto_1
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/j0;->subtitle_:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/j0;->title_:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/j0;->subtitleDescription_:Ljava/lang/String;

    return-object p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/j0;->titleDescription_:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Z
    .locals 0

    iget p0, p0, Lf2/j0;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final k()Z
    .locals 0

    iget p0, p0, Lf2/j0;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final l()Z
    .locals 1

    iget p0, p0, Lf2/j0;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 0

    iget p0, p0, Lf2/j0;->bitField0_:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final n()Z
    .locals 0

    iget p0, p0, Lf2/j0;->bitField0_:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
