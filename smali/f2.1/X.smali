.class public final Lf2/X;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:Lf2/X;

.field private static volatile PARSER:Lcom/google/protobuf/x0; = null

.field public static final STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private status_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf2/X;

    invoke-direct {v0}, Lf2/X;-><init>()V

    sput-object v0, Lf2/X;->DEFAULT_INSTANCE:Lf2/X;

    const-class v1, Lf2/X;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lf2/X;
    .locals 1

    sget-object v0, Lf2/X;->DEFAULT_INSTANCE:Lf2/X;

    return-object v0
.end method

.method public static c([BLcom/google/protobuf/w;)Lf2/X;
    .locals 1

    sget-object v0, Lf2/X;->DEFAULT_INSTANCE:Lf2/X;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/J;->parseFrom(Lf2/X;[BLcom/google/protobuf/w;)Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lf2/X;

    return-object p0
.end method


# virtual methods
.method public final b()Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;
    .locals 0

    iget p0, p0, Lf2/X;->status_:I

    invoke-static {p0}, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->a(I)Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;->d:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/OneSearchError$Status;

    :cond_0
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
    sget-object p0, Lf2/X;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lf2/X;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lf2/X;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lf2/X;->DEFAULT_INSTANCE:Lf2/X;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lf2/X;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lf2/X;->DEFAULT_INSTANCE:Lf2/X;

    return-object p0

    :pswitch_2
    new-instance p0, Lf2/V;

    invoke-direct {p0}, Lf2/V;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lf2/X;

    invoke-direct {p0}, Lf2/X;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "status_"

    sget-object v0, Lf2/W;->a:Lf2/W;

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    sget-object v0, Lf2/X;->DEFAULT_INSTANCE:Lf2/X;

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
