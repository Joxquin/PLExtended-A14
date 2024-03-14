.class public final Lk/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final d:Lk/i;

.field public final synthetic e:Lk/n;


# direct methods
.method public constructor <init>(Lk/n;Lk/i;)V
    .locals 0

    iput-object p1, p0, Lk/k;->e:Lk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk/k;->d:Lk/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lk/k;->e:Lk/n;

    iget-object v0, v0, Lk/n;->f:Lj/o;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lj/o;->e:Lj/m;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Lj/m;->a(Lj/o;)V

    :cond_0
    iget-object v0, p0, Lk/k;->e:Lk/n;

    iget-object v0, v0, Lk/n;->k:Lj/E;

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lk/k;->d:Lk/i;

    invoke-virtual {v0}, Lj/A;->b()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lj/A;->f:Landroid/view/View;

    const/4 v3, 0x0

    if-nez v1, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3, v3, v3, v3}, Lj/A;->d(IIZZ)V

    :goto_0
    if-eqz v2, :cond_3

    iget-object v0, p0, Lk/k;->e:Lk/n;

    iget-object v1, p0, Lk/k;->d:Lk/i;

    iput-object v1, v0, Lk/n;->t:Lk/i;

    :cond_3
    iget-object p0, p0, Lk/k;->e:Lk/n;

    const/4 v0, 0x0

    iput-object v0, p0, Lk/n;->v:Lk/k;

    return-void
.end method
