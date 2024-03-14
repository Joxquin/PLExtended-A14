.class public Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconContainer;
.super Lcom/google/android/apps/nexuslauncher/allapps/y1;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/y1;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/apps/nexuslauncher/allapps/y1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/allapps/y1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final r(Lcom/google/android/apps/nexuslauncher/allapps/h1;Landroid/app/search/SearchTarget;Landroid/view/View;)V
    .locals 2

    check-cast p3, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y1;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->u:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/constraintlayout/widget/d;

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p1, Landroidx/constraintlayout/widget/d;->R:F

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y1;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p0

    iget p0, p0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a(Landroid/app/search/SearchTarget;)Lcom/google/android/apps/nexuslauncher/allapps/h1;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V

    return-void
.end method

.method public final t(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->reset()V

    return-void
.end method
