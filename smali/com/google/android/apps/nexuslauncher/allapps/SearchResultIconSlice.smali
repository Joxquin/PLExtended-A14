.class public Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;
.super Lcom/android/systemui/animation/view/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/allapps/A2;
.implements Lf0/M;


# static fields
.field public static final synthetic o:I


# instance fields
.field public final e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public f:Landroidx/slice/widget/SliceView;

.field public g:Landroid/view/View;

.field public h:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

.field public i:Lcom/google/android/apps/nexuslauncher/allapps/e0;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Landroid/os/Bundle;

.field public n:Landroid/app/search/SearchTarget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/animation/view/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, ""

    .line 4
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->j:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->k:Ljava/lang/String;

    const/4 p2, 0x0

    .line 6
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->l:I

    .line 7
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->h:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->l:I

    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->h(II)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V
    .locals 12

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->n:Landroid/app/search/SearchTarget;

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->b:Ljava/util/List;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "use_full_height"

    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->f:Landroidx/slice/widget/SliceView;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroidx/slice/widget/SliceView;->h(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->f:Landroidx/slice/widget/SliceView;

    invoke-virtual {v2, v3}, Landroidx/slice/widget/SliceView;->h(I)V

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070490

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->f:Landroidx/slice/widget/SliceView;

    const/4 v6, 0x0

    iput-object v6, v2, Landroidx/slice/widget/SliceView;->y:Lf0/M;

    iget-object v2, v2, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {v2, v6}, Lf0/F;->k(Lf0/M;)V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->h:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->reset()V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->i:Lcom/google/android/apps/nexuslauncher/allapps/e0;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/allapps/e0;->close()V

    :cond_1
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH_PERFORMANCE_LOGGING:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$Slice;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getSliceUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/logger/LauncherAtom$Slice$Builder;->setUri(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/logger/LauncherAtom$Slice;

    invoke-interface {v2, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSlice(Lcom/android/launcher3/logger/LauncherAtom$Slice;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v6, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->s:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v2, v6}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->g:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->f:Landroidx/slice/widget/SliceView;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getSliceUri()Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->f:Landroidx/slice/widget/SliceView;

    new-instance v9, Lcom/google/android/apps/nexuslauncher/allapps/Q1;

    invoke-direct {v9, p0, v1, p1}, Lcom/google/android/apps/nexuslauncher/allapps/Q1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;Ljava/util/List;Lcom/google/android/apps/nexuslauncher/allapps/h1;)V

    iget-object v10, v2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->e:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/nexuslauncher/allapps/x0;

    if-nez v10, :cond_3

    new-instance v10, Lcom/google/android/apps/nexuslauncher/allapps/x0;

    invoke-direct {v10, v2, v7}, Lcom/google/android/apps/nexuslauncher/allapps/x0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/net/Uri;)V

    iget-object v11, v2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->e:Ljava/util/HashMap;

    invoke-virtual {v11, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v11, Lcom/google/android/apps/nexuslauncher/allapps/p0;

    invoke-direct {v11, v2, v7, v9, v8}, Lcom/google/android/apps/nexuslauncher/allapps/p0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/net/Uri;Lcom/google/android/apps/nexuslauncher/allapps/Q1;Landroidx/slice/widget/SliceView;)V

    iget-object v2, v10, Lcom/google/android/apps/nexuslauncher/allapps/x0;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Lcom/google/android/apps/nexuslauncher/allapps/x0;->b()V

    iget-object v2, v10, Lcom/google/android/apps/nexuslauncher/allapps/x0;->i:Landroidx/slice/Slice;

    if-eqz v2, :cond_4

    invoke-virtual {v11, v2}, Lcom/google/android/apps/nexuslauncher/allapps/p0;->i(Ljava/lang/Object;)V

    :cond_4
    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/e0;

    invoke-direct {v2, v10, v11}, Lcom/google/android/apps/nexuslauncher/allapps/e0;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/x0;Lcom/google/android/apps/nexuslauncher/allapps/p0;)V

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->i:Lcom/google/android/apps/nexuslauncher/allapps/e0;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-static {v2, v7}, Ljava/util/Objects;->requireNonNullElse(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->f(Landroid/os/Bundle;)I

    move-result v2

    iput v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->l:I

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->m:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->j:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->j:Ljava/lang/String;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_6

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->h:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/search/SearchTarget;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a(Landroid/app/search/SearchTarget;)Lcom/google/android/apps/nexuslauncher/allapps/h1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-direct {v1, v5, v0, v2}, Lcom/android/launcher3/model/data/PackageItemInfo;-><init>(ILandroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->h:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/data/PackageItemInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->h:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->applyFromItemInfoWithIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->h:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v0, v6}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->setVisibility(I)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->m:Landroid/os/Bundle;

    const-string v1, ""

    if-eqz v0, :cond_8

    const-string v2, "slice_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->k:Ljava/lang/String;

    goto :goto_2

    :cond_8
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->k:Ljava/lang/String;

    :goto_2
    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->d:Lcom/google/android/apps/nexuslauncher/allapps/I2;

    invoke-interface {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->h(Lcom/google/android/apps/nexuslauncher/allapps/I2;)V

    return-void
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final k(Landroidx/slice/SliceItem;Lf0/c;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSliceItem(Landroidx/slice/SliceItem;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->m:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->i(Landroid/os/Bundle;)Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setExtendedContainers(Lcom/android/launcher3/logger/LauncherAtomExtensions$ExtendedContainers;)V

    invoke-virtual {v0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget v0, p2, Lf0/c;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget v0, p2, Lf0/c;->h:I

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    iget v0, p2, Lf0/c;->g:I

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withRank(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    :cond_1
    :goto_0
    const/4 v0, 0x5

    iget v3, p2, Lf0/c;->b:I

    if-eqz v3, :cond_7

    if-eq v3, v1, :cond_6

    if-eq v3, v2, :cond_5

    const/4 p2, 0x3

    if-eq v3, p2, :cond_4

    const/4 p2, 0x4

    if-eq v3, p2, :cond_3

    if-eq v3, v0, :cond_2

    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_DEFAULT_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_SELECTION_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_1

    :cond_3
    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_SEE_MORE_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_1

    :cond_4
    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_CONTENT_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_1

    :cond_5
    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_SLIDER_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_1

    :cond_6
    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_BUTTON_ACTION:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_1

    :cond_7
    iget p2, p2, Lf0/c;->h:I

    if-ne p2, v1, :cond_8

    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_TOGGLE_ON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_1

    :cond_8
    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SLICE_TOGGLE_OFF:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    :goto_1
    invoke-interface {p1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->n:Landroid/app/search/SearchTarget;

    invoke-static {p1, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->g(Lcom/google/android/apps/nexuslauncher/allapps/y0;Landroid/app/search/SearchTarget;I)V

    return-void
.end method

.method public final n()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->f:Landroidx/slice/widget/SliceView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result p0

    return p0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->f:Landroidx/slice/widget/SliceView;

    iput-object p0, v0, Landroidx/slice/widget/SliceView;->y:Lf0/M;

    iget-object v0, v0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {v0, p0}, Lf0/F;->k(Lf0/M;)V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->f:Landroidx/slice/widget/SliceView;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/slice/widget/SliceView;->y:Lf0/M;

    iget-object v0, v0, Landroidx/slice/widget/SliceView;->e:Lf0/F;

    invoke-virtual {v0, v1}, Lf0/F;->k(Lf0/M;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->h:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;->reset()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->i:Lcom/google/android/apps/nexuslauncher/allapps/e0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/e0;->close()V

    :cond_0
    return-void
.end method

.method public final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0309

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->f:Landroidx/slice/widget/SliceView;

    const v0, 0x7f0a0160

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->g:Landroid/view/View;

    const v0, 0x7f0a01c7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->h:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->e:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIconSlice;->h:Lcom/google/android/apps/nexuslauncher/allapps/SearchResultIcon;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method
