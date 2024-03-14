.class public final Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private mHeight:I

.field private mOnYChangeCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mHeight:I

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/views/y;

    invoke-direct {v0, p0}, Lcom/android/launcher3/views/y;-><init>(Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public static a(Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mOnYChangeCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final offsetTopAndBottom(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mOnYChangeCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget-object p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mOnYChangeCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 1

    iget p2, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public final setFixedHeight(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mHeight:I

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final setOnYChangeCallback(Lcom/android/launcher3/views/w;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mOnYChangeCallback:Ljava/lang/Runnable;

    return-void
.end method

.method public final setTranslationY(F)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/launcher3/views/StickyHeaderLayout$EmptySpaceView;->mOnYChangeCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
