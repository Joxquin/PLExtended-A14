.class public final Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mLastScreenId:I

.field private final mTableName:Ljava/lang/String;

.field private final mValidPackages:Ljava/util/Set;

.field private final mWorkspaceEntriesByScreenId:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mLastScreenId:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mTableName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mValidPackages:Ljava/util/Set;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mLastScreenId:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mTableName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    return-object p0
.end method

.method private getFolderItemsCount(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)I
    .locals 10

    const-string v0, "_id"

    const-string v1, "intent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "container = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mTableName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->verifyIntent(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->u(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/util/Map;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->u(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->u(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/util/Map;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/util/IntArray;->wrap([I)Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mTableName:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return v2
.end method

.method private verifyIntent(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->verifyPackage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->verifyPackage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private verifyPackage(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mValidPackages:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Package not available"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final loadAllWorkspaceEntries()Ljava/util/List;
    .locals 22

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "_id"

    const-string v4, "itemType"

    const-string v5, "screen"

    const-string v6, "cellX"

    const-string v7, "cellY"

    const-string v8, "spanX"

    const-string v9, "spanY"

    const-string v10, "intent"

    const-string v11, "appWidgetProvider"

    const-string v12, "appWidgetId"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v15

    const-string v16, "container = -100"

    iget-object v13, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v14, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mTableName:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const-string v0, "_id"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v0, "itemType"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v0, "screen"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v0, "cellX"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v0, "cellY"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v0, "spanX"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v0, "spanY"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v0, "intent"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v0, "appWidgetProvider"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v0, "appWidgetId"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    new-instance v14, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v14}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v15, Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget-object v0, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mContext:Landroid/content/Context;

    invoke-direct {v15, v0}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object/from16 v16, v14

    new-instance v14, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    invoke-direct {v14}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;-><init>()V

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    move/from16 v17, v4

    iget v4, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mLastScreenId:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mLastScreenId:I

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :try_start_0
    iget v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v0, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_8

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/4 v4, 0x6

    if-ne v0, v4, :cond_0

    goto/16 :goto_7

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v4, "Invalid item type"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->y(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;)V

    invoke-static {v14}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->w(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->verifyPackage(Ljava/lang/String;)V

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v15, v0}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v4, Landroid/graphics/Point;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move/from16 v19, v5

    :try_start_1
    iget v5, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit8 v20, v5, 0x1

    const/16 v21, -0x1

    if-eqz v20, :cond_2

    move/from16 v20, v6

    :try_start_2
    iget v6, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    goto :goto_1

    :cond_2
    move/from16 v20, v6

    move/from16 v6, v21

    :goto_1
    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_3

    iget v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    goto :goto_2

    :cond_3
    move/from16 v0, v21

    :goto_2
    invoke-direct {v4, v6, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :catch_0
    move-exception v0

    :goto_3
    move/from16 v20, v6

    goto/16 :goto_9

    :cond_4
    move/from16 v19, v5

    move/from16 v20, v6

    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_7

    iget v0, v4, Landroid/graphics/Point;->x:I

    if-lez v0, :cond_5

    goto :goto_5

    :cond_5
    iget v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    :goto_5
    iput v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v0, v4, Landroid/graphics/Point;->y:I

    if-lez v0, :cond_6

    goto :goto_6

    :cond_6
    iget v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :goto_6
    iput v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x2

    iput v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    goto :goto_8

    :cond_8
    move/from16 v19, v5

    move/from16 v20, v6

    invoke-direct {v1, v14}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->getFolderItemsCount(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)I

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    new-instance v0, Ljava/lang/Exception;

    const-string v4, "Folder is empty"

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_7
    move/from16 v19, v5

    move/from16 v20, v6

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->x(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;)V

    invoke-static {v14}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->v(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->verifyIntent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_8
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mWorkspaceEntriesByScreenId:Ljava/util/Map;

    iget v4, v14, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    iget v4, v14, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget v4, v14, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v16

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_9

    :catch_2
    move-exception v0

    move/from16 v19, v5

    goto/16 :goto_3

    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Removing item "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v14, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GridSizeMigrationUtil"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    move-object/from16 v4, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/util/IntArray;->add(I)V

    :goto_a
    move-object v14, v4

    move/from16 v4, v17

    move/from16 v5, v19

    move/from16 v6, v20

    goto/16 :goto_0

    :cond_c
    move-object v4, v14

    iget-object v0, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, v1, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mTableName:Ljava/lang/String;

    invoke-static {v0, v1, v4}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v2
.end method

.method public final loadHotseatEntries()Ljava/util/List;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "_id"

    const-string v2, "itemType"

    const-string v3, "intent"

    const-string v4, "screen"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "container = -101"

    iget-object v5, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v6, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mTableName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v6}, Lcom/android/launcher3/util/IntArray;-><init>()V

    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    invoke-direct {v7}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;-><init>()V

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :try_start_0
    iget v8, v7, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v8, :cond_3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    const/4 v9, 0x6

    if-ne v8, v9, :cond_0

    goto :goto_1

    :cond_0
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Invalid item type"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_1
    invoke-direct {p0, v7}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->getFolderItemsCount(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)I

    move-result v8

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Folder is empty"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_3
    :goto_1
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->x(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;)V

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->verifyIntent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Removing item "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v7, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "GridSizeMigrationUtil"

    invoke-static {v10, v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/IntArray;->add(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object p0, p0, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->mTableName:Ljava/lang/String;

    invoke-static {v1, p0, v6}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    return-object v0
.end method
