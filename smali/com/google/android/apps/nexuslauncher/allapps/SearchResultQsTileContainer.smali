.class public Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQsTileContainer;
.super Lcom/google/android/apps/nexuslauncher/allapps/y1;
.source "SourceFile"


# instance fields
.field public e:I

.field public final f:Lcom/android/launcher3/DeviceProfile;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQsTileContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQsTileContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/allapps/y1;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQsTileContainer;->e:I

    .line 5
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/y1;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    .line 6
    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQsTileContainer;->f:Lcom/android/launcher3/DeviceProfile;

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQsTileContainer;->e:I

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->h(II)Z

    move-result p0

    return p0
.end method

.method public final e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/y1;->e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0403be

    invoke-static {v1, v0}, Lcom/android/launcher3/icons/GraphicsUtils;->getAttrColor(ILandroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->f(Landroid/os/Bundle;)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQsTileContainer;->e:I

    return-void
.end method

.method public final r(Lcom/google/android/apps/nexuslauncher/allapps/h1;Landroid/app/search/SearchTarget;Landroid/view/View;)V
    .locals 0

    check-cast p3, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

    invoke-static {p2}, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a(Landroid/app/search/SearchTarget;)Lcom/google/android/apps/nexuslauncher/allapps/h1;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V

    return-void
.end method

.method public final s()I
    .locals 4

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQsTileContainer;->f:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    iget-boolean v1, p0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->K:Lcom/android/launcher3/ConstantItem;

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-eqz v1, :cond_0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    goto :goto_1

    :cond_2
    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    return v2
.end method

.method public final t(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultQSTile;->r()V

    return-void
.end method
