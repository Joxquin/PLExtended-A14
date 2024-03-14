.class public final Lf2/w0;
.super Lcom/google/protobuf/J;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/q0;


# static fields
.field private static final DEFAULT_INSTANCE:Lf2/w0;

.field public static final GOOGLE_BLOCK_FIELD_NUMBER:I = 0x1

.field public static final ON_DEVICE_BLOCK_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/x0;


# instance fields
.field private bitField0_:I

.field private rowInfoCase_:I

.field private rowInfo_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf2/w0;

    invoke-direct {v0}, Lf2/w0;-><init>()V

    sput-object v0, Lf2/w0;->DEFAULT_INSTANCE:Lf2/w0;

    const-class v1, Lf2/w0;

    invoke-static {v1, v0}, Lcom/google/protobuf/J;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/J;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/J;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lf2/w0;->rowInfoCase_:I

    return-void
.end method

.method public static a(Lf2/w0;Lf2/t0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lf2/w0;->rowInfo_:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lf2/w0;->rowInfoCase_:I

    return-void
.end method

.method public static b(Lf2/w0;Lf2/v0;)V
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lf2/w0;->rowInfo_:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lf2/w0;->rowInfoCase_:I

    return-void
.end method

.method public static bridge synthetic c()Lf2/w0;
    .locals 1

    sget-object v0, Lf2/w0;->DEFAULT_INSTANCE:Lf2/w0;

    return-object v0
.end method

.method public static e()Lf2/r0;
    .locals 1

    sget-object v0, Lf2/w0;->DEFAULT_INSTANCE:Lf2/w0;

    invoke-virtual {v0}, Lcom/google/protobuf/J;->createBuilder()Lcom/google/protobuf/E;

    move-result-object v0

    check-cast v0, Lf2/r0;

    return-object v0
.end method


# virtual methods
.method public final d()Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;
    .locals 1

    iget p0, p0, Lf2/w0;->rowInfoCase_:I

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;->e:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;->d:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;->f:Lcom/google/android/apps/search/googleapp/search/suggest/plugins/onesearch/RenderedSuggestions$OneSearchRenderedBlock$RowInfoCase;

    :goto_0
    return-object p0
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
    sget-object p0, Lf2/w0;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_1

    const-class p1, Lf2/w0;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lf2/w0;->PARSER:Lcom/google/protobuf/x0;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/F;

    sget-object v0, Lf2/w0;->DEFAULT_INSTANCE:Lf2/w0;

    invoke-direct {p0, v0}, Lcom/google/protobuf/F;-><init>(Lcom/google/protobuf/J;)V

    sput-object p0, Lf2/w0;->PARSER:Lcom/google/protobuf/x0;

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
    sget-object p0, Lf2/w0;->DEFAULT_INSTANCE:Lf2/w0;

    return-object p0

    :pswitch_2
    new-instance p0, Lf2/r0;

    invoke-direct {p0}, Lf2/r0;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lf2/w0;

    invoke-direct {p0}, Lf2/w0;-><init>()V

    return-object p0

    :pswitch_4
    const-string p0, "rowInfo_"

    const-string p1, "rowInfoCase_"

    const-string v0, "bitField0_"

    const-class v1, Lf2/t0;

    const-class v2, Lf2/v0;

    filled-new-array {p0, p1, v0, v1, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0002\u0001\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u103c\u0000\u0002\u103c\u0000"

    sget-object v0, Lf2/w0;->DEFAULT_INSTANCE:Lf2/w0;

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
