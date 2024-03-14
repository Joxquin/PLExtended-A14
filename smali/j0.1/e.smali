.class public final Lj0/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/r;


# instance fields
.field public final d:Landroid/graphics/Rect;

.field public final synthetic e:Lj0/n;


# direct methods
.method public constructor <init>(Lj0/n;)V
    .locals 0

    iput-object p1, p0, Lj0/e;->e:Lj0/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lj0/e;->d:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroidx/core/view/c0;)Landroidx/core/view/c0;
    .locals 5

    invoke-static {p1, p2}, Landroidx/core/view/J;->e(Landroid/view/View;Landroidx/core/view/c0;)Landroidx/core/view/c0;

    move-result-object p1

    iget-object p2, p1, Landroidx/core/view/c0;->a:Landroidx/core/view/a0;

    invoke-virtual {p2}, Landroidx/core/view/a0;->m()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroidx/core/view/c0;->b()I

    move-result p2

    iget-object v0, p0, Lj0/e;->d:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroidx/core/view/c0;->d()I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroidx/core/view/c0;->c()I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroidx/core/view/c0;->a()I

    move-result p2

    iput p2, v0, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lj0/e;->e:Lj0/n;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Landroidx/core/view/J;->b(Landroid/view/View;Landroidx/core/view/c0;)Landroidx/core/view/c0;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/core/view/c0;->b()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroidx/core/view/c0;->d()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroidx/core/view/c0;->c()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroidx/core/view/c0;->a()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Landroidx/core/view/T;

    invoke-direct {p0, p1}, Landroidx/core/view/T;-><init>(Landroidx/core/view/c0;)V

    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget p2, v0, Landroid/graphics/Rect;->top:I

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1, p2, v1, v0}, LE/b;->a(IIII)LE/b;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/view/S;->d(LE/b;)V

    invoke-virtual {p0}, Landroidx/core/view/S;->b()Landroidx/core/view/c0;

    move-result-object p0

    return-object p0
.end method
