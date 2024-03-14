.class public final LX2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LX2/c;

.field public b:Ljava/util/Map;


# direct methods
.method public constructor <init>(LX2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX2/a;->a:LX2/c;

    return-void
.end method


# virtual methods
.method public final a()LX2/c;
    .locals 4

    iget-object v0, p0, LX2/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, LX2/a;->a:LX2/c;

    iget-object v0, v0, LX2/c;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, LX2/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, LX2/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, LX2/c;

    iget-object v1, p0, LX2/a;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, LX2/c;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, LX2/a;->a:LX2/c;

    const/4 v0, 0x0

    iput-object v0, p0, LX2/a;->b:Ljava/util/Map;

    :cond_2
    iget-object p0, p0, LX2/a;->a:LX2/c;

    return-object p0
.end method

.method public final b(LX2/b;)V
    .locals 2

    iget-object v0, p0, LX2/a;->a:LX2/c;

    iget-object v0, v0, LX2/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    iget-object v1, p0, LX2/a;->a:LX2/c;

    iget-object v1, v1, LX2/c;->a:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, LX2/c;

    invoke-direct {v1, v0}, LX2/c;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, LX2/a;->a:LX2/c;

    :cond_0
    iget-object p0, p0, LX2/a;->b:Ljava/util/Map;

    if-eqz p0, :cond_1

    check-cast p0, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final c(LX2/b;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, LX2/a;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/IdentityHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v0, p0, LX2/a;->b:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, LX2/a;->b:Ljava/util/Map;

    check-cast p0, Ljava/util/IdentityHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
