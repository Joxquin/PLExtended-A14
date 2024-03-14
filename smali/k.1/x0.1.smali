.class public final Lk/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lk/C0;


# direct methods
.method public synthetic constructor <init>(Lk/C0;I)V
    .locals 0

    iput p2, p0, Lk/x0;->d:I

    iput-object p1, p0, Lk/x0;->e:Lk/C0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lk/x0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lk/x0;->e:Lk/C0;

    iget-object p0, p0, Lk/C0;->f:Lk/s0;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lk/s0;->k:Z

    invoke-virtual {p0}, Landroid/widget/ListView;->requestLayout()V

    :cond_0
    return-void

    :goto_0
    iget-object v0, p0, Lk/x0;->e:Lk/C0;

    iget-object v0, v0, Lk/C0;->f:Lk/s0;

    if-eqz v0, :cond_1

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    invoke-static {v0}, Landroidx/core/view/A;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lk/x0;->e:Lk/C0;

    iget-object v0, v0, Lk/C0;->f:Lk/s0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lk/x0;->e:Lk/C0;

    iget-object v1, v1, Lk/C0;->f:Lk/s0;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lk/x0;->e:Lk/C0;

    iget-object v0, v0, Lk/C0;->f:Lk/s0;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lk/x0;->e:Lk/C0;

    iget v2, v1, Lk/C0;->p:I

    if-gt v0, v2, :cond_1

    iget-object v0, v1, Lk/C0;->C:Lk/K;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    iget-object p0, p0, Lk/x0;->e:Lk/C0;

    invoke-virtual {p0}, Lk/C0;->show()V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
