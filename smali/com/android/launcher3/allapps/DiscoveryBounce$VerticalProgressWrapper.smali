.class public Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mLimit:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Hotseat;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mView:Landroid/view/View;

    iput p2, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mLimit:F

    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget p0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mLimit:F

    div-float/2addr v0, p0

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr v0, p0

    return v0
.end method

.method public setProgress(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mLimit:F

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/android/launcher3/allapps/DiscoveryBounce$VerticalProgressWrapper;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method
