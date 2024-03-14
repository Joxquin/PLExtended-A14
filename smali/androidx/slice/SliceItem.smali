.class public final Landroidx/slice/SliceItem;
.super Landroidx/versionedparcelable/CustomVersionedParcelable;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroidx/slice/SliceItemHolder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 8
    sget-object v0, Landroidx/slice/Slice;->e:[Ljava/lang/String;

    iput-object v0, p0, Landroidx/slice/SliceItem;->a:[Ljava/lang/String;

    const-string v0, "text"

    .line 9
    iput-object v0, p0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 11
    new-instance v0, LL/c;

    invoke-direct {v0, p1, p2}, LL/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "action"

    invoke-direct {p0, v0, p1, p3, p4}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 6
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/slice/SliceItem;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/versionedparcelable/CustomVersionedParcelable;-><init>()V

    .line 2
    iput-object p4, p0, Landroidx/slice/SliceItem;->a:[Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    return-void
.end method

.method public static b(Landroid/text/Spannable;)V
    .locals 9

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Object;

    invoke-interface {p0, v1, v0, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    instance-of v5, v4, Landroid/text/style/AlignmentSpan;

    if-nez v5, :cond_1

    instance-of v5, v4, Landroid/text/style/ForegroundColorSpan;

    if-nez v5, :cond_1

    instance-of v5, v4, Landroid/text/style/RelativeSizeSpan;

    if-nez v5, :cond_1

    instance-of v5, v4, Landroid/text/style/StyleSpan;

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    move v5, v1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-eqz v5, :cond_2

    move-object v5, v4

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    :goto_3
    if-ne v5, v4, :cond_3

    goto :goto_4

    :cond_3
    if-eqz v5, :cond_4

    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p0, v4}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    invoke-interface {p0, v5, v6, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_4
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 7

    iget-object v0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    const-string v1, "Object must be non-null for FORMAT_ACTION"

    invoke-static {v0, v1}, LL/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast p0, LL/c;

    iget-object p0, p0, LL/c;->a:Ljava/lang/Object;

    instance-of v0, p0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/app/PendingIntent;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Lb0/d;

    invoke-interface {p0}, Lb0/d;->a()V

    const/4 p0, 0x1

    return p0
.end method

.method public final c()Landroid/app/PendingIntent;
    .locals 2

    iget-object v0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    const-string v1, "Object must be non-null"

    invoke-static {v0, v1}, LL/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast p0, LL/c;

    iget-object p0, p0, LL/c;->a:Ljava/lang/Object;

    instance-of v0, p0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/app/PendingIntent;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    const-string v1, "Object must be non-null for FORMAT_INT"

    invoke-static {v0, v1}, LL/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final e()J
    .locals 2

    iget-object v0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    const-string v1, "Object must be non-null for FORMAT_LONG"

    invoke-static {v0, v1}, LL/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 8

    iget-object v0, p0, Landroidx/slice/SliceItem;->e:Ljava/lang/CharSequence;

    if-nez v0, :cond_7

    iget-object v0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    invoke-static {v1}, Landroidx/slice/SliceItem;->b(Landroid/text/Spannable;)V

    goto :goto_3

    :cond_0
    instance-of v1, v0, Landroid/text/Spanned;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v1}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v1, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v2, :cond_4

    aget-object v6, v1, v3

    instance-of v7, v6, Landroid/text/style/AlignmentSpan;

    if-nez v7, :cond_2

    instance-of v7, v6, Landroid/text/style/ForegroundColorSpan;

    if-nez v7, :cond_2

    instance-of v7, v6, Landroid/text/style/RelativeSizeSpan;

    if-nez v7, :cond_2

    instance-of v6, v6, Landroid/text/style/StyleSpan;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v5, v4

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move v4, v5

    :goto_2
    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v1}, Landroidx/slice/SliceItem;->b(Landroid/text/Spannable;)V

    move-object v0, v1

    :cond_6
    :goto_3
    iput-object v0, p0, Landroidx/slice/SliceItem;->e:Ljava/lang/CharSequence;

    :cond_7
    iget-object p0, p0, Landroidx/slice/SliceItem;->e:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final g()Landroidx/slice/Slice;
    .locals 2

    iget-object v0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    const-string v1, "Object must be non-null for FORMAT_SLICE"

    invoke-static {v0, v1}, LL/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast p0, LL/c;

    iget-object p0, p0, LL/c;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/slice/Slice;

    return-object p0

    :cond_0
    iget-object p0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/slice/Slice;

    return-object p0
.end method

.method public final varargs h([Ljava/lang/String;)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    iget-object v4, p0, Landroidx/slice/SliceItem;->a:[Ljava/lang/String;

    invoke-static {v4, v3}, Lb0/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final i(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Landroidx/slice/SliceItem;->a:[Ljava/lang/String;

    invoke-static {p0, p1}, Lb0/a;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    invoke-static {p1}, Lt/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/slice/SliceItem;->a:[Ljava/lang/String;

    array-length v3, v2

    if-lez v3, :cond_1

    invoke-static {v0, v2}, Landroidx/slice/Slice;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "  "

    invoke-static {p1, v1}, Ls/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string v7, "slice"

    const-string v8, "image"

    const-string v9, "text"

    const-string v10, "long"

    const-string v11, "int"

    const-string v12, "action"

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_2
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v5

    goto :goto_1

    :sswitch_3
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_5
    move v2, v6

    goto :goto_1

    :sswitch_4
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_0

    :cond_6
    move v2, v4

    goto :goto_1

    :sswitch_5
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v3, "{\n"

    const-string v13, "Slice must be non-null for FORMAT_SLICE"

    if-eqz v2, :cond_1c

    if-eq v2, v4, :cond_15

    if-eq v2, v6, :cond_12

    if-eq v2, v5, :cond_11

    const/4 v5, 0x4

    if-eq v2, v5, :cond_10

    const/4 v5, 0x5

    if-eq v2, v5, :cond_f

    iget-object p0, p0, Landroidx/slice/SliceItem;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    goto :goto_2

    :sswitch_6
    invoke-virtual {p0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v4, 0x6

    goto :goto_3

    :sswitch_7
    const-string p1, "input"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    move v4, v5

    goto :goto_3

    :sswitch_8
    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v4, 0x4

    goto :goto_3

    :sswitch_9
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_2

    :cond_b
    const/4 v4, 0x3

    goto :goto_3

    :sswitch_a
    invoke-virtual {p0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_2

    :cond_c
    move v4, v6

    goto :goto_3

    :sswitch_b
    invoke-virtual {p0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_2

    :sswitch_c
    invoke-virtual {p0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_2

    :cond_d
    const/4 v4, 0x0

    goto :goto_3

    :goto_2
    const/4 v4, -0x1

    :cond_e
    :goto_3
    packed-switch v4, :pswitch_data_0

    const-string p1, "Unrecognized format: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    :pswitch_0
    const-string p0, "Slice"

    goto :goto_4

    :pswitch_1
    const-string p0, "RemoteInput"

    goto :goto_4

    :pswitch_2
    const-string p0, "Image"

    goto :goto_4

    :pswitch_3
    const-string p0, "Text"

    goto :goto_4

    :pswitch_4
    const-string p0, "Long"

    goto :goto_4

    :pswitch_5
    const-string p0, "Int"

    goto :goto_4

    :pswitch_6
    const-string p0, "Action"

    :goto_4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_f
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object p0

    invoke-static {p0, v13}, LL/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroidx/slice/Slice;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_10
    iget-object p0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/core/graphics/drawable/IconCompat;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_11
    const/16 p1, 0x22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_12
    iget-object p1, p0, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v1, "millis"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->e()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p1, v1, v3

    if-nez p1, :cond_13

    const-string p0, "INFINITY"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_13
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->e()J

    move-result-wide v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    const/high16 v7, 0x40000

    invoke-static/range {v1 .. v7}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_14
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->e()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x4c

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_15
    iget-object p1, p0, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v1, "color"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->d()I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p1, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "a=0x%02x r=0x%02x g=0x%02x b=0x%02x"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_16
    iget-object p1, p0, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    const-string v1, "layout_direction"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->d()I

    move-result p0

    if-eqz p0, :cond_1a

    if-eq p0, v4, :cond_19

    if-eq p0, v6, :cond_18

    const/4 p1, 0x3

    if-eq p0, p1, :cond_17

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_17
    const-string p0, "LOCALE"

    goto :goto_5

    :cond_18
    const-string p0, "INHERIT"

    goto :goto_5

    :cond_19
    const-string p0, "RTL"

    goto :goto_5

    :cond_1a
    const-string p0, "LTR"

    :goto_5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1b
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->d()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_1c
    invoke-virtual {p0}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v2

    iget-object v4, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    const-string v5, "Object must be non-null for FORMAT_ACTION"

    invoke-static {v4, v5}, LL/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v13}, LL/b;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast v2, LL/c;

    iget-object v2, v2, LL/c;->a:Ljava/lang/Object;

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/slice/Slice;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0xa

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_6
    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x54d081ca -> :sswitch_5
        0x197ef -> :sswitch_4
        0x32c67c -> :sswitch_3
        0x36452d -> :sswitch_2
        0x5faa95b -> :sswitch_1
        0x6873d92 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x54d081ca -> :sswitch_c
        0x197ef -> :sswitch_b
        0x32c67c -> :sswitch_a
        0x36452d -> :sswitch_9
        0x5faa95b -> :sswitch_8
        0x5fb57ca -> :sswitch_7
        0x6873d92 -> :sswitch_6
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
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
