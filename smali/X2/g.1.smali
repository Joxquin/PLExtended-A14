.class public final LX2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:LX2/g;


# instance fields
.field public a:LX2/E;

.field public b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/lang/String;

.field public final d:LX2/e;

.field public final e:Ljava/lang/String;

.field public f:[[Ljava/lang/Object;

.field public g:Ljava/util/List;

.field public h:Ljava/lang/Boolean;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LX2/g;

    invoke-direct {v0}, LX2/g;-><init>()V

    sput-object v0, LX2/g;->k:LX2/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LX2/g;->g:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 3
    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, LX2/g;->f:[[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LX2/g;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LX2/g;->g:Ljava/util/List;

    .line 6
    iget-object v0, p1, LX2/g;->a:LX2/E;

    iput-object v0, p0, LX2/g;->a:LX2/E;

    .line 7
    iget-object v0, p1, LX2/g;->c:Ljava/lang/String;

    iput-object v0, p0, LX2/g;->c:Ljava/lang/String;

    .line 8
    iget-object v0, p1, LX2/g;->d:LX2/e;

    iput-object v0, p0, LX2/g;->d:LX2/e;

    .line 9
    iget-object v0, p1, LX2/g;->b:Ljava/util/concurrent/Executor;

    iput-object v0, p0, LX2/g;->b:Ljava/util/concurrent/Executor;

    .line 10
    iget-object v0, p1, LX2/g;->e:Ljava/lang/String;

    iput-object v0, p0, LX2/g;->e:Ljava/lang/String;

    .line 11
    iget-object v0, p1, LX2/g;->f:[[Ljava/lang/Object;

    iput-object v0, p0, LX2/g;->f:[[Ljava/lang/Object;

    .line 12
    iget-object v0, p1, LX2/g;->h:Ljava/lang/Boolean;

    iput-object v0, p0, LX2/g;->h:Ljava/lang/Boolean;

    .line 13
    iget-object v0, p1, LX2/g;->i:Ljava/lang/Integer;

    iput-object v0, p0, LX2/g;->i:Ljava/lang/Integer;

    .line 14
    iget-object v0, p1, LX2/g;->j:Ljava/lang/Integer;

    iput-object v0, p0, LX2/g;->j:Ljava/lang/Integer;

    .line 15
    iget-object p1, p1, LX2/g;->g:Ljava/util/List;

    iput-object p1, p0, LX2/g;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(LX2/f;)Ljava/lang/Object;
    .locals 4

    const-string v0, "key"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, LX2/g;->f:[[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, LX2/g;->f:[[Ljava/lang/Object;

    aget-object p0, p0, v1

    const/4 p1, 0x1

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(LX2/f;Ljava/lang/Object;)LX2/g;
    .locals 7

    const-string v0, "key"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, LX2/g;

    invoke-direct {v0, p0}, LX2/g;-><init>(LX2/g;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, LX2/g;->f:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, -0x1

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_1
    iget-object v3, p0, LX2/g;->f:[[Ljava/lang/Object;

    array-length v3, v3

    if-ne v2, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_2
    add-int/2addr v3, v4

    const/4 v4, 0x2

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    iput-object v3, v0, LX2/g;->f:[[Ljava/lang/Object;

    iget-object v4, p0, LX2/g;->f:[[Ljava/lang/Object;

    array-length v6, v4

    invoke-static {v4, v1, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne v2, v5, :cond_3

    iget-object v1, v0, LX2/g;->f:[[Ljava/lang/Object;

    iget-object p0, p0, LX2/g;->f:[[Ljava/lang/Object;

    array-length p0, p0

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, p0

    goto :goto_3

    :cond_3
    iget-object p0, v0, LX2/g;->f:[[Ljava/lang/Object;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    aput-object p1, p0, v2

    :goto_3
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, LO2/j;->b(Ljava/lang/Object;)LO2/i;

    move-result-object v0

    const-string v1, "deadline"

    iget-object v2, p0, LX2/g;->a:LX2/E;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "authority"

    iget-object v2, p0, LX2/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callCredentials"

    iget-object v2, p0, LX2/g;->d:LX2/e;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, LX2/g;->b:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "executor"

    invoke-virtual {v0, v1, v2}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "compressorName"

    iget-object v2, p0, LX2/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, LX2/g;->f:[[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customOptions"

    invoke-virtual {v0, v1, v2}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v2, p0, LX2/g;->h:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "waitForReady"

    invoke-virtual {v0, v2, v1}, LO2/i;->c(Ljava/lang/String;Z)V

    const-string v1, "maxInboundMessageSize"

    iget-object v2, p0, LX2/g;->i:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "maxOutboundMessageSize"

    iget-object v2, p0, LX2/g;->j:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "streamTracerFactories"

    iget-object p0, p0, LX2/g;->g:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, LO2/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LO2/i;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
