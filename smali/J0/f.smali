.class public final synthetic LJ0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/dragndrop/DragView;

.field public final synthetic e:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/DragView;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ0/f;->d:Lcom/android/launcher3/dragndrop/DragView;

    iput p2, p0, LJ0/f;->e:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, LJ0/f;->d:Lcom/android/launcher3/dragndrop/DragView;

    iget p0, p0, LJ0/f;->e:F

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/dragndrop/DragView;->d(Lcom/android/launcher3/dragndrop/DragView;FLandroid/animation/ValueAnimator;)V

    return-void
.end method
