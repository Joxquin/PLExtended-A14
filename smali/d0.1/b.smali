.class public final synthetic Ld0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld0/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:[Ljava/lang/String;

.field public final synthetic d:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Ld0/b;->a:I

    iput-object p1, p0, Ld0/b;->b:Ljava/lang/String;

    iput-object p2, p0, Ld0/b;->c:[Ljava/lang/String;

    iput-object p3, p0, Ld0/b;->d:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/slice/SliceItem;)Z
    .locals 5

    iget v0, p0, Ld0/b;->a:I

    const/4 v1, 0x1

    iget-object v2, p0, Ld0/b;->d:[Ljava/lang/String;

    iget-object v3, p0, Ld0/b;->c:[Ljava/lang/String;

    const/4 v4, 0x0

    iget-object p0, p0, Ld0/b;->b:Ljava/lang/String;

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {p1, p0}, Ld0/e;->a(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, v3}, Ld0/e;->l(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, v2}, Ld0/e;->k(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    return v1

    :pswitch_1
    invoke-static {p1, p0}, Ld0/e;->a(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1, v3}, Ld0/e;->l(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1, v2}, Ld0/e;->k(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    return v1

    :goto_2
    invoke-static {p1, p0}, Ld0/e;->a(Landroidx/slice/SliceItem;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1, v3}, Ld0/e;->l(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1, v2}, Ld0/e;->k(Landroidx/slice/SliceItem;[Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_3

    :cond_2
    move v1, v4

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
