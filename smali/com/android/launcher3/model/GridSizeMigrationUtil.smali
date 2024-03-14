.class public final Lcom/android/launcher3/model/GridSizeMigrationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)V
    .locals 1

    const-string v0, "_id"

    invoke-static {v0, p2}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static copyEntryAndUpdate(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;IILjava/lang/String;Ljava/lang/String;)I
    .locals 8

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "_id = \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    :cond_0
    const-string v3, "\'"

    invoke-static {v1, p2, v3}, Lv/e;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const/4 p4, -0x1

    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p2, p4}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {p4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellX"

    invoke-virtual {p4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "cellY"

    invoke-virtual {p4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanX"

    invoke-virtual {p4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "spanY"

    invoke-virtual {p4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    :cond_1
    const-string v0, "container"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/model/DatabaseHelper;->generateNewItemId()I

    move-result v0

    const-string v1, "_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p5, v2, p4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move p4, v0

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    return p4
.end method

.method private static insertEntryInDb(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->copyEntryAndUpdate(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;->u(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;)Ljava/util/Map;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v5, 0x0

    move-object v4, p0

    move v7, v0

    move-object v8, p2

    move-object v9, p3

    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->copyEntryAndUpdate(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;IILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static migrate(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;ILandroid/graphics/Point;Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)V
    .locals 16

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->loadHotseatEntries()Ljava/util/List;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->loadAllWorkspaceEntries()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->loadHotseatEntries()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->loadAllWorkspaceEntries()Ljava/util/List;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v8, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v8}, Lcom/android/launcher3/util/IntArray;-><init>()V

    new-instance v9, Lcom/android/launcher3/model/T;

    const/4 v10, 0x0

    invoke-direct {v9, v4, v6, v10}, Lcom/android/launcher3/model/T;-><init>(Ljava/util/List;Ljava/lang/Iterable;I)V

    move-object v11, v2

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v9, Lcom/android/launcher3/model/T;

    invoke-direct {v9, v2, v8, v7}, Lcom/android/launcher3/model/T;-><init>(Ljava/util/List;Ljava/lang/Iterable;I)V

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/launcher3/model/T;

    invoke-direct {v2, v5, v15, v10}, Lcom/android/launcher3/model/T;-><init>(Ljava/util/List;Ljava/lang/Iterable;I)V

    move-object v9, v3

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    new-instance v2, Lcom/android/launcher3/model/T;

    invoke-direct {v2, v3, v8, v7}, Lcom/android/launcher3/model/T;-><init>(Ljava/util/List;Ljava/lang/Iterable;I)V

    move-object v9, v5

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Start migration:\n Source Device:"

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v11, Lcom/android/launcher3/model/Q;

    invoke-direct {v11, v10}, Lcom/android/launcher3/model/Q;-><init>(I)V

    invoke-interface {v3, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    const-string v11, ",\n"

    const-string v12, "["

    const-string v13, "]"

    invoke-static {v11, v12, v13}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n Target Device:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v14, Lcom/android/launcher3/model/Q;

    invoke-direct {v14, v7}, Lcom/android/launcher3/model/Q;-><init>(I)V

    invoke-interface {v3, v14}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {v11, v12, v13}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n Removing Items:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/android/launcher3/model/S;

    invoke-direct {v5, v8}, Lcom/android/launcher3/model/S;-><init>(Lcom/android/launcher3/util/IntArray;)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/android/launcher3/model/Q;

    const/4 v14, 0x2

    invoke-direct {v5, v14}, Lcom/android/launcher3/model/Q;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {v11, v12, v13}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n Adding Workspace Items:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v15}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/android/launcher3/model/Q;

    const/4 v14, 0x3

    invoke-direct {v5, v14}, Lcom/android/launcher3/model/Q;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {v11, v12, v13}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n Adding Hotseat Items:"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v5, Lcom/android/launcher3/model/Q;

    const/4 v14, 0x4

    invoke-direct {v5, v14}, Lcom/android/launcher3/model/Q;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {v11, v12, v13}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "GridSizeMigrationUtil"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->a(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->c(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "_id"

    invoke-static {v11, v8}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    invoke-virtual {v3, v9, v8, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_1
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v15}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-array v3, v0, [Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    iget v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    aput-boolean v7, v3, v8

    goto :goto_0

    :cond_2
    move v4, v10

    :goto_1
    if-ge v4, v0, :cond_4

    aget-boolean v8, v3, v4

    if-nez v8, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    iput v4, v8, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v4, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v10, v8, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->c(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->c(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v14, p0

    invoke-static {v14, v8, v9, v11}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->insertEntryInDb(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;Ljava/lang/String;)V

    iget v8, v8, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    aput-boolean v7, v3, v8

    goto :goto_2

    :cond_3
    move-object/from16 v14, p0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v14, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v3, v10

    :goto_3
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->b(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)I

    move-result v4

    if-gt v3, v4, :cond_5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_NEW_MIGRATION_LOGIC:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-virtual {v4, v3}, Lcom/android/launcher3/model/DeviceGridState;->compareTo(Lcom/android/launcher3/model/DeviceGridState;)I

    move-result v6

    if-ltz v6, :cond_6

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v4, v3

    const/4 v3, 0x2

    if-gt v4, v3, :cond_6

    move v3, v7

    goto :goto_4

    :cond_6
    move v3, v10

    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Migrating "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move v12, v2

    move v13, v1

    move-object v14, v15

    move-object v6, v15

    move v15, v4

    invoke-static/range {v8 .. v15}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->solveGridPlacement(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;IIILjava/util/List;Z)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v14, p0

    move-object v15, v6

    goto :goto_5

    :cond_8
    move-object v6, v15

    :goto_6
    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->b(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)I

    move-result v0

    :goto_7
    add-int/2addr v0, v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move v11, v0

    move v12, v2

    move v13, v1

    move-object v14, v6

    move v15, v3

    invoke-static/range {v8 .. v15}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->solveGridPlacement(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;IIILjava/util/List;Z)V

    goto :goto_7

    :cond_9
    return-void
.end method

.method public static migrateGridIfNeeded(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "Workspace migration completed in "

    const-string v3, "GridSizeMigrationUtil"

    new-instance v9, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v9, v1}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Landroid/content/Context;)V

    new-instance v11, Lcom/android/launcher3/model/DeviceGridState;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-static {v9, v11}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->needsToMigrate(Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)Z

    move-result v0

    const/4 v12, 0x1

    if-nez v0, :cond_0

    return v12

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "favorites"

    const-string v13, "favorites_tmp"

    move-object/from16 v5, p3

    invoke-static {v5, v0, v13, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->copyTable(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object v5, Lcom/android/launcher3/pm/InstallSessionHelper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v5, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/pm/InstallSessionHelper;

    invoke-virtual {v5}, Lcom/android/launcher3/pm/InstallSessionHelper;->getActiveSessions()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    new-instance v6, Lcom/android/launcher3/model/U;

    const/4 v7, 0x2

    invoke-direct {v6, v7, v0}, Lcom/android/launcher3/model/U;-><init>(ILjava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    :try_start_0
    new-instance v10, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-virtual/range {p2 .. p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-direct {v10, v5}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v5, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;

    invoke-virtual {v10}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-direct {v5, v6, v13, v1, v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Ljava/util/Set;)V

    new-instance v6, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;

    invoke-virtual {v10}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-direct {v6, v7, v4, v1, v0}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/Context;Ljava/util/Set;)V

    new-instance v8, Landroid/graphics/Point;

    invoke-virtual {v11}, Lcom/android/launcher3/model/DeviceGridState;->getColumns()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/launcher3/model/DeviceGridState;->getRows()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v8, v0, v4}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v11}, Lcom/android/launcher3/model/DeviceGridState;->getNumHotseat()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v4, p2

    move-object/from16 v16, v10

    move-object v10, v11

    :try_start_2
    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->migrate(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;ILandroid/graphics/Point;Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0, v13}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v1}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    return v12

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v16, v10

    :goto_1
    move-object v4, v0

    :try_start_4
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v5, v0

    :try_start_5
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_6
    const-string v4, "Error during grid migration"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v1}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    const/4 v0, 0x0

    return v0

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v14

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11, v1}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    throw v0
.end method

.method public static needsToMigrate(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z
    .locals 1

    .line 1
    new-instance v0, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-static {v0, p0}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->needsToMigrate(Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)Z

    move-result p0

    return p0
.end method

.method private static needsToMigrate(Lcom/android/launcher3/model/DeviceGridState;Lcom/android/launcher3/model/DeviceGridState;)Z
    .locals 3

    .line 2
    invoke-virtual {p1, p0}, Lcom/android/launcher3/model/DeviceGridState;->isCompatible(Lcom/android/launcher3/model/DeviceGridState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Migration is needed. destDeviceState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", srcDeviceState: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridSizeMigrationUtil"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method private static solveGridPlacement(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;IIILjava/util/List;Z)V
    .locals 15

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    new-instance v3, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v3, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v5, Landroid/graphics/Point;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    invoke-direct {v5, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->d(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/util/Map;

    move-result-object v8

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    check-cast v8, Landroid/util/ArrayMap;

    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    invoke-virtual {v3, v9}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_1

    :cond_1
    move-object/from16 v8, p6

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;

    if-eqz p7, :cond_2

    iget v10, v9, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ge v10, v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz p7, :cond_3

    iget v10, v9, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-le v10, v0, :cond_3

    goto/16 :goto_8

    :cond_3
    iget v10, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-gt v10, v1, :cond_b

    iget v10, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-le v10, v2, :cond_4

    goto :goto_7

    :cond_4
    iget v10, v5, Landroid/graphics/Point;->y:I

    :goto_3
    iget v11, v4, Landroid/graphics/Point;->y:I

    if-ge v10, v11, :cond_9

    iget v11, v5, Landroid/graphics/Point;->x:I

    :goto_4
    iget v12, v4, Landroid/graphics/Point;->x:I

    if-ge v11, v12, :cond_8

    iget v12, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v13, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v3, v11, v10, v12, v13}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v12

    iget v13, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v14, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    invoke-virtual {v3, v11, v10, v13, v14}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v13

    if-eqz v13, :cond_5

    iget v14, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v14, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v14, v9, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iput v14, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    :cond_5
    if-nez v12, :cond_7

    if-eqz v13, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    iput v0, v9, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v11, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v10, v9, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    invoke-virtual {v3, v9}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget v12, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    add-int/2addr v11, v12

    invoke-virtual {v5, v11, v10}, Landroid/graphics/Point;->set(II)V

    move v10, v6

    goto :goto_6

    :cond_8
    iget v11, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v7, v11}, Landroid/graphics/Point;->set(II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_9
    move v10, v7

    :goto_6
    if-eqz v10, :cond_a

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->c(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;->c(Lcom/android/launcher3/model/GridSizeMigrationUtil$DbReader;)Ljava/lang/String;

    move-result-object v11

    move-object v12, p0

    invoke-static {p0, v9, v10, v11}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->insertEntryInDb(Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/model/GridSizeMigrationUtil$DbEntry;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_a
    move-object v12, p0

    goto :goto_2

    :cond_b
    :goto_7
    move-object v12, p0

    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_2

    :cond_c
    :goto_8
    return-void
.end method
