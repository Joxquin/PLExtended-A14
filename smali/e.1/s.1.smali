.class public final Le/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Le/D;


# direct methods
.method public synthetic constructor <init>(Le/D;I)V
    .locals 0

    iput p2, p0, Le/s;->d:I

    iput-object p1, p0, Le/s;->e:Le/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Le/s;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Le/s;->e:Le/D;

    iget v3, v0, Le/D;->b0:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Le/D;->F(I)V

    :cond_0
    iget-object v0, p0, Le/s;->e:Le/D;

    iget v1, v0, Le/D;->b0:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Le/D;->F(I)V

    :cond_1
    iget-object p0, p0, Le/s;->e:Le/D;

    iput-boolean v2, p0, Le/D;->a0:Z

    iput v2, p0, Le/D;->b0:I

    return-void

    :goto_0
    iget-object v0, p0, Le/s;->e:Le/D;

    iget-object v3, v0, Le/D;->x:Landroid/widget/PopupWindow;

    iget-object v0, v0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v4, 0x37

    invoke-virtual {v3, v0, v4, v2, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v0, p0, Le/s;->e:Le/D;

    iget-object v0, v0, Le/D;->z:Landroidx/core/view/O;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/core/view/O;->b()V

    :cond_2
    iget-object v0, p0, Le/s;->e:Le/D;

    iget-boolean v3, v0, Le/D;->B:Z

    if-eqz v3, :cond_3

    iget-object v0, v0, Le/D;->C:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    sget-object v3, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/A;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    iget-object v1, p0, Le/s;->e:Le/D;

    iget-object v1, v1, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v1, p0, Le/s;->e:Le/D;

    iget-object v3, v1, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {v3}, Landroidx/core/view/J;->a(Landroid/view/View;)Landroidx/core/view/O;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroidx/core/view/O;->a(F)V

    iput-object v3, v1, Le/D;->z:Landroidx/core/view/O;

    iget-object v0, p0, Le/s;->e:Le/D;

    iget-object v0, v0, Le/D;->z:Landroidx/core/view/O;

    new-instance v1, Le/u;

    invoke-direct {v1, v2, p0}, Le/u;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/core/view/O;->d(Landroidx/core/view/P;)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Le/s;->e:Le/D;

    iget-object v1, v1, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p0, p0, Le/s;->e:Le/D;

    iget-object p0, p0, Le/D;->w:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p0, v2}, Lk/b;->setVisibility(I)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
