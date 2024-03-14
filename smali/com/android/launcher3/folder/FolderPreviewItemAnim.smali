.class final Lcom/android/launcher3/folder/FolderPreviewItemAnim;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PARAMS:Landroid/util/Property;

.field private static final sTempParamsArray:[F

.field private static final sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# instance fields
.field public final finalState:[F

.field private final mAnimator:Landroid/animation/ObjectAnimator;

.field private final mItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

.field private final mParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderPreviewItemAnim$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->PARAMS:Landroid/util/Property;

    new-instance v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/launcher3/folder/PreviewItemDrawingParams;-><init>(FFF)V

    sput-object v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 v0, 0x3

    new-array v0, v0, [F

    sput-object v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTempParamsArray:[F

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/folder/PreviewItemManager;Lcom/android/launcher3/folder/PreviewItemDrawingParams;IIIIILjava/lang/Runnable;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    iput-object p2, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    int-to-float v0, p5

    iput v0, p2, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->index:F

    sget-object v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTmpParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    invoke-virtual {p1, p5, p6, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    const/4 p5, 0x3

    new-array p6, p5, [F

    iget v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    const/4 v2, 0x0

    aput v1, p6, v2

    iget v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    const/4 v3, 0x1

    aput v1, p6, v3

    iget v1, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    const/4 v4, 0x2

    aput v1, p6, v4

    iput-object p6, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->finalState:[F

    invoke-virtual {p1, p3, p4, v0}, Lcom/android/launcher3/folder/PreviewItemManager;->computePreviewItemDrawingParams(IILcom/android/launcher3/folder/PreviewItemDrawingParams;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    new-array p1, p5, [F

    iget p3, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    aput p3, p1, v2

    iget p3, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    aput p3, p1, v3

    iget p3, v0, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    aput p3, p1, v4

    sget-object p3, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->PARAMS:Landroid/util/Property;

    new-instance p4, Landroid/animation/FloatArrayEvaluator;

    invoke-direct {p4}, Landroid/animation/FloatArrayEvaluator;-><init>()V

    filled-new-array {p1, p6}, [[F

    move-result-object p1

    invoke-static {p0, p3, p4, p1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim$2;

    invoke-direct {p0, p8, p2}, Lcom/android/launcher3/folder/FolderPreviewItemAnim$2;-><init>(Ljava/lang/Runnable;Lcom/android/launcher3/folder/PreviewItemDrawingParams;)V

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    int-to-long p2, p7

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/folder/FolderPreviewItemAnim;)Lcom/android/launcher3/folder/PreviewItemDrawingParams;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    return-object p0
.end method

.method public static b(Lcom/android/launcher3/folder/FolderPreviewItemAnim;[F)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    aget v0, p1, v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mParams:Lcom/android/launcher3/folder/PreviewItemDrawingParams;

    iput v0, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->scale:F

    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transX:F

    const/4 v0, 0x2

    aget p1, p1, v0

    iput p1, v1, Lcom/android/launcher3/folder/PreviewItemDrawingParams;->transY:F

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/PreviewItemManager;->onParamsChanged()V

    return-void
.end method

.method public static bridge synthetic c()[F
    .locals 1

    sget-object v0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->sTempParamsArray:[F

    return-object v0
.end method


# virtual methods
.method public final cancel()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    return-void
.end method

.method public final start()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPreviewItemAnim;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method
