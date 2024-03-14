.class public final synthetic Lcom/android/launcher3/folder/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/folder/PreviewBackground;

.field public final synthetic e:F

.field public final synthetic f:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/x;->d:Lcom/android/launcher3/folder/PreviewBackground;

    iput p2, p0, Lcom/android/launcher3/folder/x;->e:F

    iput p3, p0, Lcom/android/launcher3/folder/x;->f:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/x;->d:Lcom/android/launcher3/folder/PreviewBackground;

    iget v1, p0, Lcom/android/launcher3/folder/x;->e:F

    iget p0, p0, Lcom/android/launcher3/folder/x;->f:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    mul-float/2addr v1, p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2, p1, p0, v1}, Lw/f;->a(FFFF)F

    move-result p0

    iput p0, v0, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    return-void
.end method
