.class public final Lz3/b;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final ABSOLUTE_LEFT_FIELD_NUMBER:I = 0x1

.field public static final ABSOLUTE_TOP_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lz3/b;

.field public static final HEIGHT_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final REVERSIBLE_FIELD_NUMBER:I = 0x7

.field public static final SPRITE_LEFT_FIELD_NUMBER:I = 0x3

.field public static final SPRITE_TOP_FIELD_NUMBER:I = 0x4

.field public static final WIDTH_FIELD_NUMBER:I = 0x5


# instance fields
.field private absoluteLeft_:I

.field private absoluteTop_:I

.field private bitField0_:I

.field private height_:I

.field private reversible_:Z

.field private spriteLeft_:I

.field private spriteTop_:I

.field private width_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz3/b;

    invoke-direct {v0}, Lz3/b;-><init>()V

    sput-object v0, Lz3/b;->DEFAULT_INSTANCE:Lz3/b;

    const-class v1, Lz3/b;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lz3/b;
    .locals 1

    sget-object v0, Lz3/b;->DEFAULT_INSTANCE:Lz3/b;

    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, Lz3/b;->absoluteLeft_:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget p0, p0, Lz3/b;->absoluteTop_:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget p0, p0, Lz3/b;->height_:I

    return p0
.end method

.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lz3/b;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lz3/b;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lz3/b;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lz3/b;->DEFAULT_INSTANCE:Lz3/b;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lz3/b;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lz3/b;->DEFAULT_INSTANCE:Lz3/b;

    return-object p0

    :pswitch_2
    new-instance p0, Lz3/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lz3/a;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lz3/b;

    invoke-direct {p0}, Lz3/b;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "absoluteLeft_"

    const-string v2, "absoluteTop_"

    const-string v3, "spriteLeft_"

    const-string v4, "spriteTop_"

    const-string v5, "width_"

    const-string v6, "height_"

    const-string v7, "reversible_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1004\u0001\u0003\u1004\u0002\u0004\u1004\u0003\u0005\u1004\u0004\u0006\u1004\u0005\u0007\u1007\u0006"

    sget-object v0, Lz3/b;->DEFAULT_INSTANCE:Lz3/b;

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

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lz3/b;->reversible_:Z

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lz3/b;->spriteLeft_:I

    return p0
.end method

.method public final g()I
    .locals 0

    iget p0, p0, Lz3/b;->spriteTop_:I

    return p0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lz3/b;->width_:I

    return p0
.end method
