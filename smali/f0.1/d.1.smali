.class public final Lf0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/slice/SliceItem;

.field public b:Landroidx/slice/SliceItem;

.field public final c:Ljava/util/ArrayList;

.field public d:Landroidx/slice/SliceItem;

.field public e:I

.field public f:I

.field public g:Landroidx/core/graphics/drawable/IconCompat;

.field public h:Landroidx/slice/SliceItem;

.field public i:I

.field public j:Landroidx/slice/SliceItem;

.field public k:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf0/d;->c:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lf0/d;->i:I

    iget-object v1, p1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v2, "shortcut"

    invoke-virtual {p1, v2}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_6

    const-string v2, "slice"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "action"

    if-nez v4, :cond_0

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/SliceItem;

    iget-object v7, v6, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, v6, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_2
    iget-object v7, v6, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v8, "date_picker"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v6, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v8, "time_picker"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice;->b()Ljava/util/List;

    move-result-object v2

    new-instance v4, Landroidx/slice/core/a;

    invoke-direct {v4, v6}, Landroidx/slice/core/a;-><init>(Landroidx/slice/SliceItem;)V

    invoke-virtual {v4}, Landroidx/slice/core/a;->b()Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v6, p0, Lf0/d;->k:Landroidx/slice/SliceItem;

    goto :goto_0

    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/slice/SliceItem;

    iput-object v4, p0, Lf0/d;->a:Landroidx/slice/SliceItem;

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-object p1, p0, Lf0/d;->a:Landroidx/slice/SliceItem;

    :cond_5
    iput v3, p0, Lf0/d;->e:I

    iput v3, p0, Lf0/d;->f:I

    invoke-virtual {p0, v0}, Lf0/d;->a(Ljava/util/List;)V

    iget p1, p0, Lf0/d;->e:I

    if-nez p1, :cond_b

    iget p1, p0, Lf0/d;->f:I

    if-nez p1, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {p0, v2}, Lf0/d;->a(Ljava/util/List;)V

    goto :goto_3

    :cond_6
    iget-object v1, p1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    iget-object v2, p1, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v4, "content_description"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_8

    const-string v2, "ttl"

    const-string v5, "last_updated"

    const-string v6, "keywords"

    filled-new-array {v6, v2, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroidx/slice/SliceItem;->h([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2

    :cond_8
    :goto_1
    move v2, v4

    :goto_2
    if-nez v2, :cond_a

    const-string v2, "text"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "long"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "image"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_9
    move v3, v4

    :cond_a
    if-eqz v3, :cond_b

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    :goto_3
    iget-object p1, p0, Lf0/d;->b:Landroidx/slice/SliceItem;

    if-nez p1, :cond_c

    iget-object p0, p0, Lf0/d;->c:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_c

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    :cond_c
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_9

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slice/SliceItem;

    iget-object v2, v1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    iget-object v3, p0, Lf0/d;->b:Landroidx/slice/SliceItem;

    if-nez v3, :cond_1

    iget-object v3, v1, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v4, "date_picker"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v4, "time_picker"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iput-object v1, p0, Lf0/d;->b:Landroidx/slice/SliceItem;

    goto/16 :goto_1

    :cond_1
    iget-object v3, v1, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v4, "content_description"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object v1, p0, Lf0/d;->d:Landroidx/slice/SliceItem;

    goto :goto_1

    :cond_2
    iget v3, p0, Lf0/d;->e:I

    iget-object v4, p0, Lf0/d;->c:Ljava/util/ArrayList;

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-ge v3, v6, :cond_7

    const-string v3, "text"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "long"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    iget-object v2, p0, Lf0/d;->j:Landroidx/slice/SliceItem;

    if-eqz v2, :cond_4

    const-string v3, "title"

    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, v3}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    iput-object v1, p0, Lf0/d;->j:Landroidx/slice/SliceItem;

    :cond_5
    const-string v2, "overlay"

    invoke-virtual {v1, v2}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lf0/d;->h:Landroidx/slice/SliceItem;

    if-nez v2, :cond_8

    iput-object v1, p0, Lf0/d;->h:Landroidx/slice/SliceItem;

    goto :goto_1

    :cond_6
    iget v2, p0, Lf0/d;->e:I

    add-int/2addr v2, v5

    iput v2, p0, Lf0/d;->e:I

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget v2, p0, Lf0/d;->f:I

    if-ge v2, v5, :cond_8

    iget-object v2, v1, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v3, "image"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v1}, Landroidx/slice/core/a;->e(Landroidx/slice/SliceItem;)I

    move-result v2

    iput v2, p0, Lf0/d;->i:I

    iget v2, p0, Lf0/d;->f:I

    add-int/2addr v2, v5

    iput v2, p0, Lf0/d;->f:I

    iget-object v2, v1, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast v2, Landroidx/core/graphics/drawable/IconCompat;

    iput-object v2, p0, Lf0/d;->g:Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
