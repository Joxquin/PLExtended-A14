.class public final Lz3/f;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:Lz3/f;

.field public static final MAX_NUM_STARTS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final START_EVERY_NUM_TIMES_FIELD_NUMBER:I = 0x2

.field public static final START_ON_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private maxNumStarts_:I

.field private startEveryNumTimes_:I

.field private startOn_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz3/f;

    invoke-direct {v0}, Lz3/f;-><init>()V

    sput-object v0, Lz3/f;->DEFAULT_INSTANCE:Lz3/f;

    const-class v1, Lz3/f;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lz3/f;->startEveryNumTimes_:I

    const v0, 0xf423f

    iput v0, p0, Lz3/f;->maxNumStarts_:I

    return-void
.end method

.method public static bridge synthetic a()Lz3/f;
    .locals 1

    sget-object v0, Lz3/f;->DEFAULT_INSTANCE:Lz3/f;

    return-object v0
.end method

.method public static b()Lz3/f;
    .locals 1

    sget-object v0, Lz3/f;->DEFAULT_INSTANCE:Lz3/f;

    return-object v0
.end method


# virtual methods
.method public final c()I
    .locals 0

    iget p0, p0, Lz3/f;->maxNumStarts_:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lz3/f;->startEveryNumTimes_:I

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
    sget-object p0, Lz3/f;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lz3/f;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lz3/f;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lz3/f;->DEFAULT_INSTANCE:Lz3/f;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lz3/f;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lz3/f;->DEFAULT_INSTANCE:Lz3/f;

    return-object p0

    :pswitch_2
    new-instance p0, Lz3/a;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lz3/a;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lz3/f;

    invoke-direct {p0}, Lz3/f;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "startOn_"

    sget-object v0, Lz3/g;->a:Lz3/g;

    const-string v1, "startEveryNumTimes_"

    const-string v2, "maxNumStarts_"

    filled-new-array {p0, p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1004\u0001\u0003\u1004\u0002"

    sget-object v0, Lz3/f;->DEFAULT_INSTANCE:Lz3/f;

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

.method public final e()Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;
    .locals 2

    iget p0, p0, Lz3/f;->startOn_:I

    sget-object v0, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;->d:Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;->e:Lquality/ui/doodles/tools/crushinator/Crushinator$StartOn;

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    return-object v0
.end method
