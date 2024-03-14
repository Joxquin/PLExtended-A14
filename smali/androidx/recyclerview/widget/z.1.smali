.class public final Landroidx/recyclerview/widget/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:Landroidx/recyclerview/widget/A;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/A;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/z;->d:Landroidx/recyclerview/widget/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget-object v0, p0, Landroidx/recyclerview/widget/z;->d:Landroidx/recyclerview/widget/A;

    iget-object v0, v0, Landroidx/recyclerview/widget/A;->f:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    iget-object v0, p0, Landroidx/recyclerview/widget/z;->d:Landroidx/recyclerview/widget/A;

    iget-object v0, v0, Landroidx/recyclerview/widget/A;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p0, p0, Landroidx/recyclerview/widget/z;->d:Landroidx/recyclerview/widget/A;

    iget-object p0, p0, Landroidx/recyclerview/widget/A;->v:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method
