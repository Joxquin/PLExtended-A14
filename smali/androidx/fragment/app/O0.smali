.class public final synthetic Landroidx/fragment/app/O0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroidx/fragment/app/U0;

.field public final synthetic f:Landroidx/fragment/app/Q0;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/U0;Landroidx/fragment/app/Q0;I)V
    .locals 0

    iput p3, p0, Landroidx/fragment/app/O0;->d:I

    iput-object p1, p0, Landroidx/fragment/app/O0;->e:Landroidx/fragment/app/U0;

    iput-object p2, p0, Landroidx/fragment/app/O0;->f:Landroidx/fragment/app/Q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Landroidx/fragment/app/O0;->d:I

    const-string v1, "$operation"

    const-string v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/O0;->e:Landroidx/fragment/app/U0;

    iget-object p0, p0, Landroidx/fragment/app/O0;->f:Landroidx/fragment/app/Q0;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/U0;->b:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/S0;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    iget-object p0, p0, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    iget-object p0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    const-string v1, "operation.fragment.mView"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->a(Landroid/view/View;)V

    :cond_0
    return-void

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/O0;->e:Landroidx/fragment/app/U0;

    iget-object p0, p0, Landroidx/fragment/app/O0;->f:Landroidx/fragment/app/Q0;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v0, Landroidx/fragment/app/U0;->b:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v0, Landroidx/fragment/app/U0;->c:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
