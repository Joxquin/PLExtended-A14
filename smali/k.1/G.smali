.class public Lk/G;
.super Landroid/widget/ImageButton;
.source "SourceFile"


# instance fields
.field public final d:Lk/t;

.field public final e:Lk/H;

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lk/G;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f0402ae

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lk/G;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Lk/O0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lk/G;->f:Z

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lk/M0;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 6
    new-instance p1, Lk/t;

    invoke-direct {p1, p0}, Lk/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lk/G;->d:Lk/t;

    .line 7
    invoke-virtual {p1, p2, p3}, Lk/t;->d(Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lk/H;

    invoke-direct {p1, p0}, Lk/H;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lk/G;->e:Lk/H;

    .line 9
    invoke-virtual {p1, p2, p3}, Lk/H;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageButton;->drawableStateChanged()V

    iget-object v0, p0, Lk/G;->d:Lk/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/t;->a()V

    :cond_0
    iget-object p0, p0, Lk/G;->e:Lk/H;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk/H;->a()V

    :cond_1
    return-void
.end method

.method public final hasOverlappingRendering()Z
    .locals 2

    iget-object v0, p0, Lk/G;->e:Lk/H;

    iget-object v0, v0, Lk/H;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageButton;->hasOverlappingRendering()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/G;->d:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/t;->e()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object p0, p0, Lk/G;->d:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk/t;->f(I)V

    :cond_0
    return-void
.end method

.method public final setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lk/G;->e:Lk/H;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/H;->a()V

    :cond_0
    return-void
.end method

.method public final setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lk/G;->e:Lk/H;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lk/G;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    iput v1, v0, Lk/H;->c:I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lk/G;->e:Lk/H;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lk/H;->a()V

    iget-boolean p1, p0, Lk/G;->f:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lk/G;->e:Lk/H;

    iget-object p1, p0, Lk/H;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget p0, p0, Lk/H;->c:I

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    return-void
.end method

.method public final setImageLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageLevel(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/G;->f:Z

    return-void
.end method

.method public final setImageResource(I)V
    .locals 2

    iget-object p0, p0, Lk/G;->e:Lk/H;

    iget-object v0, p0, Lk/H;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lf/a;->a(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v1, Lk/o0;->a:Landroid/graphics/Rect;

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lk/H;->a()V

    return-void
.end method

.method public final setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V

    iget-object p0, p0, Lk/G;->e:Lk/H;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/H;->a()V

    :cond_0
    return-void
.end method
