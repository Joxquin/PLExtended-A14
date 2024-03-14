.class public final Lg2/o;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final APP_ICON_FIELD_NUMBER:I = 0x3

.field public static final APP_NAME_FIELD_NUMBER:I = 0x1

.field public static final APP_PACKAGE_NAME_FIELD_NUMBER:I = 0x2

.field public static final CONFIDENCE_SCORE_FIELD_NUMBER:I = 0x7

.field public static final DEEP_LINK_FOR_INSTALL_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lg2/o;

.field public static final DEVELOPER_NAME_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final RATING_FIELD_NUMBER:I = 0x4


# instance fields
.field private appIcon_:Lg2/r;

.field private appName_:Ljava/lang/String;

.field private appPackageName_:Ljava/lang/String;

.field private bitField0_:I

.field private confidenceScore_:D

.field private deepLinkForInstall_:Ljava/lang/String;

.field private developerName_:Ljava/lang/String;

.field private rating_:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg2/o;

    invoke-direct {v0}, Lg2/o;-><init>()V

    sput-object v0, Lg2/o;->DEFAULT_INSTANCE:Lg2/o;

    const-class v1, Lg2/o;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg2/o;->appName_:Ljava/lang/String;

    iput-object v0, p0, Lg2/o;->appPackageName_:Ljava/lang/String;

    iput-object v0, p0, Lg2/o;->developerName_:Ljava/lang/String;

    iput-object v0, p0, Lg2/o;->deepLinkForInstall_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()Lg2/o;
    .locals 1

    sget-object v0, Lg2/o;->DEFAULT_INSTANCE:Lg2/o;

    return-object v0
.end method


# virtual methods
.method public final b()Lg2/r;
    .locals 0

    iget-object p0, p0, Lg2/o;->appIcon_:Lg2/r;

    if-nez p0, :cond_0

    invoke-static {}, Lg2/r;->b()Lg2/r;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg2/o;->appName_:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg2/o;->appPackageName_:Ljava/lang/String;

    return-object p0
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
    sget-object p0, Lg2/o;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lg2/o;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lg2/o;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lg2/o;->DEFAULT_INSTANCE:Lg2/o;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lg2/o;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lg2/o;->DEFAULT_INSTANCE:Lg2/o;

    return-object p0

    :pswitch_2
    new-instance p0, Lg2/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg2/n;-><init>(I)V

    return-object p0

    :pswitch_3
    new-instance p0, Lg2/o;

    invoke-direct {p0}, Lg2/o;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "appName_"

    const-string v2, "appPackageName_"

    const-string v3, "appIcon_"

    const-string v4, "rating_"

    const-string v5, "developerName_"

    const-string v6, "deepLinkForInstall_"

    const-string v7, "confidenceScore_"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1009\u0002\u0004\u1001\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1000\u0006"

    sget-object v0, Lg2/o;->DEFAULT_INSTANCE:Lg2/o;

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

.method public final e()D
    .locals 2

    iget-wide v0, p0, Lg2/o;->confidenceScore_:D

    return-wide v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg2/o;->deepLinkForInstall_:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lg2/o;->developerName_:Ljava/lang/String;

    return-object p0
.end method

.method public final h()F
    .locals 0

    iget p0, p0, Lg2/o;->rating_:F

    return p0
.end method

.method public final i()Z
    .locals 0

    iget p0, p0, Lg2/o;->bitField0_:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j()Z
    .locals 0

    iget p0, p0, Lg2/o;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
