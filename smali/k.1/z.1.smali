.class public final Lk/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:[I

.field public final d:[I

.field public final e:[I

.field public final f:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0801f4

    const v1, 0x7f0801a3

    const v2, 0x7f0801f6

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lk/z;->a:[I

    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lk/z;->b:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lk/z;->c:[I

    const v0, 0x7f0801b2

    const v1, 0x7f0801d6

    const v2, 0x7f0801d7

    filled-new-array {v2, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lk/z;->d:[I

    const v0, 0x7f0801ed

    const v1, 0x7f0801f7

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lk/z;->e:[I

    const v0, 0x7f0801a7

    const v1, 0x7f0801ad

    const v2, 0x7f0801a6

    const v3, 0x7f0801ac

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lk/z;->f:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0801bc
        0x7f0801e1
        0x7f0801c3
        0x7f0801be
        0x7f0801bf
        0x7f0801c2
        0x7f0801c1
    .end array-data

    :array_1
    .array-data 4
        0x7f0801f3
        0x7f0801f5
        0x7f0801b4
        0x7f0801ef
        0x7f0801f0
        0x7f0801f1
        0x7f0801f2
    .end array-data
.end method

.method public static a([II)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static b(ILandroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    const v1, 0x7f04012a

    invoke-static {v1, p1}, Lk/M0;->c(ILandroid/content/Context;)I

    move-result v1

    const v2, 0x7f040127

    invoke-static {v2, p1}, Lk/M0;->b(ILandroid/content/Context;)I

    move-result p1

    sget-object v2, Lk/M0;->b:[I

    const/4 v3, 0x0

    aput p1, v0, v3

    sget-object p1, Lk/M0;->d:[I

    const/4 v3, 0x1

    invoke-static {v1, p0}, LE/a;->h(II)I

    move-result v4

    aput v4, v0, v3

    sget-object v3, Lk/M0;->c:[I

    const/4 v4, 0x2

    invoke-static {v1, p0}, LE/a;->h(II)I

    move-result v1

    aput v1, v0, v4

    sget-object v1, Lk/M0;->f:[I

    filled-new-array {v2, p1, v3, v1}, [[I

    move-result-object p1

    const/4 v1, 0x3

    aput p0, v0, v1

    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method public static c(Lk/H0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v0, 0x7f0801e9

    invoke-virtual {p0, v0, p1}, Lk/H0;->e(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f0801ea

    invoke-virtual {p0, v1, p1}, Lk/H0;->e(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    if-ne p1, p2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    if-ne p1, p2, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p1, v2

    :goto_0
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    instance-of v2, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v2, p2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, p2, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_1
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    filled-new-array {v0, p0, p1}, [Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p0, 0x1020000

    invoke-virtual {p2, v1, p0}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const/4 p0, 0x1

    const p1, 0x102000f

    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const/4 p0, 0x2

    const p1, 0x102000d

    invoke-virtual {p2, p0, p1}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    return-object p2
.end method

.method public static e(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    sget-object v0, Lk/o0;->a:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p2, :cond_0

    sget-object p2, Lk/A;->b:Landroid/graphics/PorterDuff$Mode;

    :cond_0
    invoke-static {p1, p2}, Lk/A;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method


# virtual methods
.method public final d(ILandroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 7

    const v0, 0x7f0801b7

    if-ne p1, v0, :cond_0

    const p0, 0x7f060015

    invoke-static {p0, p2}, LB/c;->a(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_0
    const v0, 0x7f0801ec

    if-ne p1, v0, :cond_1

    const p0, 0x7f060018

    invoke-static {p0, p2}, LB/c;->a(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_1
    const v0, 0x7f0801eb

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    const/4 p0, 0x3

    new-array p1, p0, [[I

    new-array p0, p0, [I

    const v0, 0x7f040149

    invoke-static {v0, p2}, Lk/M0;->d(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x2

    const v4, 0x7f040129

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v0, Lk/M0;->b:[I

    aput-object v0, p1, v1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    aput v0, p0, v1

    sget-object v0, Lk/M0;->e:[I

    aput-object v0, p1, v5

    invoke-static {v4, p2}, Lk/M0;->c(ILandroid/content/Context;)I

    move-result p2

    aput p2, p0, v5

    sget-object p2, Lk/M0;->f:[I

    aput-object p2, p1, v3

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p2

    aput p2, p0, v3

    goto :goto_0

    :cond_2
    sget-object v2, Lk/M0;->b:[I

    aput-object v2, p1, v1

    invoke-static {v0, p2}, Lk/M0;->b(ILandroid/content/Context;)I

    move-result v2

    aput v2, p0, v1

    sget-object v1, Lk/M0;->e:[I

    aput-object v1, p1, v5

    invoke-static {v4, p2}, Lk/M0;->c(ILandroid/content/Context;)I

    move-result v1

    aput v1, p0, v5

    sget-object v1, Lk/M0;->f:[I

    aput-object v1, p1, v3

    invoke-static {v0, p2}, Lk/M0;->c(ILandroid/content/Context;)I

    move-result p2

    aput p2, p0, v3

    :goto_0
    new-instance p2, Landroid/content/res/ColorStateList;

    invoke-direct {p2, p1, p0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p2

    :cond_3
    const v0, 0x7f0801ab

    if-ne p1, v0, :cond_4

    const p0, 0x7f040127

    invoke-static {p0, p2}, Lk/M0;->c(ILandroid/content/Context;)I

    move-result p0

    invoke-static {p0, p2}, Lk/z;->b(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_4
    const v0, 0x7f0801a5

    if-ne p1, v0, :cond_5

    invoke-static {v1, p2}, Lk/z;->b(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_5
    const v0, 0x7f0801aa

    if-ne p1, v0, :cond_6

    const p0, 0x7f040125

    invoke-static {p0, p2}, Lk/M0;->c(ILandroid/content/Context;)I

    move-result p0

    invoke-static {p0, p2}, Lk/z;->b(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_6
    const v0, 0x7f0801e7

    if-eq p1, v0, :cond_c

    const v0, 0x7f0801e8

    if-ne p1, v0, :cond_7

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lk/z;->b:[I

    invoke-static {v0, p1}, Lk/z;->a([II)Z

    move-result v0

    if-eqz v0, :cond_8

    const p0, 0x7f04012b

    invoke-static {p0, p2}, Lk/M0;->d(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object v0, p0, Lk/z;->e:[I

    invoke-static {v0, p1}, Lk/z;->a([II)Z

    move-result v0

    if-eqz v0, :cond_9

    const p0, 0x7f060014

    invoke-static {p0, p2}, LB/c;->a(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p0, p0, Lk/z;->f:[I

    invoke-static {p0, p1}, Lk/z;->a([II)Z

    move-result p0

    if-eqz p0, :cond_a

    const p0, 0x7f060013

    invoke-static {p0, p2}, LB/c;->a(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_a
    const p0, 0x7f0801e0

    if-ne p1, p0, :cond_b

    const p0, 0x7f060016

    invoke-static {p0, p2}, LB/c;->a(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0

    :cond_c
    :goto_1
    const p0, 0x7f060017

    invoke-static {p0, p2}, LB/c;->a(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method
