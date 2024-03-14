.class public final Landroidx/slice/core/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/a;


# instance fields
.field public final a:Landroidx/slice/SliceItem;

.field public final b:Landroidx/core/graphics/drawable/IconCompat;

.field public final c:I

.field public final d:Ljava/lang/CharSequence;

.field public final e:Ljava/lang/CharSequence;

.field public final f:Landroidx/slice/core/SliceActionImpl$ActionType;

.field public final g:Z

.field public final h:I

.field public final i:Landroidx/slice/SliceItem;


# direct methods
.method public constructor <init>(Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Landroidx/slice/core/a;->c:I

    .line 3
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->d:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/a;->f:Landroidx/slice/core/SliceActionImpl$ActionType;

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroidx/slice/core/a;->h:I

    .line 5
    iput-object p1, p0, Landroidx/slice/core/a;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 6
    iput-object p3, p0, Landroidx/slice/core/a;->d:Ljava/lang/CharSequence;

    .line 7
    iput p2, p0, Landroidx/slice/core/a;->c:I

    return-void
.end method

.method public constructor <init>(Landroidx/slice/SliceItem;)V
    .locals 9

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 9
    iput v0, p0, Landroidx/slice/core/a;->c:I

    .line 10
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->d:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/a;->f:Landroidx/slice/core/SliceActionImpl$ActionType;

    const/4 v1, -0x1

    .line 11
    iput v1, p0, Landroidx/slice/core/a;->h:I

    .line 12
    iput-object p1, p0, Landroidx/slice/core/a;->i:Landroidx/slice/SliceItem;

    const-string v2, "action"

    const/4 v3, 0x0

    .line 13
    invoke-static {p1, v2, v3, v3}, Ld0/e;->e(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 14
    :cond_0
    iput-object v2, p0, Landroidx/slice/core/a;->a:Landroidx/slice/SliceItem;

    .line 15
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->c()Landroid/app/PendingIntent;

    .line 16
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v4

    const-string v5, "image"

    .line 17
    invoke-static {v4, v5, v3, v3}, Ld0/e;->c(Landroidx/slice/Slice;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 18
    iget-object v4, v3, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast v4, Landroidx/core/graphics/drawable/IconCompat;

    .line 19
    iput-object v4, p0, Landroidx/slice/core/a;->b:Landroidx/core/graphics/drawable/IconCompat;

    .line 20
    invoke-static {v3}, Landroidx/slice/core/a;->e(Landroidx/slice/SliceItem;)I

    move-result v3

    iput v3, p0, Landroidx/slice/core/a;->c:I

    .line 21
    :cond_1
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v3

    const-string v4, "text"

    const-string v5, "title"

    invoke-static {v3, v4, v5}, Ld0/e;->b(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 22
    invoke-virtual {v3}, Landroidx/slice/SliceItem;->f()Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Landroidx/slice/core/a;->d:Ljava/lang/CharSequence;

    .line 23
    :cond_2
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object v3

    const-string v5, "content_description"

    invoke-static {v3, v4, v5}, Ld0/e;->h(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 24
    iget-object v3, v3, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/CharSequence;

    .line 25
    iput-object v3, p0, Landroidx/slice/core/a;->e:Ljava/lang/CharSequence;

    .line 26
    :cond_3
    iget-object v3, v2, Landroidx/slice/SliceItem;->c:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 27
    iput-object v0, p0, Landroidx/slice/core/a;->f:Landroidx/slice/core/SliceActionImpl$ActionType;

    goto/16 :goto_2

    .line 28
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x33c144ac    # -4.9999184E7f

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v5, v6, :cond_9

    const v6, 0x2d3f6240

    if-eq v5, v6, :cond_7

    const v6, 0x4a87b63f    # 4447007.5f

    if-eq v5, v6, :cond_5

    goto :goto_0

    :cond_5
    const-string v5, "date_picker"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    move v3, v7

    goto :goto_1

    :cond_7
    const-string v5, "time_picker"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    move v3, v8

    goto :goto_1

    :cond_9
    const-string v5, "toggle"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :goto_0
    move v3, v1

    goto :goto_1

    :cond_a
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_d

    const-string v5, "millis"

    const-string v6, "long"

    if-eq v3, v8, :cond_c

    if-eq v3, v7, :cond_b

    .line 29
    iput-object v0, p0, Landroidx/slice/core/a;->f:Landroidx/slice/core/SliceActionImpl$ActionType;

    goto :goto_2

    .line 30
    :cond_b
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->f:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/a;->f:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 31
    invoke-static {v2, v6, v5}, Ld0/e;->i(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 32
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->e()J

    goto :goto_2

    .line 33
    :cond_c
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->g:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/a;->f:Landroidx/slice/core/SliceActionImpl$ActionType;

    .line 34
    invoke-static {v2, v6, v5}, Ld0/e;->i(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 35
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->e()J

    goto :goto_2

    .line 36
    :cond_d
    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->e:Landroidx/slice/core/SliceActionImpl$ActionType;

    iput-object v0, p0, Landroidx/slice/core/a;->f:Landroidx/slice/core/SliceActionImpl$ActionType;

    const-string v0, "selected"

    .line 37
    invoke-virtual {v2, v0}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/slice/core/a;->g:Z

    :cond_e
    :goto_2
    const-string v0, "activity"

    .line 38
    invoke-virtual {p1, v0}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    .line 39
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object p1

    const-string v0, "int"

    const-string v3, "priority"

    invoke-static {p1, v0, v3}, Ld0/e;->h(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 40
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->d()I

    move-result v1

    :cond_f
    iput v1, p0, Landroidx/slice/core/a;->h:I

    .line 41
    invoke-virtual {v2}, Landroidx/slice/SliceItem;->g()Landroidx/slice/Slice;

    move-result-object p0

    const-string p1, "action_key"

    invoke-static {p0, v4, p1}, Ld0/e;->h(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 42
    iget-object p0, p0, Landroidx/slice/SliceItem;->d:Ljava/lang/Object;

    check-cast p0, Ljava/lang/CharSequence;

    .line 43
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    :cond_10
    return-void
.end method

.method public static e(Landroidx/slice/SliceItem;)I
    .locals 2

    const-string v0, "show_label"

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x6

    return p0

    :cond_0
    const-string v0, "no_tint"

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const-string v0, "raw"

    invoke-virtual {p0, v0}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "large"

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    :goto_0
    return p0

    :cond_3
    invoke-virtual {p0, v1}, Landroidx/slice/SliceItem;->i(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Landroidx/slice/core/a;->h:I

    return p0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->e:Landroidx/slice/core/SliceActionImpl$ActionType;

    iget-object p0, p0, Landroidx/slice/core/a;->f:Landroidx/slice/core/SliceActionImpl$ActionType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroidx/slice/core/a;->f:Landroidx/slice/core/SliceActionImpl$ActionType;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "time_picker"

    return-object p0

    :cond_1
    const-string p0, "date_picker"

    return-object p0

    :cond_2
    const-string p0, "toggle"

    return-object p0
.end method

.method public final d()Z
    .locals 2

    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->e:Landroidx/slice/core/SliceActionImpl$ActionType;

    iget-object v1, p0, Landroidx/slice/core/a;->f:Landroidx/slice/core/SliceActionImpl$ActionType;

    if-ne v1, v0, :cond_0

    iget-object p0, p0, Landroidx/slice/core/a;->b:Landroidx/core/graphics/drawable/IconCompat;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
