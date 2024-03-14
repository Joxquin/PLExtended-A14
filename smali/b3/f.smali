.class public final Lb3/f;
.super LX2/a0;
.source "SourceFile"


# static fields
.field public static final g:LX2/b;

.field public static final h:LX2/L0;


# instance fields
.field public final b:LX2/V;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/Random;

.field public e:Lio/grpc/ConnectivityState;

.field public f:Lb3/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, LX2/b;

    const-string v1, "state-info"

    invoke-direct {v0, v1}, LX2/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lb3/f;->g:LX2/b;

    sget-object v0, LX2/L0;->e:LX2/L0;

    const-string v1, "no subchannels ready"

    invoke-virtual {v0, v1}, LX2/L0;->f(Ljava/lang/String;)LX2/L0;

    move-result-object v0

    sput-object v0, Lb3/f;->h:LX2/L0;

    return-void
.end method

.method public constructor <init>(LX2/V;)V
    .locals 2

    invoke-direct {p0}, LX2/a0;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lb3/f;->c:Ljava/util/Map;

    new-instance v0, Lb3/b;

    sget-object v1, Lb3/f;->h:LX2/L0;

    invoke-direct {v0, v1}, Lb3/b;-><init>(LX2/L0;)V

    iput-object v0, p0, Lb3/f;->f:Lb3/e;

    const-string v0, "helper"

    invoke-static {p1, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lb3/f;->b:LX2/V;

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lb3/f;->d:Ljava/util/Random;

    return-void
.end method

.method public static d(LX2/Y;)Lb3/d;
    .locals 1

    invoke-virtual {p0}, LX2/Y;->b()LX2/c;

    move-result-object p0

    sget-object v0, Lb3/f;->g:LX2/b;

    invoke-virtual {p0, v0}, LX2/c;->a(LX2/b;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "STATE_INFO"

    invoke-static {p0, v0}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast p0, Lb3/d;

    return-object p0
.end method


# virtual methods
.method public final a(LX2/L0;)V
    .locals 2

    iget-object v0, p0, Lb3/f;->e:Lio/grpc/ConnectivityState;

    sget-object v1, Lio/grpc/ConnectivityState;->e:Lio/grpc/ConnectivityState;

    if-eq v0, v1, :cond_0

    sget-object v0, Lio/grpc/ConnectivityState;->f:Lio/grpc/ConnectivityState;

    new-instance v1, Lb3/b;

    invoke-direct {v1, p1}, Lb3/b;-><init>(LX2/L0;)V

    invoke-virtual {p0, v0, v1}, Lb3/f;->f(Lio/grpc/ConnectivityState;Lb3/e;)V

    :cond_0
    return-void
.end method

.method public final b(LX2/X;)V
    .locals 10

    iget-object v0, p0, Lb3/f;->c:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    iget-object p1, p1, LX2/X;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    mul-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX2/I;

    new-instance v5, LX2/I;

    iget-object v6, v3, LX2/I;->a:Ljava/util/List;

    sget-object v7, LX2/c;->b:LX2/c;

    invoke-direct {v5, v6, v7}, LX2/I;-><init>(Ljava/util/List;LX2/c;)V

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v3, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX2/I;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX2/I;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LX2/Y;

    if-eqz v5, :cond_1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v5, v1}, LX2/Y;->g(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    sget-object v5, LX2/c;->b:LX2/c;

    sget-object v6, Lb3/f;->g:LX2/b;

    new-instance v7, Lb3/d;

    sget-object v8, Lio/grpc/ConnectivityState;->g:Lio/grpc/ConnectivityState;

    invoke-static {v8}, LX2/z;->a(Lio/grpc/ConnectivityState;)LX2/z;

    move-result-object v8

    invoke-direct {v7, v8}, Lb3/d;-><init>(LX2/z;)V

    new-instance v8, Ljava/util/IdentityHashMap;

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/IdentityHashMap;-><init>(I)V

    invoke-virtual {v8, v6, v7}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, LX2/c;->b:LX2/c;

    const/4 v6, 0x0

    filled-new-array {v6, v4}, [I

    move-result-object v6

    const-class v7, Ljava/lang/Object;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget-object v5, v5, LX2/c;->a:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    new-instance v5, LX2/c;

    invoke-direct {v5, v8}, LX2/c;-><init>(Ljava/util/Map;)V

    new-instance v7, LX2/U;

    invoke-direct {v7, v1, v5, v6}, LX2/U;-><init>(Ljava/util/List;LX2/c;[[Ljava/lang/Object;)V

    iget-object v1, p0, Lb3/f;->b:LX2/V;

    invoke-virtual {v1, v7}, LX2/V;->a(LX2/U;)LX2/Y;

    move-result-object v1

    const-string v5, "subchannel"

    invoke-static {v1, v5}, LO2/m;->h(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Lb3/a;

    invoke-direct {v5, p0, v1}, Lb3/a;-><init>(Lb3/f;LX2/Y;)V

    invoke-virtual {v1, v5}, LX2/Y;->f(LX2/Z;)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, LX2/Y;->d()V

    goto/16 :goto_1

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX2/I;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Lb3/f;->e()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LX2/Y;

    invoke-virtual {p1}, LX2/Y;->e()V

    invoke-static {p1}, Lb3/f;->d(LX2/Y;)Lb3/d;

    move-result-object p1

    sget-object v0, Lio/grpc/ConnectivityState;->h:Lio/grpc/ConnectivityState;

    invoke-static {v0}, LX2/z;->a(Lio/grpc/ConnectivityState;)LX2/z;

    move-result-object v0

    iput-object v0, p1, Lb3/d;->a:Ljava/lang/Object;

    goto :goto_4

    :cond_6
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object p0, p0, Lb3/f;->c:Ljava/util/Map;

    move-object v0, p0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LX2/Y;

    invoke-virtual {v1}, LX2/Y;->e()V

    invoke-static {v1}, Lb3/f;->d(LX2/Y;)Lb3/d;

    move-result-object v1

    sget-object v2, Lio/grpc/ConnectivityState;->h:Lio/grpc/ConnectivityState;

    invoke-static {v2}, LX2/z;->a(Lio/grpc/ConnectivityState;)LX2/z;

    move-result-object v2

    iput-object v2, v1, Lb3/d;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final e()V
    .locals 8

    iget-object v0, p0, Lb3/f;->c:Ljava/util/Map;

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v4, Lio/grpc/ConnectivityState;->e:Lio/grpc/ConnectivityState;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX2/Y;

    invoke-static {v3}, Lb3/f;->d(LX2/Y;)Lb3/d;

    move-result-object v7

    iget-object v7, v7, Lb3/d;->a:Ljava/lang/Object;

    check-cast v7, LX2/z;

    iget-object v7, v7, LX2/z;->a:Lio/grpc/ConnectivityState;

    if-ne v7, v4, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    if-eqz v5, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v1, Lb3/f;->h:LX2/L0;

    move-object v2, v1

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v4, Lio/grpc/ConnectivityState;->d:Lio/grpc/ConnectivityState;

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, LX2/Y;

    invoke-static {v3}, Lb3/f;->d(LX2/Y;)Lb3/d;

    move-result-object v3

    iget-object v3, v3, Lb3/d;->a:Ljava/lang/Object;

    check-cast v3, LX2/z;

    iget-object v7, v3, LX2/z;->a:Lio/grpc/ConnectivityState;

    if-eq v7, v4, :cond_4

    sget-object v4, Lio/grpc/ConnectivityState;->g:Lio/grpc/ConnectivityState;

    if-ne v7, v4, :cond_5

    :cond_4
    move v6, v5

    :cond_5
    if-eq v2, v1, :cond_6

    invoke-virtual {v2}, LX2/L0;->d()Z

    move-result v4

    if-nez v4, :cond_3

    :cond_6
    iget-object v2, v3, LX2/z;->b:LX2/L0;

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_8

    goto :goto_3

    :cond_8
    sget-object v4, Lio/grpc/ConnectivityState;->f:Lio/grpc/ConnectivityState;

    :goto_3
    new-instance v0, Lb3/b;

    invoke-direct {v0, v2}, Lb3/b;-><init>(LX2/L0;)V

    invoke-virtual {p0, v4, v0}, Lb3/f;->f(Lio/grpc/ConnectivityState;Lb3/e;)V

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lb3/f;->d:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    new-instance v1, Lb3/c;

    invoke-direct {v1, v0, v2}, Lb3/c;-><init>(ILjava/util/List;)V

    invoke-virtual {p0, v4, v1}, Lb3/f;->f(Lio/grpc/ConnectivityState;Lb3/e;)V

    :goto_4
    return-void
.end method

.method public final f(Lio/grpc/ConnectivityState;Lb3/e;)V
    .locals 1

    iget-object v0, p0, Lb3/f;->e:Lio/grpc/ConnectivityState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lb3/f;->f:Lb3/e;

    invoke-virtual {p2, v0}, Lb3/e;->h(Lb3/e;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lb3/f;->b:LX2/V;

    invoke-virtual {v0, p1, p2}, LX2/V;->g(Lio/grpc/ConnectivityState;LX2/V;)V

    iput-object p1, p0, Lb3/f;->e:Lio/grpc/ConnectivityState;

    iput-object p2, p0, Lb3/f;->f:Lb3/e;

    :cond_1
    return-void
.end method
