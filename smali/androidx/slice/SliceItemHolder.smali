.class public Landroidx/slice/SliceItemHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li0/e;


# static fields
.field public static final h:Ljava/lang/Object;

.field public static i:Lc0/a;


# instance fields
.field public a:Li0/e;

.field public b:Landroid/os/Parcelable;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:J

.field public f:Landroid/os/Bundle;

.field public final g:Lb0/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/slice/SliceItemHolder;->h:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb0/e;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->a:Li0/e;

    .line 3
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->b:Landroid/os/Parcelable;

    .line 4
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Landroidx/slice/SliceItemHolder;->d:I

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Landroidx/slice/SliceItemHolder;->e:J

    .line 7
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->f:Landroid/os/Bundle;

    .line 8
    iput-object p1, p0, Landroidx/slice/SliceItemHolder;->g:Lb0/e;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->a:Li0/e;

    .line 11
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->b:Landroid/os/Parcelable;

    .line 12
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->c:Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    iput v1, p0, Landroidx/slice/SliceItemHolder;->d:I

    const-wide/16 v2, 0x0

    .line 14
    iput-wide v2, p0, Landroidx/slice/SliceItemHolder;->e:J

    .line 15
    iput-object v0, p0, Landroidx/slice/SliceItemHolder;->f:Landroid/os/Bundle;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "slice"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "long"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "int"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "bundle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "action"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 17
    :pswitch_0
    check-cast p2, Landroid/os/Parcelable;

    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->b:Landroid/os/Parcelable;

    goto :goto_2

    .line 18
    :pswitch_1
    check-cast p2, Li0/e;

    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->a:Li0/e;

    goto :goto_2

    .line 19
    :pswitch_2
    instance-of p1, p2, Landroid/text/Spanned;

    if-eqz p1, :cond_8

    check-cast p2, Landroid/text/Spanned;

    .line 20
    invoke-static {p2, v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 21
    :cond_8
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Landroidx/slice/SliceItemHolder;->c:Ljava/lang/String;

    goto :goto_2

    .line 22
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/slice/SliceItemHolder;->e:J

    goto :goto_2

    .line 23
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Landroidx/slice/SliceItemHolder;->d:I

    goto :goto_2

    .line 24
    :pswitch_5
    check-cast p2, Landroid/os/Bundle;

    iput-object p2, p0, Landroidx/slice/SliceItemHolder;->f:Landroid/os/Bundle;

    goto :goto_2

    .line 25
    :pswitch_6
    check-cast p2, LL/c;

    iget-object p1, p2, LL/c;->a:Ljava/lang/Object;

    instance-of v0, p1, Landroid/app/PendingIntent;

    if-eqz v0, :cond_a

    .line 26
    check-cast p1, Landroid/os/Parcelable;

    iput-object p1, p0, Landroidx/slice/SliceItemHolder;->b:Landroid/os/Parcelable;

    .line 27
    iget-object p1, p2, LL/c;->b:Ljava/lang/Object;

    check-cast p1, Li0/e;

    iput-object p1, p0, Landroidx/slice/SliceItemHolder;->a:Li0/e;

    .line 28
    :goto_2
    sget-object p1, Landroidx/slice/SliceItemHolder;->i:Lc0/a;

    if-eqz p1, :cond_9

    .line 29
    invoke-virtual {p1, p0}, Lc0/a;->a(Landroidx/slice/SliceItemHolder;)V

    :cond_9
    return-void

    .line 30
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot write callback to parcel"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

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
