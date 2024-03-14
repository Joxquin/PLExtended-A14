.class public final Lf0/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroidx/slice/widget/SliceView;


# direct methods
.method public synthetic constructor <init>(Landroidx/slice/widget/SliceView;I)V
    .locals 0

    iput p2, p0, Lf0/K;->d:I

    iput-object p1, p0, Lf0/K;->e:Landroidx/slice/widget/SliceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lf0/K;->d:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lf0/K;->e:Landroidx/slice/widget/SliceView;

    iget-boolean v2, v0, Landroidx/slice/widget/SliceView;->D:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/slice/widget/SliceView;->f:Landroid/view/View$OnLongClickListener;

    if-eqz v2, :cond_0

    iput-boolean v1, v0, Landroidx/slice/widget/SliceView;->E:Z

    invoke-interface {v2, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    iget-object p0, p0, Lf0/K;->e:Landroidx/slice/widget/SliceView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->performHapticFeedback(I)Z

    :cond_0
    return-void

    :goto_0
    iget-object v0, p0, Lf0/K;->e:Landroidx/slice/widget/SliceView;

    iget-object v0, v0, Landroidx/slice/widget/SliceView;->h:Lb0/f;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb0/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lf0/K;->e:Landroidx/slice/widget/SliceView;

    iget-object v0, v0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {v0, v1}, Lf0/F;->j(Z)V

    iget-object v0, p0, Lf0/K;->e:Landroidx/slice/widget/SliceView;

    iget-object v1, v0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    iget-object v0, v0, Landroidx/slice/widget/SliceView;->d:Lf0/j;

    invoke-virtual {v1, v0}, Lf0/F;->m(Lf0/j;)V

    :cond_1
    iget-object v0, p0, Lf0/K;->e:Landroidx/slice/widget/SliceView;

    iget-object v0, v0, Landroidx/slice/widget/SliceView;->g:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
