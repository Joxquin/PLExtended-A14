.class public final Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

.field public static final ITEM_ATTRIBUTES_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/x0;


# instance fields
.field private itemAttributes_:Lcom/google/protobuf/N;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    sget-object v0, Lcom/google/protobuf/K;->g:Lcom/google/protobuf/K;

    iput-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/N;

    return-void
.end method

.method public static a(Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/N;

    move-object v1, v0

    check-cast v1, Lcom/google/protobuf/c;

    iget-boolean v1, v1, Lcom/google/protobuf/c;->d:Z

    if-nez v1, :cond_2

    check-cast v0, Lcom/google/protobuf/K;

    iget v1, v0, Lcom/google/protobuf/K;->f:I

    if-nez v1, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v1, 0x2

    :goto_0
    if-lt v2, v1, :cond_1

    new-instance v1, Lcom/google/protobuf/K;

    iget-object v3, v0, Lcom/google/protobuf/K;->e:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    iget v0, v0, Lcom/google/protobuf/K;->f:I

    invoke-direct {v1, v2, v0}, Lcom/google/protobuf/K;-><init>([II)V

    iput-object v1, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/N;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->itemAttributes_:Lcom/google/protobuf/N;

    check-cast p0, Lcom/google/protobuf/K;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/K;->i(I)V

    return-void
.end method

.method public static bridge synthetic b()Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object v0
.end method

.method public static newBuilder()Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;

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
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes$Builder;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "itemAttributes_"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0016"

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$LauncherAttributes;

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
