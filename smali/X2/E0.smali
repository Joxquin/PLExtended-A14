.class public final LX2/E0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Ljava/util/logging/Logger;

.field public static f:LX2/E0;


# instance fields
.field public final a:LX2/C0;

.field public b:Ljava/lang/String;

.field public final c:Ljava/util/LinkedHashSet;

.field public d:Lcom/google/common/collect/ImmutableMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, LX2/E0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, LX2/E0;->e:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LX2/C0;

    invoke-direct {v0, p0}, LX2/C0;-><init>(LX2/E0;)V

    iput-object v0, p0, LX2/E0;->a:LX2/C0;

    const-string v0, "unknown"

    iput-object v0, p0, LX2/E0;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, LX2/E0;->c:Ljava/util/LinkedHashSet;

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->g()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, LX2/E0;->d:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "unknown"

    iget-object v2, p0, LX2/E0;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/high16 v3, -0x80000000

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LX2/B0;

    invoke-virtual {v4}, LX2/x0;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, LX2/B0;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, LX2/B0;->g()I

    move-result v6

    invoke-virtual {v4}, LX2/B0;->g()I

    move-result v7

    if-ge v6, v7, :cond_2

    :cond_1
    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {v4}, LX2/B0;->g()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {v4}, LX2/B0;->g()I

    move-result v3

    invoke-virtual {v4}, LX2/x0;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableMap;->b(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, LX2/E0;->d:Lcom/google/common/collect/ImmutableMap;

    iput-object v1, p0, LX2/E0;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
