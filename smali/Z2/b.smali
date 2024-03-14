.class public final LZ2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/t0;


# static fields
.field public static final c:Ljava/lang/ThreadLocal;


# instance fields
.field public final a:Lcom/google/protobuf/x0;

.field public final b:Lcom/google/protobuf/p0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, LZ2/b;->c:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/J;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ2/b;->b:Lcom/google/protobuf/p0;

    invoke-virtual {p1}, Lcom/google/protobuf/J;->getParserForType()Lcom/google/protobuf/x0;

    move-result-object p1

    iput-object p1, p0, LZ2/b;->a:Lcom/google/protobuf/x0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)LZ2/a;
    .locals 1

    check-cast p1, Lcom/google/protobuf/p0;

    new-instance v0, LZ2/a;

    iget-object p0, p0, LZ2/b;->a:Lcom/google/protobuf/x0;

    invoke-direct {v0, p1, p0}, LZ2/a;-><init>(Lcom/google/protobuf/p0;Lcom/google/protobuf/x0;)V

    return-object v0
.end method

.method public final b(Ljava/io/InputStream;)Lcom/google/protobuf/p0;
    .locals 7

    instance-of v0, p1, LZ2/a;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, LZ2/a;

    iget-object v0, v0, LZ2/a;->e:Lcom/google/protobuf/x0;

    iget-object v1, p0, LZ2/b;->a:Lcom/google/protobuf/x0;

    if-ne v0, v1, :cond_1

    :try_start_0
    move-object v0, p1

    check-cast v0, LZ2/a;

    iget-object v0, v0, LZ2/a;->d:Lcom/google/protobuf/p0;

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :try_start_1
    instance-of v0, p1, LX2/T;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_7

    const/high16 v3, 0x400000

    if-gt v0, v3, :cond_7

    sget-object v3, LZ2/b;->c:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    if-eqz v4, :cond_2

    array-length v5, v4

    if-ge v5, v0, :cond_3

    :cond_2
    new-array v4, v0, [B

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    move v3, v0

    :goto_0
    if-lez v3, :cond_5

    sub-int v5, v0, v3

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    goto :goto_1

    :cond_4
    sub-int/2addr v3, v5

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v3, :cond_6

    invoke-static {v4, v2, v0, v2}, Lcom/google/protobuf/n;->f([BIIZ)Lcom/google/protobuf/l;

    move-result-object v0

    goto :goto_2

    :cond_6
    sub-int p0, v0, v3

    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size inaccurate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " != "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-nez v0, :cond_8

    iget-object v0, p0, LZ2/b;->b:Lcom/google/protobuf/p0;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    :cond_8
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_9

    new-instance v0, Lcom/google/protobuf/m;

    invoke-direct {v0, p1}, Lcom/google/protobuf/m;-><init>(Ljava/io/InputStream;)V

    :cond_9
    const p1, 0x7fffffff

    iput p1, v0, Lcom/google/protobuf/n;->c:I

    :try_start_2
    iget-object p0, p0, LZ2/b;->a:Lcom/google/protobuf/x0;

    sget-object p1, LZ2/c;->a:Lcom/google/protobuf/w;

    invoke-interface {p0, v0, p1}, Lcom/google/protobuf/x0;->a(Lcom/google/protobuf/n;Lcom/google/protobuf/w;)Lcom/google/protobuf/p0;

    move-result-object p0
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v0, v2}, Lcom/google/protobuf/n;->a(I)V
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, p0

    :goto_3
    return-object v0

    :catch_1
    move-exception p1

    :try_start_4
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->i(Lcom/google/protobuf/p0;)V

    throw p1
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p0

    sget-object p1, LX2/L0;->m:LX2/L0;

    const-string v0, "Invalid protobuf byte sequence"

    invoke-virtual {p1, v0}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object p1

    invoke-virtual {p1, p0}, LX2/L0;->e(Ljava/lang/Throwable;)LX2/L0;

    move-result-object p0

    new-instance p1, Lio/grpc/StatusRuntimeException;

    invoke-direct {p1, p0, v1}, Lio/grpc/StatusRuntimeException;-><init>(LX2/L0;LX2/r0;)V

    throw p1

    :catch_3
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
