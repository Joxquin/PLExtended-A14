.class public final Lz3/e;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final BOX_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lz3/e;

.field public static final FILE_NAME_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/x0;


# instance fields
.field private bitField0_:I

.field private box_:Lcom/google/protobuf/S;

.field private fileName_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz3/e;

    invoke-direct {v0}, Lz3/e;-><init>()V

    sput-object v0, Lz3/e;->DEFAULT_INSTANCE:Lz3/e;

    const-class v1, Lz3/e;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    sget-object v0, Lcom/google/protobuf/A0;->g:Lcom/google/protobuf/A0;

    iput-object v0, p0, Lz3/e;->box_:Lcom/google/protobuf/S;

    const-string v0, ""

    iput-object v0, p0, Lz3/e;->fileName_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()Lz3/e;
    .locals 1

    sget-object v0, Lz3/e;->DEFAULT_INSTANCE:Lz3/e;

    return-object v0
.end method


# virtual methods
.method public final b(I)Lz3/b;
    .locals 0

    iget-object p0, p0, Lz3/e;->box_:Lcom/google/protobuf/S;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz3/b;

    return-object p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, Lz3/e;->box_:Lcom/google/protobuf/S;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final d()Lcom/google/protobuf/S;
    .locals 0

    iget-object p0, p0, Lz3/e;->box_:Lcom/google/protobuf/S;

    return-object p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lz3/e;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lz3/e;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lz3/e;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lz3/e;->DEFAULT_INSTANCE:Lz3/e;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lz3/e;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lz3/e;->DEFAULT_INSTANCE:Lz3/e;

    return-object p0

    :pswitch_2
    new-instance p0, Lz3/a;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lz3/a;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lz3/e;

    invoke-direct {p0}, Lz3/e;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "box_"

    const-class v0, Lz3/b;

    const-string v1, "fileName_"

    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000"

    sget-object v0, Lz3/e;->DEFAULT_INSTANCE:Lz3/e;

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
