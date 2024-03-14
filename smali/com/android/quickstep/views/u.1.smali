.class public final synthetic Lcom/android/quickstep/views/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic e:I

.field public final synthetic f:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;I[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/u;->d:Lcom/android/quickstep/views/RecentsView;

    iput p2, p0, Lcom/android/quickstep/views/u;->e:I

    iput-object p3, p0, Lcom/android/quickstep/views/u;->f:[Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/views/u;->d:Lcom/android/quickstep/views/RecentsView;

    iget v1, p0, Lcom/android/quickstep/views/u;->e:I

    iget-object p0, p0, Lcom/android/quickstep/views/u;->f:[Z

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/views/RecentsView;->G(Lcom/android/quickstep/views/RecentsView;I[ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
