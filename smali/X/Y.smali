.class public final LX/Y;
.super Landroidx/core/view/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:LX/Z;


# direct methods
.method public constructor <init>(LX/Z;)V
    .locals 0

    iput-object p1, p0, LX/Y;->d:LX/Z;

    invoke-direct {p0}, Landroidx/core/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V
    .locals 1

    iget-object p0, p0, LX/Y;->d:LX/Z;

    iget-object v0, p0, LX/Z;->g:Landroidx/recyclerview/widget/F0;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/F0;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V

    iget-object p0, p0, LX/Z;->f:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object p0

    instance-of p2, p0, LX/S;

    if-nez p2, :cond_0

    return-void

    :cond_0
    check-cast p0, LX/S;

    invoke-virtual {p0, p1}, LX/S;->d(I)Landroidx/preference/Preference;

    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, LX/Y;->d:LX/Z;

    iget-object p0, p0, LX/Z;->g:Landroidx/recyclerview/widget/F0;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/recyclerview/widget/F0;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
