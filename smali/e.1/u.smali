.class public final Le/u;
.super Landroidx/core/view/Q;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/u;->a:I

    iput-object p2, p0, Le/u;->b:Ljava/lang/Object;

    invoke-direct {p0}, Landroidx/core/view/Q;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Le/u;->a:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object p0, p0, Le/u;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Le/D;

    iget-object v0, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Le/D;->z:Landroidx/core/view/O;

    invoke-virtual {v0, v2}, Landroidx/core/view/O;->d(Landroidx/core/view/P;)V

    iput-object v2, p0, Le/D;->z:Landroidx/core/view/O;

    return-void

    :pswitch_1
    check-cast p0, Le/s;

    iget-object v0, p0, Le/s;->e:Le/D;

    iget-object v0, v0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v0, p0, Le/s;->e:Le/D;

    iget-object v0, v0, Le/D;->z:Landroidx/core/view/O;

    invoke-virtual {v0, v2}, Landroidx/core/view/O;->d(Landroidx/core/view/P;)V

    iget-object p0, p0, Le/s;->e:Le/D;

    iput-object v2, p0, Le/D;->z:Landroidx/core/view/O;

    return-void

    :goto_0
    check-cast p0, Le/v;

    iget-object v0, p0, Le/v;->b:Le/D;

    iget-object v0, v0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lk/b;->setVisibility(I)V

    iget-object p0, p0, Le/v;->b:Le/D;

    iget-object v0, p0, Le/D;->x:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/B;->c(Landroid/view/View;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->i()V

    iget-object v0, p0, Le/D;->z:Landroidx/core/view/O;

    invoke-virtual {v0, v2}, Landroidx/core/view/O;->d(Landroidx/core/view/P;)V

    iput-object v2, p0, Le/D;->z:Landroidx/core/view/O;

    iget-object p0, p0, Le/D;->C:Landroid/view/ViewGroup;

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/B;->c(Landroid/view/View;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    iget v0, p0, Le/u;->a:I

    const/4 v1, 0x0

    iget-object p0, p0, Le/u;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    check-cast p0, Le/D;

    iget-object v0, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Lk/b;->setVisibility(I)V

    iget-object v0, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object p0, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, Landroidx/core/view/B;->c(Landroid/view/View;)V

    :cond_0
    return-void

    :pswitch_1
    check-cast p0, Le/s;

    iget-object p0, p0, Le/s;->e:Le/D;

    iget-object p0, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v1}, Lk/b;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
