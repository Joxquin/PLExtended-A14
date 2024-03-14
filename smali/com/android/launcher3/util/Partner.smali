.class public final Lcom/android/launcher3/util/Partner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/util/Partner;->mPackageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/launcher3/util/Partner;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method public static get(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/android/launcher3/util/Partner;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x100000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to find resources for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Partner"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_1

    new-instance v1, Lcom/android/launcher3/util/Partner;

    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Resources;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/Partner;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method


# virtual methods
.method public final getDimenValue()F
    .locals 3

    const-string v0, "dimen"

    iget-object v1, p0, Lcom/android/launcher3/util/Partner;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/util/Partner;->mResources:Landroid/content/res/Resources;

    const-string v2, "grid_icon_size_dp"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    int-to-float p0, p0

    :goto_0
    return p0
.end method

.method public final getIntValue(Ljava/lang/String;)I
    .locals 2

    const-string v0, "integer"

    iget-object v1, p0, Lcom/android/launcher3/util/Partner;->mPackageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/launcher3/util/Partner;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/Partner;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/Partner;->mResources:Landroid/content/res/Resources;

    return-object p0
.end method

.method public final getXmlResId(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/Partner;->mResources:Landroid/content/res/Resources;

    const-string v1, "xml"

    iget-object p0, p0, Lcom/android/launcher3/util/Partner;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method
