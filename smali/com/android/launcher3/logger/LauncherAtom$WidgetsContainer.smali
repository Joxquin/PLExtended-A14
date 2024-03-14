.class public final Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

.field private static volatile PARSER:Lcom/google/protobuf/x0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    invoke-direct {v0}, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;-><init>()V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    const-class v1, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    return-object v0
.end method

.method public static getDefaultInstance()Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer$Builder;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    invoke-direct {p0}, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "\u0001\u0000"

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;->DEFAULT_INSTANCE:Lcom/android/launcher3/logger/LauncherAtom$WidgetsContainer;

    new-instance v1, Lcom/google/protobuf/B0;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/protobuf/B0;-><init>(Lcom/google/protobuf/J;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    return-object p1

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
