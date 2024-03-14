.class public final Landroidx/core/view/a;
.super Landroid/view/View$AccessibilityDelegate;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/core/view/b;


# direct methods
.method public constructor <init>(Landroidx/core/view/b;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, Landroidx/core/view/a;->a:Landroidx/core/view/b;

    return-void
.end method


# virtual methods
.method public final dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/b;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/b;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public final getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/b;

    invoke-virtual {p0, p1}, Landroidx/core/view/b;->getAccessibilityNodeProvider(Landroid/view/View;)LM/i;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, LM/i;->a:Ljava/lang/Object;

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/b;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/b;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 10

    new-instance v0, LM/e;

    invoke-direct {v0, p2}, LM/e;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget-object v1, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    new-instance v1, Landroidx/core/view/t;

    const v2, 0x7f0a035c

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/core/view/t;-><init>(II)V

    invoke-virtual {v1, p1}, Landroidx/core/view/v;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScreenReaderFocusable(Z)V

    new-instance v1, Landroidx/core/view/t;

    const/4 v4, 0x3

    const v5, 0x7f0a034f

    invoke-direct {v1, v5, v4}, Landroidx/core/view/t;-><init>(II)V

    invoke-virtual {v1, p1}, Landroidx/core/view/v;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {p2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setHeading(Z)V

    new-instance v1, Landroidx/core/view/t;

    const v5, 0x7f0a0350

    const-class v6, Ljava/lang/CharSequence;

    const/16 v7, 0x8

    const/16 v8, 0x1c

    const/4 v9, 0x1

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroidx/core/view/t;-><init>(ILjava/lang/Class;III)V

    invoke-virtual {v1, p1}, Landroidx/core/view/v;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPaneTitle(Ljava/lang/CharSequence;)V

    new-instance v1, Landroidx/core/view/t;

    const v5, 0x7f0a035d

    const-class v6, Ljava/lang/CharSequence;

    const/16 v7, 0x40

    const/16 v8, 0x1e

    const/4 v9, 0x2

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroidx/core/view/t;-><init>(ILjava/lang/Class;III)V

    invoke-virtual {v1, p1}, Landroidx/core/view/v;->b(Landroid/view/View;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    sget v2, LI/b;->a:I

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/b;

    invoke-virtual {p0, p1, v0}, Landroidx/core/view/b;->onInitializeAccessibilityNodeInfo(Landroid/view/View;LM/e;)V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    const p0, 0x7f0a034d

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-nez p0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :cond_2
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_3

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LM/c;

    invoke-virtual {v0, p1}, LM/e;->b(LM/c;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/b;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/b;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/b;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/b;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/b;

    invoke-virtual {p0, p1, p2, p3}, Landroidx/core/view/b;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/b;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/b;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public final sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    iget-object p0, p0, Landroidx/core/view/a;->a:Landroidx/core/view/b;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/b;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
