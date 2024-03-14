.class public final Landroidx/core/view/L;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroid/view/View;)Lkotlin/sequences/k;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroidx/core/view/ViewKt$allViews$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/core/view/ViewKt$allViews$1;-><init>(Landroid/view/View;Lkotlin/coroutines/c;)V

    new-instance p0, Lkotlin/sequences/k;

    invoke-direct {p0, v0}, Lkotlin/sequences/k;-><init>(Lm3/p;)V

    return-object p0
.end method
