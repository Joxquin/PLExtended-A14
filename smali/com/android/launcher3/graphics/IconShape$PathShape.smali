.class abstract Lcom/android/launcher3/graphics/IconShape$PathShape;
.super Lcom/android/launcher3/graphics/IconShape;
.source "SourceFile"


# instance fields
.field private final mTmpPath:Landroid/graphics/Path;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/android/launcher3/graphics/IconShape;-><init>()V

    .line 3
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/graphics/IconShape$PathShape;->mTmpPath:Landroid/graphics/Path;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/graphics/IconShape$PathShape;-><init>()V

    return-void
.end method


# virtual methods
.method public final createRevealAnimator(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;FZ)Landroid/animation/Animator;
    .locals 1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/android/launcher3/graphics/IconShape$PathShape;->newUpdateListener(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Path;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object p0

    const/4 p2, 0x2

    new-array p2, p2, [F

    if-eqz p5, :cond_0

    fill-array-data p2, :array_0

    goto :goto_0

    :cond_0
    fill-array-data p2, :array_1

    :goto_0
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-instance p3, Lcom/android/launcher3/graphics/IconShape$PathShape$1;

    invoke-direct {p3, p1}, Lcom/android/launcher3/graphics/IconShape$PathShape$1;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p3, LK0/b;

    invoke-direct {p3, v0, p0, p1}, LK0/b;-><init>(Landroid/graphics/Path;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p2

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final drawShape(Landroid/graphics/Canvas;FFFLandroid/graphics/Paint;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShape$PathShape;->mTmpPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/android/launcher3/graphics/IconShape;->addToPath(FFFLandroid/graphics/Path;)V

    invoke-virtual {p1, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public abstract newUpdateListener(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Path;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.end method
