.class public final Ln2/m;
.super Landroidx/core/view/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:Ln2/q;


# direct methods
.method public constructor <init>(Ln2/q;)V
    .locals 0

    iput-object p1, p0, Ln2/m;->d:Ln2/q;

    invoke-direct {p0}, Landroidx/core/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroidx/core/view/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V

    iget-object p0, p0, Ln2/m;->d:Ln2/q;

    iget-boolean p0, p0, Ln2/q;->m:Z

    iget-object p1, p2, LM/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz p0, :cond_0

    const/high16 p0, 0x100000

    invoke-virtual {p2, p0}, LM/e;->a(I)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setDismissable(Z)V

    :goto_0
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    const/high16 v0, 0x100000

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Ln2/m;->d:Ln2/q;

    iget-boolean v1, v0, Ln2/q;->m:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ln2/q;->cancel()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/b;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
