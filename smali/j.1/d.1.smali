.class public final Lj/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic d:Lj/i;


# direct methods
.method public constructor <init>(Lj/i;)V
    .locals 0

    iput-object p1, p0, Lj/d;->d:Lj/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lj/d;->d:Lj/i;

    invoke-virtual {v0}, Lj/i;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lj/d;->d:Lj/i;

    iget-object v0, v0, Lj/i;->l:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lj/d;->d:Lj/i;

    iget-object v0, v0, Lj/i;->l:Ljava/util/List;

    const/4 v1, 0x0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/h;

    iget-object v0, v0, Lj/h;->a:Lk/F0;

    iget-boolean v0, v0, Lk/C0;->B:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lj/d;->d:Lj/i;

    iget-object v0, v0, Lj/i;->s:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lj/d;->d:Lj/i;

    iget-object p0, p0, Lj/i;->l:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj/h;

    iget-object v0, v0, Lj/h;->a:Lk/F0;

    invoke-virtual {v0}, Lk/C0;->show()V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lj/d;->d:Lj/i;

    invoke-virtual {p0}, Lj/i;->dismiss()V

    :cond_2
    return-void
.end method
