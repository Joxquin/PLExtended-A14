.class public final Lcom/google/android/apps/nexuslauncher/allapps/h1;
.super Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
.source "SourceFile"


# instance fields
.field public final a:Landroid/app/search/SearchTarget;

.field public final b:Ljava/util/List;

.field public final c:I

.field public d:Lcom/google/android/apps/nexuslauncher/allapps/I2;


# direct methods
.method public constructor <init>(Landroid/app/search/SearchTarget;II)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/h1;->b:Ljava/util/List;

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/h1;->d:Lcom/google/android/apps/nexuslauncher/allapps/I2;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    iput p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/h1;->c:I

    return-void
.end method

.method public static a(Landroid/app/search/SearchTarget;)Lcom/google/android/apps/nexuslauncher/allapps/h1;
    .locals 3

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/allapps/k;->f(Landroid/app/search/SearchTarget;)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->f(Landroid/os/Bundle;)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/h1;-><init>(Landroid/app/search/SearchTarget;II)V

    return-object v0
.end method


# virtual methods
.method public final isContentSame(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {p0}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final isCountedForAccessibility()Z
    .locals 1

    iget p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    and-int/lit16 v0, p0, 0x3f82

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSameAs(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;)Z
    .locals 2

    iget v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    iget v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    if-eq v0, v1, :cond_0

    instance-of v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-static {p0}, Lz0/f;->a(Landroid/app/search/SearchTarget;)Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-static {p1}, Lz0/f;->a(Landroid/app/search/SearchTarget;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final setDecorationFillAlpha(I)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/h1;->d:Lcom/google/android/apps/nexuslauncher/allapps/I2;

    if-eqz p0, :cond_2

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/I2;->b:Lcom/google/android/apps/nexuslauncher/allapps/r2;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->h:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->k:I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/r2;->i:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_2
    :goto_0
    return-void
.end method
