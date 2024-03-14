.class public Lcom/google/android/apps/nexuslauncher/folder/PlayFolderNameProvider;
.super Lcom/android/launcher3/folder/FolderNameProvider;
.source "SourceFile"


# instance fields
.field public final d:LR1/i;


# direct methods
.method public constructor <init>(LR1/i;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderNameProvider;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/folder/PlayFolderNameProvider;->d:LR1/i;

    .line 5
    iget-object p1, p0, Lcom/android/launcher3/folder/FolderNameProvider;->mFolderInfos:Lcom/android/launcher3/util/IntSparseArrayMap;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {p1}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/FolderNameProvider;->mFolderInfos:Lcom/android/launcher3/util/IntSparseArrayMap;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/folder/FolderNameProvider;-><init>()V

    .line 2
    new-instance v0, LR1/a;

    invoke-direct {v0, p1}, LR1/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/folder/PlayFolderNameProvider;->d:LR1/i;

    return-void
.end method


# virtual methods
.method public final getSuggestedFolderName(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/folder/PlayFolderNameProvider;->getSuggestedFolderNameFromCategoryProvider(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/folder/FolderNameProvider;->getSuggestedFolderName(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V

    return-void
.end method

.method public getSuggestedFolderNameFromCategoryProvider(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V
    .locals 10

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/folder/PlayFolderNameProvider;->d:LR1/i;

    if-nez p1, :cond_0

    const/16 p0, 0x8

    invoke-virtual {p3, p0}, Lcom/android/launcher3/folder/FolderNameInfos;->setStatus(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderNameProvider;->mFolderInfos:Lcom/android/launcher3/util/IntSparseArrayMap;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/util/IntSparseArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, LR1/g;

    const/4 v1, 0x0

    invoke-direct {p2, v1}, LR1/g;-><init>(I)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, LR1/h;

    invoke-direct {p2, v1}, LR1/h;-><init>(I)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, LR1/h;

    const/4 v2, 0x1

    invoke-direct {p2, v2}, LR1/h;-><init>(I)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, LR1/g;

    invoke-direct {p2, v2}, LR1/g;-><init>(I)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_3

    const/16 p0, 0x200

    invoke-virtual {p3, p0}, Lcom/android/launcher3/folder/FolderNameInfos;->setStatus(I)V

    return-void

    :cond_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v5, p1

    check-cast v5, LR1/a;

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    iget-object v5, v5, LR1/a;->a:LY1/f;

    if-nez v5, :cond_4

    goto :goto_3

    :cond_4
    iget-object v7, v5, LY1/f;->b:Lcom/android/launcher3/Alarm;

    const/16 v8, 0x3a98

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "P"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iget-object v5, v5, LY1/f;->c:LV2/a;

    if-eqz v5, :cond_5

    monitor-enter v5

    :try_start_0
    iput v1, v5, LV2/a;->c:I

    invoke-virtual {v5, v4}, LV2/a;->a([B)[B

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v5

    throw p0

    :cond_5
    move-object v4, v6

    :goto_2
    if-eqz v4, :cond_6

    new-instance v6, LR1/k;

    new-instance v5, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-direct {v6, v5}, LR1/k;-><init>(Ljava/lang/String;)V

    :cond_6
    :goto_3
    if-nez v6, :cond_7

    const/16 v4, 0x10

    invoke-virtual {p3, v4}, Lcom/android/launcher3/folder/FolderNameInfos;->setStatus(I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 p0, 0x20

    invoke-virtual {p3, p0}, Lcom/android/launcher3/folder/FolderNameInfos;->setStatus(I)V

    return-void

    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p2, p0, p1, v0, p3}, LR1/f;->a(Ljava/util/List;ILR1/i;Ljava/util/Set;Lcom/android/launcher3/folder/FolderNameInfos;)V

    invoke-virtual {p3, v2}, Lcom/android/launcher3/folder/FolderNameInfos;->setStatus(I)V

    return-void
.end method
