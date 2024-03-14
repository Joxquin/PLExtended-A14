.class public final Le/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/r;
.implements Lj/B;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Le/D;


# direct methods
.method public synthetic constructor <init>(Le/D;I)V
    .locals 0

    iput p2, p0, Le/t;->d:I

    iput-object p1, p0, Le/t;->e:Le/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lj/o;Z)V
    .locals 8

    iget v0, p0, Le/t;->d:I

    iget-object p0, p0, Le/t;->e:Le/D;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1}, Le/D;->B(Lj/o;)V

    return-void

    :goto_0
    invoke-virtual {p1}, Lj/o;->k()Lj/o;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_0

    move v3, v2

    goto :goto_1

    :cond_0
    move v3, v1

    :goto_1
    if-eqz v3, :cond_1

    move-object p1, v0

    :cond_1
    iget-object v4, p0, Le/D;->N:[Le/C;

    if-eqz v4, :cond_2

    array-length v5, v4

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    if-ge v1, v5, :cond_4

    aget-object v6, v4, v1

    if-eqz v6, :cond_3

    iget-object v7, v6, Le/C;->h:Lj/o;

    if-ne v7, p1, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_6

    if-eqz v3, :cond_5

    iget p1, v6, Le/C;->a:I

    invoke-virtual {p0, p1, v6, v0}, Le/D;->A(ILe/C;Lj/o;)V

    invoke-virtual {p0, v6, v2}, Le/D;->C(Le/C;Z)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v6, p2}, Le/D;->C(Le/C;Z)V

    :cond_6
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/view/View;Landroidx/core/view/c0;)Landroidx/core/view/c0;
    .locals 4

    invoke-virtual {p2}, Landroidx/core/view/c0;->d()I

    move-result v0

    iget-object p0, p0, Le/t;->e:Le/D;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Le/D;->T(Landroidx/core/view/c0;Landroid/graphics/Rect;)I

    move-result p0

    if-eq v0, p0, :cond_0

    invoke-virtual {p2}, Landroidx/core/view/c0;->b()I

    move-result v0

    invoke-virtual {p2}, Landroidx/core/view/c0;->c()I

    move-result v1

    invoke-virtual {p2}, Landroidx/core/view/c0;->a()I

    move-result v2

    new-instance v3, Landroidx/core/view/T;

    invoke-direct {v3, p2}, Landroidx/core/view/T;-><init>(Landroidx/core/view/c0;)V

    invoke-static {v0, p0, v1, v2}, LE/b;->a(IIII)LE/b;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroidx/core/view/S;->d(LE/b;)V

    invoke-virtual {v3}, Landroidx/core/view/S;->b()Landroidx/core/view/c0;

    move-result-object p2

    :cond_0
    invoke-static {p1, p2}, Landroidx/core/view/J;->e(Landroid/view/View;Landroidx/core/view/c0;)Landroidx/core/view/c0;

    move-result-object p0

    return-object p0
.end method

.method public final c(Lj/o;)Z
    .locals 3

    iget v0, p0, Le/t;->d:I

    const/4 v1, 0x1

    const/16 v2, 0x6c

    iget-object p0, p0, Le/t;->e:Le/D;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Le/D;->K()Landroid/view/Window$Callback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_0
    return v1

    :goto_0
    invoke-virtual {p1}, Lj/o;->k()Lj/o;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Le/D;->H:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le/D;->K()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Le/D;->S:Z

    if-nez p0, :cond_1

    invoke-interface {v0, v2, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
