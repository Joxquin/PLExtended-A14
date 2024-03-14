.class public final LZ1/b;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field public static final ACTION_FIELD_NUMBER:I = 0x4

.field public static final CLASS_NAME_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:LZ1/b;

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final URI_FIELD_NUMBER:I = 0x2


# instance fields
.field private action_:Ljava/lang/String;

.field private bitField0_:I

.field private className_:Ljava/lang/String;

.field private type_:I

.field private uri_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LZ1/b;

    invoke-direct {v0}, LZ1/b;-><init>()V

    sput-object v0, LZ1/b;->DEFAULT_INSTANCE:LZ1/b;

    const-class v1, LZ1/b;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LZ1/b;->uri_:Ljava/lang/String;

    iput-object v0, p0, LZ1/b;->className_:Ljava/lang/String;

    iput-object v0, p0, LZ1/b;->action_:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic a()LZ1/b;
    .locals 1

    sget-object v0, LZ1/b;->DEFAULT_INSTANCE:LZ1/b;

    return-object v0
.end method

.method public static d()LZ1/b;
    .locals 1

    sget-object v0, LZ1/b;->DEFAULT_INSTANCE:LZ1/b;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LZ1/b;->action_:Ljava/lang/String;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LZ1/b;->className_:Ljava/lang/String;

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
    sget-object p0, LZ1/b;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, LZ1/b;

    monitor-enter p1

    :try_start_0
    sget-object p0, LZ1/b;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, LZ1/b;->DEFAULT_INSTANCE:LZ1/b;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, LZ1/b;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, LZ1/b;->DEFAULT_INSTANCE:LZ1/b;

    return-object p0

    :pswitch_2
    new-instance p0, LZ1/a;

    invoke-direct {p0}, LZ1/a;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, LZ1/b;

    invoke-direct {p0}, LZ1/b;-><init>()V

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "type_"

    sget-object v2, LZ1/c;->a:LZ1/c;

    const-string v3, "uri_"

    const-string v4, "className_"

    const-string v5, "action_"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003"

    sget-object v0, LZ1/b;->DEFAULT_INSTANCE:LZ1/b;

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

.method public final e()Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;
    .locals 0

    iget p0, p0, LZ1/b;->type_:I

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;->a(I)Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;->d:Lcom/google/android/apps/nexuslauncher/searchwidget/thirdparty/IntentDefinitionType;

    :cond_0
    return-object p0
.end method

.method public final f()Z
    .locals 0

    iget p0, p0, LZ1/b;->bitField0_:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final g()Z
    .locals 0

    iget p0, p0, LZ1/b;->bitField0_:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LZ1/b;->uri_:Ljava/lang/String;

    return-object p0
.end method

.method public final h()Z
    .locals 1

    iget p0, p0, LZ1/b;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final i()Z
    .locals 0

    iget p0, p0, LZ1/b;->bitField0_:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
