.class public final Lcom/google/android/apps/nexuslauncher/allapps/k;
.super Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
.source "SourceFile"


# instance fields
.field public final a:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

.field public final b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final c:Landroid/util/SparseIntArray;

.field public final d:Lcom/google/android/apps/nexuslauncher/allapps/t2;

.field public e:Lcom/google/android/apps/nexuslauncher/allapps/A2;

.field public f:Lcom/google/android/apps/nexuslauncher/allapps/A2;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;Lcom/google/android/apps/nexuslauncher/allapps/y0;)V
    .locals 2

    iget-object v0, p2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->e:Lcom/google/android/apps/nexuslauncher/allapps/A2;

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->f:Lcom/google/android/apps/nexuslauncher/allapps/A2;

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->a:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/t2;

    invoke-direct {p2, p1}, Lcom/google/android/apps/nexuslauncher/allapps/t2;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->d:Lcom/google/android/apps/nexuslauncher/allapps/t2;

    const/16 p0, 0x40

    const p1, 0x7f0d00fd

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p0, 0x102

    const p1, 0x7f0d00f1

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p0, 0x200

    const p1, 0x7f0d00ef

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p0, 0x400

    const p1, 0x7f0d00f6

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p0, 0x80

    const p1, 0x7f0d00f7

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 p0, 0x80000

    const p1, 0x7f0d00f9

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p0, 0x800

    const p1, 0x7f0d00f8

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p0, 0x1000

    const p1, 0x7f0d00fa

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p0, 0x2000

    const p1, 0x7f0d00fb

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p0, 0x4000

    const p1, 0x7f0d00f3

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p0, 0x8

    const p1, 0x7f0d0034

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const p0, 0x8000

    const p1, 0x7f0d00f0

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 p0, 0x10000

    const p1, 0x7f0d00e7

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 p0, 0x20000

    const p1, 0x7f0d00ec

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 p0, 0x40000

    const p1, 0x7f0d00ff

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 p0, 0x100000

    const p1, 0x7f0d0132

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 p0, 0x200000

    const p1, 0x7f0d0146

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 p0, 0x400000

    const p1, 0x7f0d00f2

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 p0, 0x800000

    const p1, 0x7f0d00f4

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 p0, 0x1000000

    const p1, 0x7f0d00f5

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 p0, 0x2000000

    const p1, 0x7f0d00ee

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static a(Lcom/google/android/apps/nexuslauncher/allapps/k;Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->R:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->e:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/apps/nexuslauncher/allapps/x1;->a(Landroid/content/pm/PackageManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object p1, La2/f;->b:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :cond_1
    if-ne p1, v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/x1;->b(Landroid/content/Context;Z)V

    :goto_2
    return-void
.end method

.method public static b(Lcom/google/android/apps/nexuslauncher/allapps/k;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->getBindingAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->a:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    const/4 v3, -0x1

    const/high16 v4, 0x20000

    if-eq p1, v3, :cond_0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget v3, v3, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    if-eq v3, v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget v5, v5, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    if-ne v5, v4, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchRecyclerView()Lcom/android/launcher3/allapps/SearchRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/Z;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/Z;->notifyItemRemoved(I)V

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->g(Landroid/app/search/SearchTarget;)Landroid/app/search/Query;

    move-result-object p1

    new-instance v0, Landroid/app/search/SearchTargetEvent$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EDUCARD:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":toast:EDUCARD"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/app/search/SearchTargetEvent$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/app/search/SearchTargetEvent$Builder;->build()Landroid/app/search/SearchTargetEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->z(Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->I:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    sget-object p0, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->e:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    const/4 p1, 0x1

    if-ne p2, p0, :cond_3

    iput-boolean p1, v1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->z:Z

    iget-object p0, v1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    iget-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/g3;->d()V

    monitor-exit p2

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    iput-boolean p1, v1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->y:Z

    iget-object p0, v1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q:Lcom/google/android/apps/nexuslauncher/allapps/g3;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g3;->f:Ljava/util/ArrayList;

    monitor-enter p1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/g3;->d()V

    monitor-exit p1

    :goto_2
    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public static synthetic c(Lcom/google/android/apps/nexuslauncher/allapps/k;Landroid/view/View;)V
    .locals 4

    iget-object p0, p0, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->Q:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://support.google.com/pixelphone?p=search_your_phone&hl="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, p1, v0, v1}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    return-void
.end method

.method public static d(Landroid/app/search/SearchTarget;Ljava/util/HashMap;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/search/SearchTarget;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/app/search/SearchTarget;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->b:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static e(Ljava/util/List;II)Landroid/app/search/SearchTarget;
    .locals 1

    :cond_0
    add-int/2addr p1, p2

    if-ltz p1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchTarget;

    invoke-virtual {v0}, Landroid/app/search/SearchTarget;->getParentId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/search/SearchTarget;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static f(Landroid/app/search/SearchTarget;)I
    .locals 3

    invoke-virtual {p0}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v0, v2

    goto/16 :goto_1

    :sswitch_0
    const-string v1, "section_header"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "short_icon_row_thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "tall_card_with_image_no_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "thumbnail_container"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "big_icon_medium_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "people_tile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "empty_divider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "qs_tile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "icon_text_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "slice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "qs_tile_container"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "icon_row_medium"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "extra_tall_icon_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "text_header_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "icon_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "widget_live"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 v0, 0x7

    goto :goto_1

    :sswitch_12
    const-string v1, "widget_preview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x6

    goto :goto_1

    :sswitch_13
    const-string v1, "icon_container"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x5

    goto :goto_1

    :sswitch_14
    const-string v1, "icon_texts_button"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    :cond_14
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_15
    const-string v1, "header"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_16
    const-string v1, "icon_texts_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    :cond_16
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_17
    const-string v1, "educard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x1

    goto :goto_1

    :sswitch_18
    const-string v1, "short_icon_row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    :cond_18
    const/4 v0, 0x0

    :goto_1
    const-string v1, "SearchServiceAdapter"

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const/high16 p0, 0x40000

    return p0

    :pswitch_1
    const/high16 p0, 0x100000

    return p0

    :pswitch_2
    invoke-virtual {p0}, Landroid/app/search/SearchTarget;->getSearchAction()Landroid/app/search/SearchAction;

    move-result-object p0

    if-eqz p0, :cond_19

    const/16 p0, 0x800

    return p0

    :cond_19
    const-string p0, "LayoutType.THUMBNAIL target doesn\'t contain searchAction."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_3
    const/high16 p0, 0x80000

    return p0

    :pswitch_4
    const/16 p0, 0x4000

    return p0

    :pswitch_5
    const p0, 0x8000

    return p0

    :pswitch_6
    const/high16 p0, 0x800000

    return p0

    :pswitch_7
    invoke-virtual {p0}, Landroid/app/search/SearchTarget;->getSliceUri()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1a

    const/16 p0, 0x80

    return p0

    :cond_1a
    const-string p0, "LayoutType.ICON_SLICE target doesn\'t contain sliceUri."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2

    :pswitch_8
    const/16 p0, 0x102

    return p0

    :pswitch_9
    const/high16 p0, 0x1000000

    return p0

    :pswitch_a
    const/high16 p0, 0x200000

    return p0

    :pswitch_b
    const/16 p0, 0x1000

    return p0

    :pswitch_c
    const/16 p0, 0x2000

    return p0

    :pswitch_d
    const/high16 p0, 0x400000

    return p0

    :pswitch_e
    const/16 p0, 0x40

    return p0

    :pswitch_f
    const/16 p0, 0x200

    return p0

    :pswitch_10
    const/high16 p0, 0x20000

    return p0

    :pswitch_11
    const/16 p0, 0x400

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x758fc689 -> :sswitch_18
        -0x6fe6c83a -> :sswitch_17
        -0x6497e545 -> :sswitch_16
        -0x48cb1d73 -> :sswitch_15
        -0x4339f14f -> :sswitch_14
        -0x404effc5 -> :sswitch_13
        -0x3b2c9f33 -> :sswitch_12
        -0x370825f9 -> :sswitch_11
        -0x2bf6beec -> :sswitch_10
        -0x2b674086 -> :sswitch_f
        -0x2372c589 -> :sswitch_e
        -0x14fe5300 -> :sswitch_d
        0x19afed -> :sswitch_c
        0x313c79 -> :sswitch_b
        0x6873d92 -> :sswitch_a
        0x1dc0bcce -> :sswitch_9
        0x234e82ab -> :sswitch_8
        0x3a5ea227 -> :sswitch_7
        0x44231a5e -> :sswitch_6
        0x48cc4c57 -> :sswitch_5
        0x4f4160ee -> :sswitch_4
        0x4f4e50ec -> :sswitch_3
        0x50696197 -> :sswitch_2
        0x571b5c24 -> :sswitch_1
        0x78d8c527 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_f
        :pswitch_a
        :pswitch_11
        :pswitch_11
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_f
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_11
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/allapps/y0;Ljava/util/List;)Ljava/util/ArrayList;
    .locals 10

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/search/SearchTarget;

    invoke-virtual {v4}, Landroid/app/search/SearchTarget;->shouldHide()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-object v5, v5, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-boolean v5, v5, Lcom/google/android/apps/nexuslauncher/allapps/t1;->l:Z

    if-nez v5, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v4}, Landroid/app/search/SearchTarget;->getParentId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4, v0}, Lcom/google/android/apps/nexuslauncher/allapps/k;->d(Landroid/app/search/SearchTarget;Ljava/util/HashMap;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    new-instance v5, Lcom/google/android/apps/nexuslauncher/allapps/I2;

    const/4 v6, -0x1

    invoke-static {p2, v3, v6}, Lcom/google/android/apps/nexuslauncher/allapps/k;->e(Ljava/util/List;II)Landroid/app/search/SearchTarget;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {p2, v3, v8}, Lcom/google/android/apps/nexuslauncher/allapps/k;->e(Ljava/util/List;II)Landroid/app/search/SearchTarget;

    move-result-object v9

    invoke-direct {v5, p0, v4, v7, v9}, Lcom/google/android/apps/nexuslauncher/allapps/I2;-><init>(Landroid/content/Context;Landroid/app/search/SearchTarget;Landroid/app/search/SearchTarget;Landroid/app/search/SearchTarget;)V

    invoke-static {v4}, Lcom/google/android/apps/nexuslauncher/allapps/k;->f(Landroid/app/search/SearchTarget;)I

    move-result v7

    if-eq v7, v6, :cond_6

    new-instance v6, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    invoke-virtual {v4}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/nexuslauncher/allapps/D2;->f(Landroid/os/Bundle;)I

    move-result v9

    invoke-direct {v6, v4, v7, v9}, Lcom/google/android/apps/nexuslauncher/allapps/h1;-><init>(Landroid/app/search/SearchTarget;II)V

    invoke-virtual {v4}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v7

    const-string v9, "empty_divider"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "section_header"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move v8, v2

    :cond_3
    :goto_1
    if-nez v8, :cond_4

    iput-object v5, v6, Lcom/google/android/apps/nexuslauncher/allapps/h1;->d:Lcom/google/android/apps/nexuslauncher/allapps/I2;

    :cond_4
    if-eqz v8, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/search/SearchTarget;

    invoke-static {p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/k;->d(Landroid/app/search/SearchTarget;Ljava/util/HashMap;)Z

    move-result p2

    if-nez p2, :cond_8

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unable to pair child "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to parent "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SearchServiceAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method


# virtual methods
.method public final clearHighlightedItem()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->e:Lcom/google/android/apps/nexuslauncher/allapps/A2;

    return-void
.end method

.method public final getDecorator()Landroidx/recyclerview/widget/i0;
    .locals 1

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_RESULT_BACKGROUND_DRAWABLES:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->d:Lcom/google/android/apps/nexuslauncher/allapps/t2;

    :goto_0
    return-object p0
.end method

.method public final getHighlightedItem()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->e:Lcom/google/android/apps/nexuslauncher/allapps/A2;

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method public final getItemsPerRow(II)I
    .locals 0

    const/16 p0, 0x800

    if-eq p1, p0, :cond_0

    const/16 p0, 0x2000

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0
.end method

.method public final getSupportedItemsPerRowArray()[I
    .locals 0

    const/4 p0, 0x3

    filled-new-array {p0, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->e:Lcom/google/android/apps/nexuslauncher/allapps/A2;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_FOCUSED_ITEM_SELECTED_WITH_IME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->e:Lcom/google/android/apps/nexuslauncher/allapps/A2;

    invoke-interface {p0}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->n()Z

    move-result p0

    return p0
.end method

.method public final i()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->I(Landroid/view/View;)V

    iget-boolean v2, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->w:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->o(Ljava/lang/String;)Landroid/app/search/Query;

    move-result-object v2

    new-instance v3, Landroid/app/search/SearchTargetEvent$Builder;

    invoke-static {v1}, Lz0/c;->b(Landroid/app/search/SearchTarget;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x6

    invoke-direct {v3, v1, v4}, Landroid/app/search/SearchTargetEvent$Builder;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3}, Landroid/app/search/SearchTargetEvent$Builder;->build()Landroid/app/search/SearchTargetEvent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->z(Landroid/app/search/Query;Landroid/app/search/SearchTargetEvent;)V

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->y()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->f:Lcom/google/android/apps/nexuslauncher/allapps/A2;

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_QUICK_SEARCH_WITH_IME:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    iget-object v2, p0, Lcom/android/launcher3/allapps/search/SearchAdapterProvider;->mLauncher:Lcom/android/launcher3/views/ActivityContext;

    if-eqz v0, :cond_1

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->f:Lcom/google/android/apps/nexuslauncher/allapps/A2;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :goto_0
    return-void
.end method

.method public final isViewSupported(I)Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->c:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final j(Lcom/google/android/apps/nexuslauncher/allapps/A2;Landroid/app/search/SearchTarget;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->e:Lcom/google/android/apps/nexuslauncher/allapps/A2;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->a:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p0

    const-string p1, ""

    invoke-interface {p0, p1, p1, v1}, Lcom/android/launcher3/allapps/SearchUiManager;->setFocusedResultTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result p1

    const v2, 0x20111

    and-int/2addr p1, v2

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p2}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object p1

    const-string p2, "qs_tile"

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->e:Lcom/google/android/apps/nexuslauncher/allapps/A2;

    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->f()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->e:Lcom/google/android/apps/nexuslauncher/allapps/A2;

    invoke-interface {p0}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->a()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p2, v0, p0, p1}, Lcom/android/launcher3/allapps/SearchUiManager;->setFocusedResultTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final launchHighlightedItem()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/s1;->m:Z

    const/4 v2, 0x1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->x()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->p:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->h:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->e:Lcom/google/android/apps/nexuslauncher/allapps/A2;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/k;->h()Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/k;->i()V

    return v2

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->a:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchUiManager()Lcom/android/launcher3/allapps/SearchUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/SearchUiManager;->getEditText()Lcom/android/launcher3/ExtendedEditText;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->e:Lcom/google/android/apps/nexuslauncher/allapps/A2;

    if-eqz v1, :cond_5

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/search/SearchEditText;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/k;->h()Z

    move-result p0

    return p0

    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/k;->i()V

    return v2
.end method

.method public final onBindView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->b:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->t:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->getItemViewType()I

    move-result v2

    const v3, 0x8000

    if-eq v2, v3, :cond_c

    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->getItemViewType()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->getItemViewType()I

    move-result v2

    const/high16 v3, 0x10000

    const/4 v4, 0x0

    iget-object v5, p1, Landroidx/recyclerview/widget/E0;->itemView:Landroid/view/View;

    if-ne v2, v3, :cond_1

    const p1, 0x7f0a0077

    invoke-virtual {v5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/h;

    invoke-direct {p2, p0, v4}, Lcom/google/android/apps/nexuslauncher/allapps/h;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/k;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->getItemViewType()I

    move-result v2

    const/high16 v3, 0x20000

    const/4 v6, 0x1

    if-ne v2, v3, :cond_7

    const p2, 0x7f0a039e

    invoke-virtual {v5, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const v2, 0x7f0a00ae

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;->e:Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;

    if-ne v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v6, v4

    :goto_0
    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_UNINSTALLED_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v7

    if-eqz v7, :cond_3

    const v7, 0x7f130057

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    const v7, 0x7f130196

    goto :goto_1

    :cond_4
    const v7, 0x7f1301b7

    :goto_1
    invoke-virtual {p2, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    :try_start_0
    const-string v3, "com.google.android.googlequicksearchbox"

    invoke-virtual {p2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    const-string v3, "SearchServiceAdapter"

    const-string v4, "Failed to get AGA label"

    invoke-static {v3, v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p2, "Google"

    :goto_2
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/y0;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1301c3

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v3, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_6

    const p2, 0x7f130195

    goto :goto_3

    :cond_6
    const p2, 0x7f1301b4

    :goto_3
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    :goto_4
    const p2, 0x7f0a01a6

    invoke-virtual {v5, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/i;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/apps/nexuslauncher/allapps/i;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/k;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/E0;->getItemViewType()I

    move-result p1

    const/high16 v0, 0x2000000

    if-ne p1, v0, :cond_8

    const p1, 0x7f0a01ec

    invoke-virtual {v5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/h;

    invoke-direct {p2, p0, v6}, Lcom/google/android/apps/nexuslauncher/allapps/h;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/k;I)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a02dc

    invoke-virtual {v5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/google/android/apps/nexuslauncher/allapps/j;

    invoke-direct {p2, p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/j;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/k;Lcom/google/android/apps/nexuslauncher/allapps/OneSearchSessionManager$ZeroEntryState;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->a:Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchResultList()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    move-object v0, v5

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/A2;

    iget-object v1, p2, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {v1}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result v2

    if-ne v2, v6, :cond_9

    invoke-virtual {v1}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v2

    const-string v6, "icon"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Landroid/app/search/SearchTarget;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v6, "app_gridx"

    iget v7, p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowAppIndex:I

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_9
    invoke-interface {v0, p2}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->e(Lcom/google/android/apps/nexuslauncher/allapps/h1;)V

    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->d()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    if-eqz v2, :cond_b

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/h1;->a:Landroid/app/search/SearchTarget;

    invoke-virtual {p1}, Landroid/app/search/SearchTarget;->getResultType()I

    move-result p1

    if-eq p1, v3, :cond_b

    sget-object p1, Lcom/google/android/apps/nexuslauncher/c;->j:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_a

    const-string p1, "qs_tile_container"

    invoke-virtual {v1}, Landroid/app/search/SearchTarget;->getLayoutType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p2, Lcom/google/android/apps/nexuslauncher/allapps/h1;->b:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_a

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/search/SearchTarget;

    const p2, 0x7f0a0390

    invoke-virtual {v5, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/google/android/apps/nexuslauncher/allapps/A2;

    invoke-virtual {p0, p2, p1}, Lcom/google/android/apps/nexuslauncher/allapps/k;->j(Lcom/google/android/apps/nexuslauncher/allapps/A2;Landroid/app/search/SearchTarget;)V

    goto :goto_5

    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/k;->j(Lcom/google/android/apps/nexuslauncher/allapps/A2;Landroid/app/search/SearchTarget;)V

    :cond_b
    :goto_5
    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/allapps/A2;->c()Z

    move-result p1

    if-eqz p1, :cond_c

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->f:Lcom/google/android/apps/nexuslauncher/allapps/A2;

    :cond_c
    :goto_6
    return-void
.end method

.method public final onCreateViewHolder(ILandroid/view/LayoutInflater;Landroidx/recyclerview/widget/RecyclerView;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .locals 1

    new-instance v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/k;->c:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p3, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method
