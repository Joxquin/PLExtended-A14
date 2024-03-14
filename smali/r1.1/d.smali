.class public final Lr1/d;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final CLICKED_SUBCARD_INDEX_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lr1/d;

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final SUBCARDS_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private clickedSubcardIndex_:I

.field private subcards_:Lcom/google/protobuf/S;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr1/d;

    invoke-direct {v0}, Lr1/d;-><init>()V

    sput-object v0, Lr1/d;->DEFAULT_INSTANCE:Lr1/d;

    const-class v1, Lr1/d;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    sget-object v0, Lcom/google/protobuf/A0;->g:Lcom/google/protobuf/A0;

    iput-object v0, p0, Lr1/d;->subcards_:Lcom/google/protobuf/S;

    return-void
.end method

.method public static a(Lr1/d;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lr1/d;->subcards_:Lcom/google/protobuf/S;

    invoke-interface {v0}, Lcom/google/protobuf/S;->g()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/protobuf/J;->mutableCopy(Lcom/google/protobuf/S;)Lcom/google/protobuf/S;

    move-result-object v0

    iput-object v0, p0, Lr1/d;->subcards_:Lcom/google/protobuf/S;

    :cond_0
    iget-object p0, p0, Lr1/d;->subcards_:Lcom/google/protobuf/S;

    invoke-static {p1, p0}, Lcom/google/protobuf/b;->addAll(Ljava/lang/Iterable;Lcom/google/protobuf/S;)V

    return-void
.end method

.method public static b(Lr1/d;I)V
    .locals 1

    iget v0, p0, Lr1/d;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lr1/d;->bitField0_:I

    iput p1, p0, Lr1/d;->clickedSubcardIndex_:I

    return-void
.end method

.method public static bridge synthetic c()Lr1/d;
    .locals 1

    sget-object v0, Lr1/d;->DEFAULT_INSTANCE:Lr1/d;

    return-object v0
.end method

.method public static d()Lr1/c;
    .locals 1

    sget-object v0, Lr1/d;->DEFAULT_INSTANCE:Lr1/d;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, Lr1/c;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lr1/d;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lr1/d;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lr1/d;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lr1/d;->DEFAULT_INSTANCE:Lr1/d;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lr1/d;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lr1/d;->DEFAULT_INSTANCE:Lr1/d;

    return-object p0

    :pswitch_2
    new-instance p0, Lr1/c;

    invoke-direct {p0}, Lr1/c;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lr1/d;

    invoke-direct {p0}, Lr1/d;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "subcards_"

    const-class v0, Lr1/b;

    const-string v1, "clickedSubcardIndex_"

    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u1004\u0000"

    sget-object v0, Lr1/d;->DEFAULT_INSTANCE:Lr1/d;

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
