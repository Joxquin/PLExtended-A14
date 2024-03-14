.class public final Landroidx/fragment/app/X;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic d:Landroidx/fragment/app/z0;

.field public final synthetic e:Landroidx/fragment/app/Y;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Y;Landroidx/fragment/app/z0;)V
    .locals 0

    iput-object p1, p0, Landroidx/fragment/app/X;->e:Landroidx/fragment/app/Y;

    iput-object p2, p0, Landroidx/fragment/app/X;->d:Landroidx/fragment/app/z0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Landroidx/fragment/app/X;->d:Landroidx/fragment/app/z0;

    iget-object v0, p1, Landroidx/fragment/app/z0;->c:Landroidx/fragment/app/K;

    invoke-virtual {p1}, Landroidx/fragment/app/z0;->k()V

    iget-object p1, v0, Landroidx/fragment/app/K;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Landroidx/fragment/app/X;->e:Landroidx/fragment/app/Y;

    iget-object p0, p0, Landroidx/fragment/app/Y;->d:Landroidx/fragment/app/p0;

    invoke-static {p1, p0}, Landroidx/fragment/app/U0;->j(Landroid/view/ViewGroup;Landroidx/fragment/app/p0;)Landroidx/fragment/app/U0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/U0;->i()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
