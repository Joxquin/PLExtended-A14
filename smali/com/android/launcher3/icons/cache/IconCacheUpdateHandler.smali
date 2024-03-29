.class public final Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ICON_UPDATE_TOKEN:Ljava/lang/Object;


# instance fields
.field private mFilterMode:Z

.field private final mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

.field private final mItemsToDelete:Landroid/util/SparseBooleanArray;

.field private final mPackagesToIgnore:Landroid/util/ArrayMap;

.field private final mPkgInfoMap:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/icons/IconCache;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPackagesToIgnore:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    iput-object p1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPkgInfoMap:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/android/launcher3/icons/cache/BaseIconCache;->mWorkerHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/launcher3/icons/cache/BaseIconCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)Lcom/android/launcher3/icons/cache/BaseIconCache;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPkgInfoMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->ICON_UPDATE_TOKEN:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final addPackagesToIgnore(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPackagesToIgnore:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final finish()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "rowid IN ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    if-eqz v5, :cond_1

    if-lez v4, :cond_0

    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v4, :cond_3

    iget-object p0, p0, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    iget-object p0, p0, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SQLiteCacheHelper;->delete(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final updateIcons(Ljava/util/List;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V
    .locals 27

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v11, v4}, Lcom/android/launcher3/icons/cache/CachingLogic;->getUser(Ljava/lang/Object;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v11, v4}, Lcom/android/launcher3/icons/cache/CachingLogic;->getComponent(Ljava/lang/Object;)Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/os/UserHandle;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/HashMap;

    const-string v0, "system_state"

    const-string v2, "version"

    const-string v3, "lastUpdated"

    const-string v4, "componentName"

    const-string v6, "rowid"

    iget-object v7, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPackagesToIgnore:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    if-nez v7, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v7

    :cond_2
    iget-object v8, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mIconCache:Lcom/android/launcher3/icons/cache/BaseIconCache;

    invoke-virtual {v8, v5}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v14

    new-instance v9, Ljava/util/Stack;

    invoke-direct {v9}, Ljava/util/Stack;-><init>()V

    :try_start_0
    iget-object v12, v8, Lcom/android/launcher3/icons/cache/BaseIconCache;->mIconDb:Lcom/android/launcher3/icons/cache/BaseIconCache$IconDB;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v16, v13

    :try_start_1
    filled-new-array {v6, v4, v3, v2, v0}, [Ljava/lang/String;

    move-result-object v13
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3

    move-object/from16 v17, v9

    :try_start_2
    const-string v9, "profileId = ? "
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v11, 0x1

    move-object/from16 v18, v1

    :try_start_3
    new-array v1, v11, [Ljava/lang/String;

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v1, v20

    invoke-virtual {v12, v13, v9, v1}, Lcom/android/launcher3/util/SQLiteCacheHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    iget-object v12, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mPkgInfoMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/PackageInfo;

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    iget-object v11, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mItemsToDelete:Landroid/util/SparseBooleanArray;

    if-nez v12, :cond_5

    :try_start_5
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    iget-boolean v12, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    move/from16 v20, v4

    const/4 v4, 0x1

    if-ne v12, v4, :cond_3

    invoke-virtual {v8, v9, v5}, Lcom/android/launcher3/icons/cache/BaseIconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v11, v13, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :cond_3
    move v11, v4

    move/from16 v4, v20

    goto :goto_2

    :cond_4
    move/from16 v20, v4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v6, p2

    move-object/from16 v2, v18

    goto/16 :goto_5

    :cond_5
    move/from16 v20, v4

    :try_start_6
    iget-object v4, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v21, 0x1000000

    and-int v4, v4, v21

    if-eqz v4, :cond_6

    :goto_3
    move/from16 v23, v2

    move/from16 v24, v6

    move-object/from16 v2, v18

    move-object/from16 v6, p2

    move/from16 v18, v3

    goto :goto_4

    :cond_6
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move/from16 v23, v2

    move-object/from16 v2, v18

    move/from16 v18, v3

    :try_start_7
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move/from16 v24, v6

    iget v6, v12, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ne v4, v6, :cond_8

    move-object/from16 v6, p2

    const/4 v4, 0x1

    :try_start_8
    invoke-interface {v6, v3, v12}, Lcom/android/launcher3/icons/cache/CachingLogic;->getLastUpdatedTime(Ljava/lang/Object;Landroid/content/pm/PackageInfo;)J

    move-result-wide v25

    cmp-long v19, v21, v25

    if-nez v19, :cond_9

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v12, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getIconSystemState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v3, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    if-nez v3, :cond_7

    const/4 v3, 0x0

    invoke-virtual {v11, v13, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_7
    :goto_4
    move-object/from16 v9, v17

    const/4 v4, 0x1

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_8
    move-object/from16 v6, p2

    :cond_9
    if-nez v3, :cond_b

    iget-boolean v3, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    invoke-virtual {v8, v9, v5}, Lcom/android/launcher3/icons/cache/BaseIconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v11, v13, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_a
    move-object/from16 v9, v17

    goto :goto_6

    :goto_5
    move-object v3, v0

    move-object/from16 v9, v17

    goto :goto_8

    :cond_b
    const/4 v4, 0x1

    move-object/from16 v9, v17

    :try_start_9
    invoke-virtual {v9, v3}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_6
    move v11, v4

    move-object/from16 v17, v9

    move/from16 v3, v18

    move/from16 v4, v20

    move/from16 v6, v24

    move-object/from16 v18, v2

    move/from16 v2, v23

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v6, p2

    move-object/from16 v9, v17

    goto :goto_7

    :cond_c
    move-object/from16 v6, p2

    move-object/from16 v9, v17

    move-object/from16 v2, v18

    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_b

    :catchall_4
    move-exception v0

    move-object/from16 v6, p2

    move-object/from16 v9, v17

    move-object/from16 v2, v18

    :goto_7
    move-object v3, v0

    :goto_8
    if-eqz v1, :cond_d

    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v1, v0

    :try_start_c
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_9
    throw v3
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_0

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v6, p2

    move-object/from16 v9, v17

    move-object/from16 v2, v18

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v6, v11

    move-object/from16 v9, v17

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v6, v11

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v2, v1

    move-object v6, v11

    move-object/from16 v16, v13

    :goto_a
    const-string v1, "IconCacheUpdateHandler"

    const-string v3, "Error reading icon cache"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_b
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v9}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    new-instance v11, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;

    move-object v1, v11

    move-object/from16 v2, p0

    move-wide v3, v14

    move-object v6, v0

    move-object v7, v9

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;-><init>(Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;JLandroid/os/UserHandle;Ljava/util/Stack;Ljava/util/Stack;Lcom/android/launcher3/icons/cache/CachingLogic;Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$OnUpdateCallback;)V

    invoke-virtual {v11}, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler$SerializedIconUpdateTask;->scheduleNext()V

    :cond_f
    move-object/from16 v11, p2

    move-object/from16 v13, v16

    goto/16 :goto_1

    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, v10, Lcom/android/launcher3/icons/cache/IconCacheUpdateHandler;->mFilterMode:Z

    return-void
.end method
