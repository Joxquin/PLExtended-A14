.class final Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VALUE:Landroidx/dynamicanimation/animation/q;


# instance fields
.field private final mDelta:F

.field private final mSpring:Landroidx/dynamicanimation/animation/s;

.field private mValue:F

.field private final mView:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue$1;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->VALUE:Landroidx/dynamicanimation/animation/q;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mView:Landroid/view/View;

    new-instance v0, Landroidx/dynamicanimation/animation/s;

    sget-object v1, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->VALUE:Landroidx/dynamicanimation/animation/q;

    invoke-direct {v0, p0, v1}, Landroidx/dynamicanimation/animation/s;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/q;)V

    neg-float v1, p2

    iput v1, v0, Landroidx/dynamicanimation/animation/m;->h:F

    iput p2, v0, Landroidx/dynamicanimation/animation/m;->g:F

    new-instance v1, Landroidx/dynamicanimation/animation/t;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/t;-><init>(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/t;->a(F)V

    const/high16 v2, 0x457a0000    # 4000.0f

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/t;->b(F)V

    iput-object v1, v0, Landroidx/dynamicanimation/animation/s;->x:Landroidx/dynamicanimation/animation/t;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mSpring:Landroidx/dynamicanimation/animation/s;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr p1, v0

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mDelta:F

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mValue:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mValue:F

    return-void
.end method


# virtual methods
.method public final animateToPos(F)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mDelta:F

    neg-float v1, v0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->mSpring:Landroidx/dynamicanimation/animation/s;

    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/s;->j(F)V

    return-void
.end method
