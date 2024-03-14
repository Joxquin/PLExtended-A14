.class public final Lj/l;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final d:Lj/o;

.field public e:I

.field public f:Z

.field public final g:Z

.field public final h:Landroid/view/LayoutInflater;

.field public final i:I


# direct methods
.method public constructor <init>(Lj/o;Landroid/view/LayoutInflater;ZI)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lj/l;->e:I

    iput-boolean p3, p0, Lj/l;->g:Z

    iput-object p2, p0, Lj/l;->h:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lj/l;->d:Lj/o;

    iput p4, p0, Lj/l;->i:I

    invoke-virtual {p0}, Lj/l;->b()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 5

    iget-object v0, p0, Lj/l;->d:Lj/o;

    iget-object v1, v0, Lj/o;->w:Lj/r;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lj/o;->i()V

    iget-object v0, v0, Lj/o;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj/r;

    if-ne v4, v1, :cond_0

    iput v3, p0, Lj/l;->e:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lj/l;->e:I

    return-void
.end method

.method public final c(I)Lj/r;
    .locals 1

    iget-boolean v0, p0, Lj/l;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/l;->d:Lj/o;

    invoke-virtual {v0}, Lj/o;->i()V

    iget-object v0, v0, Lj/o;->j:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj/l;->d:Lj/o;

    invoke-virtual {v0}, Lj/o;->l()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget p0, p0, Lj/l;->e:I

    if-ltz p0, :cond_1

    if-lt p1, p0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj/r;

    return-object p0
.end method

.method public final getCount()I
    .locals 1

    iget-boolean v0, p0, Lj/l;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/l;->d:Lj/o;

    invoke-virtual {v0}, Lj/o;->i()V

    iget-object v0, v0, Lj/o;->j:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj/l;->d:Lj/o;

    invoke-virtual {v0}, Lj/o;->l()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget p0, p0, Lj/l;->e:I

    if-gez p0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lj/l;->c(I)Lj/r;

    move-result-object p0

    return-object p0
.end method

.method public final getItemId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lj/l;->h:Landroid/view/LayoutInflater;

    iget v1, p0, Lj/l;->i:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lj/l;->c(I)Lj/r;

    move-result-object p3

    iget p3, p3, Lj/r;->b:I

    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lj/l;->c(I)Lj/r;

    move-result-object v1

    iget v1, v1, Lj/r;->b:I

    goto :goto_0

    :cond_1
    move v1, p3

    :goto_0
    move-object v2, p2

    check-cast v2, Landroidx/appcompat/view/menu/ListMenuItemView;

    iget-object v3, p0, Lj/l;->d:Lj/o;

    invoke-virtual {v3}, Lj/o;->m()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eq p3, v1, :cond_2

    move p3, v4

    goto :goto_1

    :cond_2
    move p3, v0

    :goto_1
    iget-object v1, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->k:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-boolean v3, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->r:Z

    if-nez v3, :cond_3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    move-object p3, p2

    check-cast p3, Lj/D;

    iget-boolean v0, p0, Lj/l;->f:Z

    if-eqz v0, :cond_5

    iput-boolean v4, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->t:Z

    iput-boolean v4, v2, Landroidx/appcompat/view/menu/ListMenuItemView;->p:Z

    :cond_5
    invoke-virtual {p0, p1}, Lj/l;->c(I)Lj/r;

    move-result-object p0

    invoke-interface {p3, p0}, Lj/D;->b(Lj/r;)V

    return-object p2
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lj/l;->b()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
