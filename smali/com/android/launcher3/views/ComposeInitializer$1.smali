.class final Lcom/android/launcher3/views/ComposeInitializer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    invoke-static {p1}, Landroidx/lifecycle/W;->a(Landroid/view/View;)Landroidx/lifecycle/q;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    const v0, 0x1020002

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ComposeInitializer.onContentChildAttachedToWindow(View) must be called on the content child. Outside of activities and dialogs, this is usually the top-most View of a window."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;

    invoke-direct {p0, p1}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->onCreate()V

    invoke-static {p1, p0}, Landroidx/lifecycle/W;->b(Landroid/view/View;Landroidx/lifecycle/q;)V

    invoke-static {p1, p0}, La0/h;->a(Landroid/view/View;La0/g;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "View "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " already has a LifecycleOwner"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    invoke-static {p1}, Landroidx/lifecycle/W;->a(Landroid/view/View;)Landroidx/lifecycle/q;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;

    invoke-virtual {p0}, Lcom/android/launcher3/views/ComposeInitializer$ViewLifecycleOwner;->onDestroy()V

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroidx/lifecycle/W;->b(Landroid/view/View;Landroidx/lifecycle/q;)V

    invoke-static {p1, p0}, La0/h;->a(Landroid/view/View;La0/g;)V

    return-void
.end method
