.class public final Lcom/google/protobuf/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/x0;


# instance fields
.field public final a:Lcom/google/protobuf/J;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/google/protobuf/w;->a()Lcom/google/protobuf/w;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/F;->a:Lcom/google/protobuf/J;

    return-void
.end method

.method public static b(Lcom/google/protobuf/p0;)V
    .locals 2

    invoke-interface {p0}, Lcom/google/protobuf/q0;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/google/protobuf/b;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/google/protobuf/b;

    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0}, Lcom/google/protobuf/UninitializedMessageException;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/protobuf/UninitializedMessageException;

    invoke-direct {v0}, Lcom/google/protobuf/UninitializedMessageException;-><init>()V

    :goto_0
    new-instance v1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->i(Lcom/google/protobuf/p0;)V

    throw v1

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/protobuf/n;Lcom/google/protobuf/w;)Lcom/google/protobuf/p0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/F;->c(Lcom/google/protobuf/n;Lcom/google/protobuf/w;)Lcom/google/protobuf/J;

    move-result-object p0

    invoke-static {p0}, Lcom/google/protobuf/F;->b(Lcom/google/protobuf/p0;)V

    return-object p0
.end method

.method public final c(Lcom/google/protobuf/n;Lcom/google/protobuf/w;)Lcom/google/protobuf/J;
    .locals 2

    sget-object v0, Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;->g:Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;

    iget-object p0, p0, Lcom/google/protobuf/F;->a:Lcom/google/protobuf/J;

    invoke-virtual {p0, v0}, Lcom/google/protobuf/J;->dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/J;

    :try_start_0
    sget-object v0, Lcom/google/protobuf/z0;->c:Lcom/google/protobuf/z0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/protobuf/z0;->a(Ljava/lang/Class;)Lcom/google/protobuf/C0;

    move-result-object v0

    iget-object v1, p1, Lcom/google/protobuf/n;->d:Lcom/google/protobuf/o;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/protobuf/o;

    invoke-direct {v1, p1}, Lcom/google/protobuf/o;-><init>(Lcom/google/protobuf/n;)V

    :goto_0
    invoke-interface {v0, p0, v1, p2}, Lcom/google/protobuf/C0;->c(Ljava/lang/Object;Lcom/google/protobuf/o;Lcom/google/protobuf/w;)V

    invoke-interface {v0, p0}, Lcom/google/protobuf/C0;->d(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/protobuf/UninitializedMessageException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    :cond_1
    throw p0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    :cond_2
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->i(Lcom/google/protobuf/p0;)V

    throw p2

    :goto_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->i(Lcom/google/protobuf/p0;)V

    throw p2

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    move-object p1, p2

    :cond_3
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->i(Lcom/google/protobuf/p0;)V

    throw p1
.end method
