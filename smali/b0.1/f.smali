.class public final Lb0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/slice/Slice;

.field public final b:J

.field public final c:J

.field public final d:Lf0/j;

.field public final e:Landroidx/slice/core/a;

.field public final f:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/slice/Slice;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb0/f;->a:Landroidx/slice/Slice;

    const-string v0, "long"

    const-string v1, "ttl"

    invoke-static {p2, v0, v1}, Ld0/e;->b(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->e()J

    move-result-wide v1

    iput-wide v1, p0, Lb0/f;->b:J

    :cond_0
    const-string v1, "last_updated"

    invoke-static {p2, v0, v1}, Ld0/e;->b(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lb0/f;->c:J

    :cond_1
    const-string v0, "bundle"

    const-string v1, "host_extras"

    invoke-static {p2, v0, v1}, Ld0/e;->h(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_0
    new-instance v0, Lf0/j;

    invoke-direct {v0, p2}, Lf0/j;-><init>(Landroidx/slice/Slice;)V

    iput-object v0, p0, Lb0/f;->d:Lf0/j;

    iget-object p2, v0, Lf0/j;->g:Lf0/p;

    iget-object v1, v0, Lf0/j;->i:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {p2, v2, v1}, Lf0/j;->d(Lf0/G;ZLjava/util/List;)I

    invoke-virtual {v0, p1}, Lf0/j;->e(Landroid/content/Context;)Ld0/a;

    move-result-object p1

    check-cast p1, Landroidx/slice/core/a;

    iput-object p1, p0, Lb0/f;->e:Landroidx/slice/core/a;

    iget-object p1, v0, Lf0/j;->i:Ljava/util/List;

    iput-object p1, p0, Lb0/f;->f:Ljava/util/List;

    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    iget-object p1, p2, Lf0/G;->a:Landroidx/slice/SliceItem;

    const-string v0, "list_item"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ld0/e;->l(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p2, Lf0/p;->k:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    const-string v2, "action"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Ld0/e;->e(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v1, Landroidx/slice/core/a;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    invoke-direct {v1, v2}, Landroidx/slice/core/a;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    iput-object p2, p0, Lb0/f;->f:Ljava/util/List;

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    const-string v0, "partial"

    iget-object v1, p0, Lb0/f;->a:Landroidx/slice/Slice;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ld0/e;->b(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object p0, p0, Lb0/f;->d:Lf0/j;

    invoke-virtual {p0}, Lf0/j;->f()Z

    move-result p0

    if-nez p0, :cond_1

    return v2

    :cond_1
    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public final b()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lb0/f;->b:J

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    const-wide/16 v2, -0x1

    cmp-long p0, v4, v2

    if-eqz p0, :cond_0

    cmp-long p0, v0, v4

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
