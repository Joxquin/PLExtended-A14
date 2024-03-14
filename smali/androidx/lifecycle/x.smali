.class public abstract Landroidx/lifecycle/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lm/g;

.field public c:I

.field public d:Z

.field public volatile e:Ljava/lang/Object;

.field public volatile f:Ljava/lang/Object;

.field public g:I

.field public h:Z

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/x;->j:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/x;->a:Ljava/lang/Object;

    new-instance v0, Lm/g;

    invoke-direct {v0}, Lm/g;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/x;->b:Lm/g;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/x;->c:I

    sget-object v0, Landroidx/lifecycle/x;->j:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/x;->f:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/x;->e:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/lifecycle/x;->g:I

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Ll/a;->c:Ll/a;

    if-eqz v0, :cond_0

    sget-object v0, Ll/a;->c:Ll/a;

    goto :goto_0

    :cond_0
    const-class v0, Ll/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ll/a;->c:Ll/a;

    if-nez v1, :cond_1

    new-instance v1, Ll/a;

    invoke-direct {v1}, Ll/a;-><init>()V

    sput-object v1, Ll/a;->c:Ll/a;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Ll/a;->c:Ll/a;

    :goto_0
    iget-object v0, v0, Ll/a;->a:Ll/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot invoke "

    const-string v2, " on a background thread"

    invoke-static {v1, p0, v2}, LE/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/w;)V
    .locals 2

    iget-boolean v0, p1, Landroidx/lifecycle/w;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/w;->e()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/lifecycle/w;->c(Z)V

    return-void

    :cond_1
    iget v0, p1, Landroidx/lifecycle/w;->f:I

    iget v1, p0, Landroidx/lifecycle/x;->g:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    iput v1, p1, Landroidx/lifecycle/w;->f:I

    iget-object p1, p1, Landroidx/lifecycle/w;->d:Landroidx/lifecycle/z;

    iget-object p0, p0, Landroidx/lifecycle/x;->e:Ljava/lang/Object;

    invoke-interface {p1, p0}, Landroidx/lifecycle/z;->i(Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Landroidx/lifecycle/w;)V
    .locals 4

    iget-boolean v0, p0, Landroidx/lifecycle/x;->h:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroidx/lifecycle/x;->i:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/x;->h:Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/lifecycle/x;->i:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroidx/lifecycle/x;->b(Landroidx/lifecycle/w;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/x;->b:Lm/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lm/d;

    invoke-direct {v2, v1}, Lm/d;-><init>(Lm/g;)V

    iget-object v1, v1, Lm/g;->f:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v2}, Lm/d;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lm/d;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/w;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/x;->b(Landroidx/lifecycle/w;)V

    iget-boolean v1, p0, Landroidx/lifecycle/x;->i:Z

    if-eqz v1, :cond_3

    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/x;->i:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Landroidx/lifecycle/x;->h:Z

    return-void
.end method

.method public final d(Landroidx/fragment/app/u;)V
    .locals 3

    const-string v0, "observeForever"

    invoke-static {v0}, Landroidx/lifecycle/x;->a(Ljava/lang/String;)V

    new-instance v0, Landroidx/lifecycle/v;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/v;-><init>(Landroidx/lifecycle/x;Landroidx/fragment/app/u;)V

    iget-object p0, p0, Landroidx/lifecycle/x;->b:Lm/g;

    invoke-virtual {p0, p1}, Lm/g;->h(Ljava/lang/Object;)Lm/c;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object p0, v1, Lm/c;->e:Ljava/lang/Object;

    goto :goto_1

    :cond_0
    new-instance v1, Lm/c;

    invoke-direct {v1, p1, v0}, Lm/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget p1, p0, Lm/g;->g:I

    add-int/2addr p1, v2

    iput p1, p0, Lm/g;->g:I

    iget-object p1, p0, Lm/g;->e:Lm/c;

    if-nez p1, :cond_1

    iput-object v1, p0, Lm/g;->d:Lm/c;

    iput-object v1, p0, Lm/g;->e:Lm/c;

    goto :goto_0

    :cond_1
    iput-object v1, p1, Lm/c;->f:Lm/c;

    iput-object p1, v1, Lm/c;->g:Lm/c;

    iput-object v1, p0, Lm/g;->e:Lm/c;

    :goto_0
    const/4 p0, 0x0

    :goto_1
    check-cast p0, Landroidx/lifecycle/w;

    instance-of p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez p1, :cond_3

    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0, v2}, Landroidx/lifecycle/w;->c(Z)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add the same observer with different lifecycles"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g(Landroidx/lifecycle/z;)V
    .locals 1

    const-string v0, "removeObserver"

    invoke-static {v0}, Landroidx/lifecycle/x;->a(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/lifecycle/x;->b:Lm/g;

    invoke-virtual {p0, p1}, Lm/g;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/w;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/lifecycle/w;->d()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/w;->c(Z)V

    return-void
.end method
