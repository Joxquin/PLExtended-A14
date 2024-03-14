.class public final Landroidx/slice/SliceItemHolderParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sBuilder:Lb0/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lb0/e;

    invoke-direct {v0}, Lb0/e;-><init>()V

    sput-object v0, Landroidx/slice/SliceItemHolderParcelizer;->sBuilder:Lb0/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Li0/c;)Landroidx/slice/SliceItemHolder;
    .locals 4

    sget-object v0, Landroidx/slice/SliceItemHolderParcelizer;->sBuilder:Lb0/e;

    iget-object v1, v0, Lb0/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/SliceItemHolder;

    goto :goto_0

    :cond_0
    new-instance v1, Landroidx/slice/SliceItemHolder;

    invoke-direct {v1, v0}, Landroidx/slice/SliceItemHolder;-><init>(Lb0/e;)V

    move-object v0, v1

    :goto_0
    iget-object v1, v0, Landroidx/slice/SliceItemHolder;->a:Li0/e;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Li0/c;->j(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Li0/c;->r()Li0/e;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Landroidx/slice/SliceItemHolder;->a:Li0/e;

    iget-object v1, v0, Landroidx/slice/SliceItemHolder;->b:Landroid/os/Parcelable;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Li0/c;->j(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Li0/c;->n()Landroid/os/Parcelable;

    move-result-object v1

    :goto_2
    iput-object v1, v0, Landroidx/slice/SliceItemHolder;->b:Landroid/os/Parcelable;

    iget-object v1, v0, Landroidx/slice/SliceItemHolder;->c:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Li0/c;->p(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/SliceItemHolder;->c:Ljava/lang/String;

    iget v1, v0, Landroidx/slice/SliceItemHolder;->d:I

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Li0/c;->l(II)I

    move-result v1

    iput v1, v0, Landroidx/slice/SliceItemHolder;->d:I

    iget-wide v1, v0, Landroidx/slice/SliceItemHolder;->e:J

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Li0/c;->j(I)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Li0/c;->m()J

    move-result-wide v1

    :goto_3
    iput-wide v1, v0, Landroidx/slice/SliceItemHolder;->e:J

    iget-object v1, v0, Landroidx/slice/SliceItemHolder;->f:Landroid/os/Bundle;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Li0/c;->j(I)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Li0/c;->g()Landroid/os/Bundle;

    move-result-object v1

    :goto_4
    iput-object v1, v0, Landroidx/slice/SliceItemHolder;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public static write(Landroidx/slice/SliceItemHolder;Li0/c;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->a:Li0/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Li0/c;->s(I)V

    invoke-virtual {p1, v0}, Li0/c;->E(Li0/e;)V

    :cond_0
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->b:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Li0/c;->s(I)V

    invoke-virtual {p1, v0}, Li0/c;->A(Landroid/os/Parcelable;)V

    :cond_1
    iget-object v0, p0, Landroidx/slice/SliceItemHolder;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Li0/c;->B(ILjava/lang/String;)V

    :cond_2
    iget v0, p0, Landroidx/slice/SliceItemHolder;->d:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Li0/c;->s(I)V

    invoke-virtual {p1, v0}, Li0/c;->y(I)V

    :cond_3
    iget-wide v0, p0, Landroidx/slice/SliceItemHolder;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Li0/c;->s(I)V

    invoke-virtual {p1, v0, v1}, Li0/c;->z(J)V

    :cond_4
    iget-object p0, p0, Landroidx/slice/SliceItemHolder;->f:Landroid/os/Bundle;

    if-eqz p0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Li0/c;->s(I)V

    invoke-virtual {p1, p0}, Li0/c;->v(Landroid/os/Bundle;)V

    :cond_5
    return-void
.end method
