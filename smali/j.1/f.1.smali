.class public final Lj/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lj/h;

.field public final synthetic e:Landroid/view/MenuItem;

.field public final synthetic f:Lj/o;

.field public final synthetic g:Lj/g;


# direct methods
.method public constructor <init>(Lj/g;Lj/h;Lj/r;Lj/o;)V
    .locals 0

    iput-object p1, p0, Lj/f;->g:Lj/g;

    iput-object p2, p0, Lj/f;->d:Lj/h;

    iput-object p3, p0, Lj/f;->e:Landroid/view/MenuItem;

    iput-object p4, p0, Lj/f;->f:Lj/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lj/f;->d:Lj/h;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lj/f;->g:Lj/g;

    iget-object v1, v1, Lj/g;->d:Lj/i;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lj/i;->D:Z

    iget-object v0, v0, Lj/h;->b:Lj/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lj/o;->c(Z)V

    iget-object v0, p0, Lj/f;->g:Lj/g;

    iget-object v0, v0, Lj/g;->d:Lj/i;

    iput-boolean v1, v0, Lj/i;->D:Z

    :cond_0
    iget-object v0, p0, Lj/f;->e:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj/f;->e:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lj/f;->f:Lj/o;

    iget-object p0, p0, Lj/f;->e:Landroid/view/MenuItem;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lj/o;->q(Landroid/view/MenuItem;Lj/C;I)Z

    :cond_1
    return-void
.end method
