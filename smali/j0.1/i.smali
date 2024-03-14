.class public final Lj0/i;
.super Landroidx/core/view/b;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lj0/n;


# direct methods
.method public constructor <init>(Lj0/n;)V
    .locals 0

    iput-object p1, p0, Lj0/i;->d:Lj0/n;

    invoke-direct {p0}, Landroidx/core/view/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/core/view/b;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-string p1, "androidx.viewpager.widget.ViewPager"

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lj0/i;->d:Lj0/n;

    iget-object p1, p0, Lj0/n;->h:Lj0/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lj0/a;->b()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lj0/n;->h:Lj0/a;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lj0/a;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget p1, p0, Lj0/n;->i:I

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    iget p0, p0, Lj0/n;->i:I

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_1
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroidx/core/view/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V

    const-string p1, "androidx.viewpager.widget.ViewPager"

    invoke-virtual {p2, p1}, LM/e;->h(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lj0/i;->d:Lj0/n;

    iget-object p1, p0, Lj0/n;->h:Lj0/a;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lj0/a;->b()I

    move-result p1

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p2, LM/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    invoke-virtual {p0, v0}, Lj0/n;->canScrollHorizontally(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x1000

    invoke-virtual {p2, p1}, LM/e;->a(I)V

    :cond_1
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lj0/n;->canScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const/16 p0, 0x2000

    invoke-virtual {p2, p0}, LM/e;->a(I)V

    :cond_2
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/b;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_0

    return p3

    :cond_0
    const/4 p1, 0x0

    const/16 v0, 0x1000

    iget-object p0, p0, Lj0/i;->d:Lj0/n;

    if-eq p2, v0, :cond_3

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_1

    return p1

    :cond_1
    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Lj0/n;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lj0/n;->i:I

    sub-int/2addr p2, p3

    iput-boolean p1, p0, Lj0/n;->s:Z

    iget-boolean v0, p0, Lj0/n;->K:Z

    xor-int/2addr v0, p3

    invoke-virtual {p0, p2, p1, v0, p1}, Lj0/n;->v(IIZZ)V

    return p3

    :cond_2
    return p1

    :cond_3
    invoke-virtual {p0, p3}, Lj0/n;->canScrollHorizontally(I)Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Lj0/n;->i:I

    add-int/2addr p2, p3

    iput-boolean p1, p0, Lj0/n;->s:Z

    iget-boolean v0, p0, Lj0/n;->K:Z

    xor-int/2addr v0, p3

    invoke-virtual {p0, p2, p1, v0, p1}, Lj0/n;->v(IIZZ)V

    return p3

    :cond_4
    return p1
.end method
