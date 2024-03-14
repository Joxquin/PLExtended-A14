.class public final Landroidx/core/view/Z;
.super Landroidx/core/view/Y;
.source "SourceFile"


# static fields
.field public static final l:Landroidx/core/view/c0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/view/WindowInsets;->CONSUMED:Landroid/view/WindowInsets;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/c0;->g(Landroid/view/WindowInsets;Landroid/view/View;)Landroidx/core/view/c0;

    move-result-object v0

    sput-object v0, Landroidx/core/view/Z;->l:Landroidx/core/view/c0;

    return-void
.end method

.method public constructor <init>(Landroidx/core/view/c0;Landroid/view/WindowInsets;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/core/view/Y;-><init>(Landroidx/core/view/c0;Landroid/view/WindowInsets;)V

    return-void
.end method


# virtual methods
.method public final d(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public f(I)LE/b;
    .locals 0

    iget-object p0, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Landroidx/core/view/b0;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    invoke-static {p0}, LE/b;->b(Landroid/graphics/Insets;)LE/b;

    move-result-object p0

    return-object p0
.end method

.method public o(I)Z
    .locals 0

    iget-object p0, p0, Landroidx/core/view/V;->c:Landroid/view/WindowInsets;

    invoke-static {p1}, Landroidx/core/view/b0;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result p0

    return p0
.end method
