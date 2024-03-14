.class public final Lk/H;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/ImageView;

.field public b:Lk/P0;

.field public c:I


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lk/H;->c:I

    iput-object p1, p0, Lk/H;->a:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lk/H;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lk/o0;->a:Landroid/graphics/Rect;

    :cond_0
    if-eqz v1, :cond_1

    iget-object p0, p0, Lk/H;->b:Lk/P0;

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v0

    invoke-static {v1, p0, v0}, Lk/A;->e(Landroid/graphics/drawable/Drawable;Lk/P0;[I)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .locals 8

    iget-object p0, p0, Lk/H;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Ld/a;->f:[I

    invoke-static {v0, p1, v2, p2}, Lk/R0;->m(Landroid/content/Context;Landroid/util/AttributeSet;[II)Lk/R0;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, v7, Lk/R0;->b:Landroid/content/res/TypedArray;

    const/4 v6, 0x0

    sget-object v0, Landroidx/core/view/J;->a:Ljava/util/WeakHashMap;

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Landroidx/core/view/H;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, -0x1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v7, v0, p2}, Lk/R0;->i(II)I

    move-result v0

    if-eq v0, p2, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lf/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-eqz p1, :cond_1

    sget-object p1, Lk/o0;->a:Landroid/graphics/Rect;

    :cond_1
    const/4 p1, 0x2

    invoke-virtual {v7, p1}, Lk/R0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v7, p1}, Lk/R0;->b(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    const/4 p1, 0x3

    invoke-virtual {v7, p1}, Lk/R0;->l(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v7, p1, p2}, Lk/R0;->h(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lk/o0;->b(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-virtual {v7}, Lk/R0;->n()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v7}, Lk/R0;->n()V

    throw p0
.end method
