.class public final Lz3/d;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:Lz3/d;

.field public static final FRAME_FIELD_NUMBER:I = 0x3

.field public static final HEIGHT_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final WIDTH_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private frame_:Lcom/google/protobuf/S;

.field private height_:I

.field private width_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz3/d;

    invoke-direct {v0}, Lz3/d;-><init>()V

    sput-object v0, Lz3/d;->DEFAULT_INSTANCE:Lz3/d;

    const-class v1, Lz3/d;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    sget-object v0, Lcom/google/protobuf/A0;->g:Lcom/google/protobuf/A0;

    iput-object v0, p0, Lz3/d;->frame_:Lcom/google/protobuf/S;

    return-void
.end method

.method public static bridge synthetic a()Lz3/d;
    .locals 1

    sget-object v0, Lz3/d;->DEFAULT_INSTANCE:Lz3/d;

    return-object v0
.end method

.method public static b()Lz3/d;
    .locals 1

    sget-object v0, Lz3/d;->DEFAULT_INSTANCE:Lz3/d;

    return-object v0
.end method


# virtual methods
.method public final c(I)Lz3/e;
    .locals 0

    iget-object p0, p0, Lz3/d;->frame_:Lcom/google/protobuf/S;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz3/e;

    return-object p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, Lz3/d;->frame_:Lcom/google/protobuf/S;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lz3/d;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lz3/d;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lz3/d;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lz3/d;->DEFAULT_INSTANCE:Lz3/d;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lz3/d;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lz3/d;->DEFAULT_INSTANCE:Lz3/d;

    return-object p0

    :pswitch_2
    new-instance p0, Lz3/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lz3/a;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lz3/d;

    invoke-direct {p0}, Lz3/d;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "width_"

    const-string v0, "height_"

    const-string v1, "frame_"

    const-class v2, Lz3/e;

    filled-new-array {p0, p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u001b"

    sget-object v0, Lz3/d;->DEFAULT_INSTANCE:Lz3/d;

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

.method public final e()Lcom/google/protobuf/S;
    .locals 0

    iget-object p0, p0, Lz3/d;->frame_:Lcom/google/protobuf/S;

    return-object p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lz3/d;->height_:I

    return p0
.end method
