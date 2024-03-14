.class public final Lx1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt1/e;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Lw1/d;

.field public final f:Lx1/f;

.field public g:Z

.field public final h:Lx1/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lw1/d;Lx1/f;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rotationChangeProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unfoldTransitionProgressProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx1/e;->d:Landroid/content/Context;

    iput-object p2, p0, Lx1/e;->e:Lw1/d;

    new-instance p1, Lx1/f;

    invoke-direct {p1, p3}, Lx1/f;-><init>(Lt1/e;)V

    iput-object p1, p0, Lx1/e;->f:Lx1/f;

    new-instance p1, Lx1/d;

    invoke-direct {p1, p0}, Lx1/d;-><init>(Lx1/e;)V

    iput-object p1, p0, Lx1/e;->h:Lx1/d;

    return-void
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lt1/d;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/e;->f:Lx1/f;

    invoke-virtual {p0, p1}, Lx1/f;->addCallback(Lt1/d;)V

    return-void
.end method

.method public final destroy()V
    .locals 4

    iget-object v0, p0, Lx1/e;->e:Lw1/d;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "listener"

    iget-object v2, p0, Lx1/e;->h:Lx1/d;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lw1/c;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lw1/c;-><init>(Lw1/d;Lw1/b;I)V

    iget-object v0, v0, Lw1/d;->f:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p0, p0, Lx1/e;->f:Lx1/f;

    invoke-virtual {p0}, Lx1/f;->destroy()V

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lt1/d;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx1/e;->f:Lx1/f;

    invoke-virtual {p0, p1}, Lx1/f;->removeCallback(Lt1/d;)V

    return-void
.end method
