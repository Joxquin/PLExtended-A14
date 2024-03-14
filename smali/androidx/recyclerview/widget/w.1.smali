.class public final Landroidx/recyclerview/widget/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Landroidx/recyclerview/widget/A;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/A;)V
    .locals 0

    iput-object p1, p0, Landroidx/recyclerview/widget/w;->d:Landroidx/recyclerview/widget/A;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, Landroidx/recyclerview/widget/w;->d:Landroidx/recyclerview/widget/A;

    iget v0, p0, Landroidx/recyclerview/widget/A;->D:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Landroidx/recyclerview/widget/A;->C:Landroid/animation/ValueAnimator;

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Landroidx/recyclerview/widget/A;->D:I

    new-array p0, v1, [F

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    aput v0, p0, v1

    const/4 v0, 0x0

    aput v0, p0, v2

    invoke-virtual {v3, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    const/16 p0, 0x1f4

    int-to-long v0, p0

    invoke-virtual {v3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method
