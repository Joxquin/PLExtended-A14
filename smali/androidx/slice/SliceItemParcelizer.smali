.class public final Landroidx/slice/SliceItemParcelizer;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Li0/c;)Landroidx/slice/SliceItem;
    .locals 10

    new-instance v0, Landroidx/slice/SliceItem;

    invoke-direct {v0}, Landroidx/slice/SliceItem;-><init>()V

    iget-object v1, v0, Landroidx/slice/SliceItem;->a:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Li0/c;->e(I[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Landroidx/slice/SliceItem;->a:[Ljava/lang/String;

    iget-object v1, v0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Li0/c;->p(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    iget-object v1, v0, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {p0, v4, v1}, Li0/c;->p(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    iget-object v1, v0, Landroidx/slice/SliceItem;->f:Landroidx/slice/SliceItemHolder;

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Li0/c;->j(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Li0/c;->r()Li0/e;

    move-result-object v1

    :goto_0
    check-cast v1, Landroidx/slice/SliceItemHolder;

    iput-object v1, v0, Landroidx/slice/SliceItem;->f:Landroidx/slice/SliceItemHolder;

    const/4 p0, 0x0

    if-eqz v1, :cond_e

    iget-object v6, v0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    sget-object v7, Landroidx/slice/SliceItemHolder;->i:Lc0/a;

    if-eqz v7, :cond_1

    invoke-virtual {v7, v1}, Lc0/a;->a(Landroidx/slice/SliceItemHolder;)V

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    sparse-switch v7, :sswitch_data_0

    :goto_1
    move v2, v9

    goto/16 :goto_2

    :sswitch_0
    const-string v2, "slice"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x7

    goto :goto_2

    :sswitch_1
    const-string v2, "input"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x6

    goto :goto_2

    :sswitch_2
    const-string v2, "image"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x5

    goto :goto_2

    :sswitch_3
    const-string v2, "text"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    move v2, v5

    goto :goto_2

    :sswitch_4
    const-string v2, "long"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_2

    :sswitch_5
    const-string v2, "int"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_2

    :sswitch_6
    const-string v3, "bundle"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :sswitch_7
    const-string v2, "action"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v2, v8

    :cond_9
    :goto_2
    packed-switch v2, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized format "

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object v1, v1, Landroidx/slice/SliceItemHolder;->b:Landroid/os/Parcelable;

    goto :goto_5

    :pswitch_1
    iget-object v1, v1, Landroidx/slice/SliceItemHolder;->a:Li0/e;

    goto :goto_5

    :pswitch_2
    iget-object v2, v1, Landroidx/slice/SliceItemHolder;->c:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_a
    iget-object v1, v1, Landroidx/slice/SliceItemHolder;->c:Ljava/lang/String;

    invoke-static {v1, v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    goto :goto_5

    :cond_b
    :goto_3
    const-string v1, ""

    goto :goto_5

    :pswitch_3
    iget-wide v1, v1, Landroidx/slice/SliceItemHolder;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_5

    :pswitch_4
    iget v1, v1, Landroidx/slice/SliceItemHolder;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_5

    :pswitch_5
    iget-object v1, v1, Landroidx/slice/SliceItemHolder;->f:Landroid/os/Bundle;

    goto :goto_5

    :pswitch_6
    iget-object v2, v1, Landroidx/slice/SliceItemHolder;->b:Landroid/os/Parcelable;

    if-nez v2, :cond_c

    iget-object v3, v1, Landroidx/slice/SliceItemHolder;->a:Li0/e;

    if-nez v3, :cond_c

    move-object v1, p0

    goto :goto_5

    :cond_c
    new-instance v3, LL/c;

    if-eqz v2, :cond_d

    goto :goto_4

    :cond_d
    move-object v2, p0

    :goto_4
    iget-object v1, v1, Landroidx/slice/SliceItemHolder;->a:Li0/e;

    check-cast v1, Landroidx/slice/Slice;

    invoke-direct {v3, v2, v1}, LL/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v3

    :goto_5
    iput-object v1, v0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/slice/SliceItem;->f:Landroidx/slice/SliceItemHolder;

    iget-object v2, v1, Landroidx/slice/SliceItemHolder;->g:Lb0/e;

    if-eqz v2, :cond_f

    iput-object p0, v1, Landroidx/slice/SliceItemHolder;->b:Landroid/os/Parcelable;

    iput-object p0, v1, Landroidx/slice/SliceItemHolder;->a:Li0/e;

    iput v8, v1, Landroidx/slice/SliceItemHolder;->d:I

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Landroidx/slice/SliceItemHolder;->e:J

    iput-object p0, v1, Landroidx/slice/SliceItemHolder;->c:Ljava/lang/String;

    iget-object v2, v2, Lb0/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    iput-object p0, v0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    :cond_f
    :goto_6
    iput-object p0, v0, Landroidx/slice/SliceItem;->f:Landroidx/slice/SliceItemHolder;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_7
        -0x5220cf7e -> :sswitch_6
        0x197ef -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x5fb57ca -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static write(Landroidx/slice/SliceItem;Li0/c;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/slice/SliceItemHolder;

    iget-object v1, p0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    iget-object v2, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceItemHolder;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/slice/SliceItem;->f:Landroidx/slice/SliceItemHolder;

    sget-object v0, Landroidx/slice/Slice;->e:[Ljava/lang/String;

    iget-object v1, p0, Landroidx/slice/SliceItem;->a:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slice/SliceItem;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Li0/c;->t(I[Ljava/lang/Object;)V

    :cond_0
    const-string v0, "text"

    iget-object v1, p0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Li0/c;->B(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Li0/c;->B(ILjava/lang/String;)V

    :cond_2
    iget-object p0, p0, Landroidx/slice/SliceItem;->f:Landroidx/slice/SliceItemHolder;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Li0/c;->s(I)V

    invoke-virtual {p1, p0}, Li0/c;->E(Li0/e;)V

    return-void
.end method
