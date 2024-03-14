.class public final LQ/b;
.super LM/i;
.source "SourceFile"


# instance fields
.field public final synthetic b:LQ/c;


# direct methods
.method public constructor <init>(LQ/c;)V
    .locals 0

    iput-object p1, p0, LQ/b;->b:LQ/c;

    invoke-direct {p0}, LM/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)LM/e;
    .locals 0

    iget-object p0, p0, LQ/b;->b:LQ/c;

    invoke-virtual {p0, p1}, LQ/c;->obtainAccessibilityNodeInfo(I)LM/e;

    move-result-object p0

    iget-object p0, p0, LM/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object p0

    new-instance p1, LM/e;

    invoke-direct {p1, p0}, LM/e;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-object p1
.end method

.method public final b(I)LM/e;
    .locals 2

    const/4 v0, 0x2

    iget-object v1, p0, LQ/b;->b:LQ/c;

    if-ne p1, v0, :cond_0

    iget p1, v1, LQ/c;->mAccessibilityFocusedVirtualViewId:I

    goto :goto_0

    :cond_0
    iget p1, v1, LQ/c;->mKeyboardFocusedVirtualViewId:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, LQ/b;->a(I)LM/e;

    move-result-object p0

    return-object p0
.end method

.method public final c(IILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, LQ/b;->b:LQ/c;

    invoke-virtual {p0, p1, p2, p3}, LQ/c;->performAction(IILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
