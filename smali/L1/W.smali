.class public final LL1/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL1/b;


# instance fields
.field public final synthetic a:LK1/a;

.field public final synthetic b:LL1/Y;

.field public final synthetic c:LL1/a0;


# direct methods
.method public constructor <init>(LL1/a0;LK1/a;LL1/Y;)V
    .locals 0

    iput-object p1, p0, LL1/W;->c:LL1/a0;

    iput-object p2, p0, LL1/W;->a:LK1/a;

    iput-object p3, p0, LL1/W;->b:LL1/Y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "Fetched content back in callback"

    invoke-static {v0}, LM1/b;->f(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, LL1/W;->c:LL1/a0;

    iget-object v1, p0, LL1/W;->a:LK1/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Contents"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, LJ1/e;

    invoke-direct {p1}, LJ1/e;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, LJ1/e;

    invoke-direct {v1, p1}, LJ1/e;-><init>(Landroid/os/Bundle;)V

    move-object p1, v1

    :goto_0
    iget-object p0, p0, LL1/W;->b:LL1/Y;

    invoke-static {v0, p1, p0}, LL1/a0;->a(LL1/a0;LJ1/e;LL1/Y;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    const-string p1, "Failed to handleContentData"

    invoke-static {p1, p0}, LM1/b;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
