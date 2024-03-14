.class public final Lk/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lk/S;->d:I

    iput-object p2, p0, Lk/S;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 3

    iget v0, p0, Lk/S;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lk/S;->e:Ljava/lang/Object;

    check-cast v0, Lk/b0;

    iget-object v0, v0, Lk/b0;->i:Lk/a0;

    invoke-interface {v0}, Lk/a0;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lk/S;->e:Ljava/lang/Object;

    check-cast v0, Lk/b0;

    iget-object v1, v0, Lk/b0;->i:Lk/a0;

    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getTextAlignment()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lk/a0;->l(II)V

    :cond_0
    iget-object v0, p0, Lk/S;->e:Ljava/lang/Object;

    check-cast v0, Lk/b0;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void

    :goto_0
    iget-object v0, p0, Lk/S;->e:Ljava/lang/Object;

    check-cast v0, Lk/X;

    iget-object v1, v0, Lk/X;->H:Lk/b0;

    sget-object v2, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v1}, Landroidx/core/view/A;->b(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lk/X;->F:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    iget-object p0, p0, Lk/S;->e:Ljava/lang/Object;

    check-cast p0, Lk/X;

    invoke-virtual {p0}, Lk/C0;->dismiss()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lk/S;->e:Ljava/lang/Object;

    check-cast v0, Lk/X;

    invoke-virtual {v0}, Lk/X;->r()V

    iget-object p0, p0, Lk/S;->e:Ljava/lang/Object;

    check-cast p0, Lk/X;

    invoke-virtual {p0}, Lk/C0;->show()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
