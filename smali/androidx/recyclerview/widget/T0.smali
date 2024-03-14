.class public final Landroidx/recyclerview/widget/T0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/recyclerview/widget/S0;

.field public final b:Landroidx/recyclerview/widget/R0;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/T0;->a:Landroidx/recyclerview/widget/S0;

    new-instance p1, Landroidx/recyclerview/widget/R0;

    invoke-direct {p1}, Landroidx/recyclerview/widget/R0;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/T0;->b:Landroidx/recyclerview/widget/R0;

    return-void
.end method


# virtual methods
.method public final a(IIII)Landroid/view/View;
    .locals 9

    iget-object v0, p0, Landroidx/recyclerview/widget/T0;->a:Landroidx/recyclerview/widget/S0;

    check-cast v0, Landroidx/recyclerview/widget/j0;

    iget v1, v0, Landroidx/recyclerview/widget/j0;->a:I

    iget-object v2, v0, Landroidx/recyclerview/widget/j0;->b:Landroidx/recyclerview/widget/l0;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v1

    goto :goto_1

    :goto_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result v1

    :goto_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/j0;->c()I

    move-result v2

    if-le p2, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_2

    :cond_0
    const/4 v3, -0x1

    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-eq p1, p2, :cond_3

    iget v5, v0, Landroidx/recyclerview/widget/j0;->a:I

    iget-object v6, v0, Landroidx/recyclerview/widget/j0;->b:Landroidx/recyclerview/widget/l0;

    packed-switch v5, :pswitch_data_1

    goto :goto_4

    :pswitch_1
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    goto :goto_5

    :goto_4
    invoke-virtual {v6, p1}, Landroidx/recyclerview/widget/l0;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :goto_5
    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/j0;->b(Landroid/view/View;)I

    move-result v6

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/j0;->a(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Landroidx/recyclerview/widget/T0;->b:Landroidx/recyclerview/widget/R0;

    iput v1, v8, Landroidx/recyclerview/widget/R0;->b:I

    iput v2, v8, Landroidx/recyclerview/widget/R0;->c:I

    iput v6, v8, Landroidx/recyclerview/widget/R0;->d:I

    iput v7, v8, Landroidx/recyclerview/widget/R0;->e:I

    if-eqz p3, :cond_1

    or-int/lit8 v6, p3, 0x0

    iput v6, v8, Landroidx/recyclerview/widget/R0;->a:I

    invoke-virtual {v8}, Landroidx/recyclerview/widget/R0;->a()Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v5

    :cond_1
    if-eqz p4, :cond_2

    or-int/lit8 v6, p4, 0x0

    iput v6, v8, Landroidx/recyclerview/widget/R0;->a:I

    invoke-virtual {v8}, Landroidx/recyclerview/widget/R0;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v4, v5

    :cond_2
    add-int/2addr p1, v3

    goto :goto_3

    :cond_3
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/T0;->a:Landroidx/recyclerview/widget/S0;

    check-cast v0, Landroidx/recyclerview/widget/j0;

    iget v1, v0, Landroidx/recyclerview/widget/j0;->a:I

    iget-object v2, v0, Landroidx/recyclerview/widget/j0;->b:Landroidx/recyclerview/widget/l0;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/l0;->getPaddingLeft()I

    move-result v1

    goto :goto_1

    :goto_0
    invoke-virtual {v2}, Landroidx/recyclerview/widget/l0;->getPaddingTop()I

    move-result v1

    :goto_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/j0;->c()I

    move-result v2

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/j0;->b(Landroid/view/View;)I

    move-result v3

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/j0;->a(Landroid/view/View;)I

    move-result p1

    iget-object p0, p0, Landroidx/recyclerview/widget/T0;->b:Landroidx/recyclerview/widget/R0;

    iput v1, p0, Landroidx/recyclerview/widget/R0;->b:I

    iput v2, p0, Landroidx/recyclerview/widget/R0;->c:I

    iput v3, p0, Landroidx/recyclerview/widget/R0;->d:I

    iput p1, p0, Landroidx/recyclerview/widget/R0;->e:I

    const/16 p1, 0x6003

    or-int/lit8 p1, p1, 0x0

    iput p1, p0, Landroidx/recyclerview/widget/R0;->a:I

    invoke-virtual {p0}, Landroidx/recyclerview/widget/R0;->a()Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
