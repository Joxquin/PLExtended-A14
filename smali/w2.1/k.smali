.class public final Lw2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:F

.field public final synthetic k:Landroid/graphics/Matrix;

.field public final synthetic l:Lw2/p;


# direct methods
.method public constructor <init>(Lw2/p;FFFFFFFLandroid/graphics/Matrix;)V
    .locals 0

    iput-object p1, p0, Lw2/k;->l:Lw2/p;

    iput p2, p0, Lw2/k;->d:F

    iput p3, p0, Lw2/k;->e:F

    iput p4, p0, Lw2/k;->f:F

    iput p5, p0, Lw2/k;->g:F

    iput p6, p0, Lw2/k;->h:F

    iput p7, p0, Lw2/k;->i:F

    iput p8, p0, Lw2/k;->j:F

    iput-object p9, p0, Lw2/k;->k:Landroid/graphics/Matrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lw2/k;->l:Lw2/p;

    iget-object v0, v0, Lw2/p;->l:Lw2/g;

    iget v1, p0, Lw2/k;->d:F

    iget v2, p0, Lw2/k;->e:F

    const/4 v3, 0x0

    const v4, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v2, v3, v4, p1}, Lj2/a;->a(FFFFF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v0, p0, Lw2/k;->l:Lw2/p;

    iget-object v0, v0, Lw2/p;->l:Lw2/g;

    iget v1, p0, Lw2/k;->f:F

    iget v2, p0, Lw2/k;->g:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lw2/g;->setScaleX(F)V

    iget-object v0, p0, Lw2/k;->l:Lw2/p;

    iget-object v0, v0, Lw2/p;->l:Lw2/g;

    iget v1, p0, Lw2/k;->h:F

    iget v2, p0, Lw2/k;->g:F

    sub-float/2addr v2, v1

    mul-float/2addr v2, p1

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lw2/g;->setScaleY(F)V

    iget-object v0, p0, Lw2/k;->l:Lw2/p;

    iget v1, p0, Lw2/k;->i:F

    iget v2, p0, Lw2/k;->j:F

    invoke-static {v2, v1, p1, v1}, Lw/f;->a(FFFF)F

    move-result p1

    iput p1, v0, Lw2/p;->g:F

    iget-object p1, p0, Lw2/k;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    iget-object p1, v0, Lw2/p;->l:Lw2/g;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lw2/k;->l:Lw2/p;

    iget-object p1, p1, Lw2/p;->l:Lw2/g;

    iget-object p0, p0, Lw2/k;->k:Landroid/graphics/Matrix;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method
