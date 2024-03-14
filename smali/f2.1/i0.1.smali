.class public final Lf2/i0;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final ACTION_URI_FIELD_NUMBER:I = 0x5

.field public static final BUTTON_ID_FIELD_NUMBER:I = 0x1

.field public static final BUTTON_TEXT_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lf2/i0;

.field public static final ICON_URL_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final SEARCH_QUERY_FIELD_NUMBER:I = 0x4


# instance fields
.field private actionUri_:Ljava/lang/String;

.field private bitField0_:I

.field private buttonId_:Ljava/lang/String;

.field private buttonText_:Ljava/lang/String;

.field private iconUrl_:Ljava/lang/String;

.field private searchQuery_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf2/i0;

    invoke-direct {v0}, Lf2/i0;-><init>()V

    sput-object v0, Lf2/i0;->DEFAULT_INSTANCE:Lf2/i0;

    const-class v1, Lf2/i0;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lf2/i0;->buttonId_:Ljava/lang/String;

    iput-object v0, p0, Lf2/i0;->buttonText_:Ljava/lang/String;

    iput-object v0, p0, Lf2/i0;->iconUrl_:Ljava/lang/String;

    iput-object v0, p0, Lf2/i0;->searchQuery_:Ljava/lang/String;

    iput-object v0, p0, Lf2/i0;->actionUri_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()Lf2/i0;
    .locals 1

    sget-object v0, Lf2/i0;->DEFAULT_INSTANCE:Lf2/i0;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/i0;->actionUri_:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/i0;->buttonId_:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf2/i0;->buttonText_:Ljava/lang/String;

    return-object p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lf2/i0;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lf2/i0;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lf2/i0;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lf2/i0;->DEFAULT_INSTANCE:Lf2/i0;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lf2/i0;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lf2/i0;->DEFAULT_INSTANCE:Lf2/i0;

    return-object p0

    :pswitch_2
    new-instance p0, Lf2/b0;

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Lf2/b0;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lf2/i0;

    invoke-direct {p0}, Lf2/i0;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "buttonId_"

    const-string v2, "buttonText_"

    const-string v3, "iconUrl_"

    const-string v4, "searchQuery_"

    const-string v5, "actionUri_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004"

    sget-object v0, Lf2/i0;->DEFAULT_INSTANCE:Lf2/i0;

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

    iget-object p0, p0, Lf2/i0;->searchQuery_:Ljava/lang/String;

    return-object p0
.end method

.method public final f()Z
    .locals 0

    iget p0, p0, Lf2/i0;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
