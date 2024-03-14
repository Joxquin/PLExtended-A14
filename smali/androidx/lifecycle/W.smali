.class public final Landroidx/lifecycle/W;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;)Landroidx/lifecycle/q;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Landroidx/lifecycle/ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$1;->d:Landroidx/lifecycle/ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$1;

    invoke-static {p0, v0}, Lkotlin/sequences/n;->a(Ljava/lang/Object;Lm3/l;)Lkotlin/sequences/g;

    move-result-object p0

    sget-object v0, Landroidx/lifecycle/ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$2;->d:Landroidx/lifecycle/ViewTreeLifecycleOwner$findViewTreeLifecycleOwner$2;

    invoke-static {p0, v0}, Lkotlin/sequences/j;->b(Lkotlin/sequences/g;Lm3/l;)Lkotlin/sequences/d;

    move-result-object p0

    new-instance v0, Lkotlin/sequences/c;

    invoke-direct {v0, p0}, Lkotlin/sequences/c;-><init>(Lkotlin/sequences/d;)V

    invoke-virtual {v0}, Lkotlin/sequences/c;->hasNext()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lkotlin/sequences/c;->next()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Landroidx/lifecycle/q;

    return-object p0
.end method

.method public static final b(Landroid/view/View;Landroidx/lifecycle/q;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a03c7

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method
