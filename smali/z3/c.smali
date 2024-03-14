.class public final Lz3/c;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final CRUSHINATED_IMAGE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lz3/c;

.field public static final FPS_FIELD_NUMBER:I = 0x5

.field public static final INITIAL_DELAY_MS_FIELD_NUMBER:I = 0x8

.field public static final LOOP_COUNT_FIELD_NUMBER:I = 0x7

.field public static final LOOP_DELAY_MS_FIELD_NUMBER:I = 0x6

.field public static final LOOP_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final PLAY_IN_OVERVIEW_FIELD_NUMBER:I = 0xa

.field public static final REVERSE_FIELD_NUMBER:I = 0x3

.field public static final SPRITE_IMAGE_FIELD_NUMBER:I = 0x2

.field public static final START_CRITERIA_FIELD_NUMBER:I = 0x9

.field public static final SUPER_G_COLOR_FIELD_NUMBER:I = 0xb

.field public static final USE_SUPER_G_COLOR_FIELD_NUMBER:I = 0xc


# instance fields
.field private bitField0_:I

.field private crushinatedImage_:Lz3/d;

.field private fps_:F

.field private initialDelayMs_:I

.field private loopCount_:I

.field private loopDelayMs_:I

.field private loop_:Z

.field private playInOverview_:Z

.field private reverse_:Z

.field private spriteImage_:Ljava/lang/String;

.field private startCriteria_:Lz3/f;

.field private superGColor_:I

.field private useSuperGColor_:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz3/c;

    invoke-direct {v0}, Lz3/c;-><init>()V

    sput-object v0, Lz3/c;->DEFAULT_INSTANCE:Lz3/c;

    const-class v1, Lz3/c;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lz3/c;->spriteImage_:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lz3/c;->loopCount_:I

    return-void
.end method

.method public static bridge synthetic a()Lz3/c;
    .locals 1

    sget-object v0, Lz3/c;->DEFAULT_INSTANCE:Lz3/c;

    return-object v0
.end method

.method public static o([B)Lz3/c;
    .locals 1

    sget-object v0, Lz3/c;->DEFAULT_INSTANCE:Lz3/c;

    invoke-static {v0, p0}, Lcom/google/protobuf/J;->parseFrom(Lcom/google/protobuf/J;[B)Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lz3/c;

    return-object p0
.end method


# virtual methods
.method public final b()Lz3/d;
    .locals 0

    iget-object p0, p0, Lz3/c;->crushinatedImage_:Lz3/d;

    if-nez p0, :cond_0

    invoke-static {}, Lz3/d;->b()Lz3/d;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lz3/c;->fps_:F

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lz3/c;->initialDelayMs_:I

    return p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lz3/c;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lz3/c;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lz3/c;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lz3/c;->DEFAULT_INSTANCE:Lz3/c;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lz3/c;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lz3/c;->DEFAULT_INSTANCE:Lz3/c;

    return-object p0

    :pswitch_2
    new-instance p0, Lz3/a;

    invoke-direct {p0, p1}, Lz3/a;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lz3/c;

    invoke-direct {p0}, Lz3/c;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "crushinatedImage_"

    const-string v2, "spriteImage_"

    const-string v3, "reverse_"

    const-string v4, "loop_"

    const-string v5, "fps_"

    const-string v6, "loopDelayMs_"

    const-string v7, "loopCount_"

    const-string v8, "initialDelayMs_"

    const-string v9, "startCriteria_"

    const-string v10, "playInOverview_"

    const-string v11, "superGColor_"

    const-string v12, "useSuperGColor_"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u1007\u0003\u0005\u1001\u0004\u0006\u1004\u0005\u0007\u1004\u0006\u0008\u1004\u0007\t\u1009\u0008\n\u1007\t\u000b\u1004\n\u000c\u1007\u000b"

    sget-object v0, Lz3/c;->DEFAULT_INSTANCE:Lz3/c;

    new-instance v1, Lcom/google/protobuf/B0;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/protobuf/B0;-><init>(Lcom/google/protobuf/J;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    const/4 p0, 0x0

    return-object p0

    :pswitch_6
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

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

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lz3/c;->loop_:Z

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lz3/c;->loopCount_:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lz3/c;->loopDelayMs_:I

    return p0
.end method

.method public final h()Z
    .locals 0

    iget-boolean p0, p0, Lz3/c;->reverse_:Z

    return p0
.end method

.method public final i()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lz3/c;->spriteImage_:Ljava/lang/String;

    return-object p0
.end method

.method public final j()Lz3/f;
    .locals 0

    iget-object p0, p0, Lz3/c;->startCriteria_:Lz3/f;

    if-nez p0, :cond_0

    invoke-static {}, Lz3/f;->b()Lz3/f;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final k()I
    .locals 0

    iget p0, p0, Lz3/c;->superGColor_:I

    return p0
.end method

.method public final l()Z
    .locals 0

    iget-boolean p0, p0, Lz3/c;->useSuperGColor_:Z

    return p0
.end method

.method public final m()Z
    .locals 1

    iget p0, p0, Lz3/c;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n()Z
    .locals 0

    iget p0, p0, Lz3/c;->bitField0_:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
