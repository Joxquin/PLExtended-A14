.class public LM/g;
.super LM/f;
.source "SourceFile"


# virtual methods
.method public final findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 0

    iget-object p0, p0, LM/f;->a:LM/i;

    invoke-virtual {p0, p1}, LM/i;->b(I)LM/e;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, LM/e;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object p0
.end method
