.class public final synthetic Landroidx/fragment/app/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/q;Landroid/view/View;Landroidx/fragment/app/l;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Landroidx/fragment/app/f;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/f;->g:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/f;->e:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/f;->f:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iput p4, p0, Landroidx/fragment/app/f;->d:I

    iput-object p1, p0, Landroidx/fragment/app/f;->e:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/f;->f:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/f;->g:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Landroidx/fragment/app/f;->d:I

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/J0;

    iget-object v1, p0, Landroidx/fragment/app/f;->f:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Landroidx/fragment/app/f;->g:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    const-string v2, "$impl"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$lastInEpicenterRect"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p0}, Landroidx/fragment/app/J0;->g(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Landroidx/fragment/app/f;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Landroidx/fragment/app/f;->f:Ljava/lang/Object;

    check-cast v2, Landroidx/fragment/app/S0;

    iget-object p0, p0, Landroidx/fragment/app/f;->g:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/q;

    const-string v3, "$awaitingContainerChanges"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$operation"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, v2, Landroidx/fragment/app/S0;->c:Landroidx/fragment/app/K;

    iget-object p0, p0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    iget-object v0, v2, Landroidx/fragment/app/S0;->a:Landroidx/fragment/app/SpecialEffectsController$Operation$State;

    const-string v1, "view"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroidx/fragment/app/SpecialEffectsController$Operation$State;->a(Landroid/view/View;)V

    :cond_0
    return-void

    :goto_0
    iget-object v0, p0, Landroidx/fragment/app/f;->g:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/q;

    iget-object v2, p0, Landroidx/fragment/app/f;->e:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    iget-object p0, p0, Landroidx/fragment/app/f;->f:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/l;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$animationInfo"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Landroidx/fragment/app/U0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/m;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
