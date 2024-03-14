.class public final Landroidx/core/view/d0;
.super Landroidx/core/view/e0;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/WindowInsetsController;

.field public final b:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/Window;->getInsetsController()Landroid/view/WindowInsetsController;

    move-result-object v0

    invoke-direct {p0}, Landroidx/core/view/e0;-><init>()V

    new-instance v1, Lq/m;

    invoke-direct {v1}, Lq/m;-><init>()V

    iput-object v0, p0, Landroidx/core/view/d0;->a:Landroid/view/WindowInsetsController;

    iput-object p1, p0, Landroidx/core/view/d0;->b:Landroid/view/Window;

    return-void
.end method
