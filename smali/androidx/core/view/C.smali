.class public final Landroidx/core/view/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic d:Landroidx/core/view/r;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/core/view/r;)V
    .locals 0

    iput-object p2, p0, Landroidx/core/view/C;->d:Landroidx/core/view/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-static {p2, p1}, Landroidx/core/view/c0;->g(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/c0;

    move-result-object p2

    iget-object p0, p0, Landroidx/core/view/C;->d:Landroidx/core/view/r;

    invoke-interface {p0, p1, p2}, Landroidx/core/view/r;->b(Landroid/view/View;Landroidx/core/view/c0;)Landroidx/core/view/c0;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/view/c0;->f()Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method
