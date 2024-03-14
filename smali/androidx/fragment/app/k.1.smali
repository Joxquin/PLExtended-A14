.class public final synthetic Landroidx/fragment/app/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LI/c;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroidx/fragment/app/q;

.field public final synthetic c:Landroidx/fragment/app/l;

.field public final synthetic d:Landroidx/fragment/app/S0;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroidx/fragment/app/l;Landroidx/fragment/app/q;Landroidx/fragment/app/S0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/k;->a:Landroid/view/View;

    iput-object p3, p0, Landroidx/fragment/app/k;->b:Landroidx/fragment/app/q;

    iput-object p2, p0, Landroidx/fragment/app/k;->c:Landroidx/fragment/app/l;

    iput-object p4, p0, Landroidx/fragment/app/k;->d:Landroidx/fragment/app/S0;

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 4

    const-string v0, "this$0"

    iget-object v1, p0, Landroidx/fragment/app/k;->b:Landroidx/fragment/app/q;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$animationInfo"

    iget-object v2, p0, Landroidx/fragment/app/k;->c:Landroidx/fragment/app/l;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$operation"

    iget-object v3, p0, Landroidx/fragment/app/k;->d:Landroidx/fragment/app/S0;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/k;->a:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, v1, Landroidx/fragment/app/U0;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    invoke-virtual {v2}, Landroidx/fragment/app/m;->a()V

    const/4 p0, 0x2

    invoke-static {p0}, Landroidx/fragment/app/p0;->H(I)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Animation from operation "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has been cancelled."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FragmentManager"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
