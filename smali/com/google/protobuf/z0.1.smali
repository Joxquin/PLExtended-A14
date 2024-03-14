.class public final Lcom/google/protobuf/z0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/protobuf/z0;


# instance fields
.field public final a:Lcom/google/protobuf/g0;

.field public final b:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/z0;

    invoke-direct {v0}, Lcom/google/protobuf/z0;-><init>()V

    sput-object v0, Lcom/google/protobuf/z0;->c:Lcom/google/protobuf/z0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/z0;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/protobuf/g0;

    invoke-direct {v0}, Lcom/google/protobuf/g0;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/z0;->a:Lcom/google/protobuf/g0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/protobuf/C0;
    .locals 8

    sget-object v0, Lcom/google/protobuf/T;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_c

    iget-object v0, p0, Lcom/google/protobuf/z0;->b:Ljava/util/concurrent/ConcurrentMap;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/C0;

    if-nez v1, :cond_b

    iget-object p0, p0, Lcom/google/protobuf/z0;->a:Lcom/google/protobuf/g0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/protobuf/D0;->a:Ljava/lang/Class;

    const-class v1, Lcom/google/protobuf/J;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/protobuf/D0;->a:Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message classes must extend GeneratedMessageV3 or GeneratedMessageLite"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/protobuf/g0;->a:Lcom/google/protobuf/n0;

    invoke-interface {p0, p1}, Lcom/google/protobuf/n0;->a(Ljava/lang/Class;)Lcom/google/protobuf/m0;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/protobuf/m0;->a()Z

    move-result p0

    const-string v3, "Protobuf runtime is not correctly loaded."

    if-eqz p0, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/protobuf/D0;->d:Lcom/google/protobuf/Q0;

    sget-object v1, Lcom/google/protobuf/z;->a:Lcom/google/protobuf/y;

    invoke-interface {v2}, Lcom/google/protobuf/m0;->c()Lcom/google/protobuf/p0;

    move-result-object v2

    new-instance v3, Lcom/google/protobuf/t0;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/protobuf/t0;-><init>(Lcom/google/protobuf/O0;Lcom/google/protobuf/x;Lcom/google/protobuf/p0;)V

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/google/protobuf/D0;->b:Lcom/google/protobuf/O0;

    sget-object v1, Lcom/google/protobuf/z;->b:Lcom/google/protobuf/x;

    if-eqz v1, :cond_3

    invoke-interface {v2}, Lcom/google/protobuf/m0;->c()Lcom/google/protobuf/p0;

    move-result-object v2

    new-instance v3, Lcom/google/protobuf/t0;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/protobuf/t0;-><init>(Lcom/google/protobuf/O0;Lcom/google/protobuf/x;Lcom/google/protobuf/p0;)V

    :goto_1
    move-object v1, v3

    goto/16 :goto_5

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    const/4 v1, 0x1

    const/4 v4, 0x0

    sget-object v5, Lcom/google/protobuf/ProtoSyntax;->d:Lcom/google/protobuf/ProtoSyntax;

    if-eqz p0, :cond_7

    invoke-interface {v2}, Lcom/google/protobuf/m0;->b()Lcom/google/protobuf/ProtoSyntax;

    move-result-object p0

    if-ne p0, v5, :cond_5

    goto :goto_2

    :cond_5
    move v1, v4

    :goto_2
    if-eqz v1, :cond_6

    sget-object v3, Lcom/google/protobuf/w0;->b:Lcom/google/protobuf/v0;

    sget-object v4, Lcom/google/protobuf/c0;->b:Lcom/google/protobuf/b0;

    sget-object v5, Lcom/google/protobuf/D0;->d:Lcom/google/protobuf/Q0;

    sget-object v6, Lcom/google/protobuf/z;->a:Lcom/google/protobuf/y;

    sget-object v7, Lcom/google/protobuf/l0;->b:Lcom/google/protobuf/k0;

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/s0;->B(Lcom/google/protobuf/m0;Lcom/google/protobuf/u0;Lcom/google/protobuf/c0;Lcom/google/protobuf/O0;Lcom/google/protobuf/x;Lcom/google/protobuf/j0;)Lcom/google/protobuf/s0;

    move-result-object p0

    goto :goto_4

    :cond_6
    sget-object v3, Lcom/google/protobuf/w0;->b:Lcom/google/protobuf/v0;

    sget-object v4, Lcom/google/protobuf/c0;->b:Lcom/google/protobuf/b0;

    sget-object v5, Lcom/google/protobuf/D0;->d:Lcom/google/protobuf/Q0;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/protobuf/l0;->b:Lcom/google/protobuf/k0;

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/s0;->B(Lcom/google/protobuf/m0;Lcom/google/protobuf/u0;Lcom/google/protobuf/c0;Lcom/google/protobuf/O0;Lcom/google/protobuf/x;Lcom/google/protobuf/j0;)Lcom/google/protobuf/s0;

    move-result-object p0

    goto :goto_4

    :cond_7
    invoke-interface {v2}, Lcom/google/protobuf/m0;->b()Lcom/google/protobuf/ProtoSyntax;

    move-result-object p0

    if-ne p0, v5, :cond_8

    goto :goto_3

    :cond_8
    move v1, v4

    :goto_3
    if-eqz v1, :cond_a

    sget-object p0, Lcom/google/protobuf/w0;->a:Lcom/google/protobuf/u0;

    sget-object v4, Lcom/google/protobuf/c0;->a:Lcom/google/protobuf/a0;

    sget-object v5, Lcom/google/protobuf/D0;->b:Lcom/google/protobuf/O0;

    sget-object v6, Lcom/google/protobuf/z;->b:Lcom/google/protobuf/x;

    if-eqz v6, :cond_9

    sget-object v7, Lcom/google/protobuf/l0;->a:Lcom/google/protobuf/j0;

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/s0;->B(Lcom/google/protobuf/m0;Lcom/google/protobuf/u0;Lcom/google/protobuf/c0;Lcom/google/protobuf/O0;Lcom/google/protobuf/x;Lcom/google/protobuf/j0;)Lcom/google/protobuf/s0;

    move-result-object p0

    goto :goto_4

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    sget-object v3, Lcom/google/protobuf/w0;->a:Lcom/google/protobuf/u0;

    sget-object v4, Lcom/google/protobuf/c0;->a:Lcom/google/protobuf/a0;

    sget-object v5, Lcom/google/protobuf/D0;->c:Lcom/google/protobuf/O0;

    const/4 v6, 0x0

    sget-object v7, Lcom/google/protobuf/l0;->a:Lcom/google/protobuf/j0;

    invoke-static/range {v2 .. v7}, Lcom/google/protobuf/s0;->B(Lcom/google/protobuf/m0;Lcom/google/protobuf/u0;Lcom/google/protobuf/c0;Lcom/google/protobuf/O0;Lcom/google/protobuf/x;Lcom/google/protobuf/j0;)Lcom/google/protobuf/s0;

    move-result-object p0

    :goto_4
    move-object v1, p0

    :goto_5
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/C0;

    if-eqz p0, :cond_b

    move-object v1, p0

    :cond_b
    return-object v1

    :cond_c
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "messageType"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
