.class public final Lcom/google/android/apps/nexuslauncher/allapps/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/view/View;Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/allapps/I2;Z)V
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070476

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p2, Lcom/google/android/apps/nexuslauncher/allapps/I2;->e:Z

    const v3, 0x7f070477

    const v4, 0x7f07048f

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-boolean p2, p2, Lcom/google/android/apps/nexuslauncher/allapps/I2;->d:Z

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    if-eqz p3, :cond_2

    const p3, 0x7f040232

    invoke-static {p3, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p1

    goto :goto_2

    :cond_2
    const p3, 0x7f040266

    invoke-static {p3, p1}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result p1

    :goto_2
    new-instance p3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/16 v3, 0x8

    new-array v3, v3, [F

    aput p2, v3, v2

    const/4 v2, 0x1

    aput p2, v3, v2

    const/4 v2, 0x2

    aput p2, v3, v2

    const/4 v2, 0x3

    aput p2, v3, v2

    const/4 p2, 0x4

    aput v1, v3, p2

    const/4 p2, 0x5

    aput v1, v3, p2

    const/4 p2, 0x6

    aput v1, v3, p2

    const/4 p2, 0x7

    aput v1, v3, p2

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    invoke-direct {v3, p3, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method
