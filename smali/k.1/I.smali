.class public Lk/I;
.super Landroid/widget/ImageView;
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
    invoke-direct {p0, p1, v0}, Lk/I;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lk/I;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-static {p1}, Lk/O0;->a(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lk/I;->f:Z

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lk/M0;->a(Landroid/view/View;Landroid/content/Context;)V

    .line 6
    new-instance p1, Lk/t;

    invoke-direct {p1, p0}, Lk/t;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lk/I;->d:Lk/t;

    .line 7
    invoke-virtual {p1, p2, p3}, Lk/t;->d(Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lk/H;

    invoke-direct {p1, p0}, Lk/H;-><init>(Landroid/widget/ImageView;)V

    iput-object p1, p0, Lk/I;->e:Lk/H;

    .line 9
    invoke-virtual {p1, p2, p3}, Lk/H;->b(Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    iget-object v0, p0, Lk/I;->d:Lk/t;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lk/t;->a()V

    :cond_0
    iget-object p0, p0, Lk/I;->e:Lk/H;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk/H;->a()V

    :cond_1
    return-void
.end method

.method public getSupportBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lk/I;->d:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/t;->b()Landroid/content/res/ColorStateList;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 0

    iget-object p0, p0, Lk/I;->d:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/t;->c()Landroid/graphics/PorterDuff$Mode;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSupportImageTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object p0, p0, Lk/I;->e:Lk/H;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lk/H;->b:Lk/P0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lk/P0;->a:Landroid/content/res/ColorStateList;

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public getSupportImageTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object p0, p0, Lk/I;->e:Lk/H;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lk/H;->b:Lk/P0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lk/P0;->b:Landroid/graphics/PorterDuff$Mode;

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    iget-object v0, p0, Lk/I;->e:Lk/H;

    iget-object v0, v0, Lk/H;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/widget/ImageView;->hasOverlappingRendering()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lk/I;->d:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/t;->e()V

    :cond_0
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p0, p0, Lk/I;->d:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk/t;->f(I)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lk/I;->e:Lk/H;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/H;->a()V

    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Lk/I;->e:Lk/H;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lk/I;->f:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    iput v1, v0, Lk/H;->c:I

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lk/I;->e:Lk/H;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lk/H;->a()V

    iget-boolean p1, p0, Lk/I;->f:Z

    if-nez p1, :cond_1

    iget-object p0, p0, Lk/I;->e:Lk/H;

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

.method public setImageLevel(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageLevel(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lk/I;->f:Z

    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    iget-object p0, p0, Lk/I;->e:Lk/H;

    if-eqz p0, :cond_2

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

    :cond_2
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p0, p0, Lk/I;->e:Lk/H;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/H;->a()V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lk/I;->d:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk/t;->h(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iget-object p0, p0, Lk/I;->d:Lk/t;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lk/t;->i(Landroid/graphics/PorterDuff$Mode;)V

    :cond_0
    return-void
.end method

.method public setSupportImageTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object p0, p0, Lk/I;->e:Lk/H;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lk/H;->b:Lk/P0;

    if-nez v0, :cond_0

    new-instance v0, Lk/P0;

    invoke-direct {v0}, Lk/P0;-><init>()V

    iput-object v0, p0, Lk/H;->b:Lk/P0;

    :cond_0
    iget-object v0, p0, Lk/H;->b:Lk/P0;

    iput-object p1, v0, Lk/P0;->a:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lk/P0;->d:Z

    invoke-virtual {p0}, Lk/H;->a()V

    :cond_1
    return-void
.end method

.method public setSupportImageTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    iget-object p0, p0, Lk/I;->e:Lk/H;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lk/H;->b:Lk/P0;

    if-nez v0, :cond_0

    new-instance v0, Lk/P0;

    invoke-direct {v0}, Lk/P0;-><init>()V

    iput-object v0, p0, Lk/H;->b:Lk/P0;

    :cond_0
    iget-object v0, p0, Lk/H;->b:Lk/P0;

    iput-object p1, v0, Lk/P0;->b:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lk/P0;->c:Z

    invoke-virtual {p0}, Lk/H;->a()V

    :cond_1
    return-void
.end method
