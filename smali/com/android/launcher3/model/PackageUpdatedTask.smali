.class public final Lcom/android/launcher3/model/PackageUpdatedTask;
.super Lcom/android/launcher3/model/BaseModelUpdateTask;
.source "SourceFile"


# instance fields
.field private final mOp:I

.field private final mPackages:[Ljava/lang/String;

.field private final mUser:Landroid/os/UserHandle;


# direct methods
.method public varargs constructor <init>(ILandroid/os/UserHandle;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;-><init>()V

    iput p1, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    iput-object p2, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    iput-object p3, p0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    return-void
.end method

.method public static m(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLandroid/content/Context;Lcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_12

    move-object v6, p1

    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v7

    const/4 v8, 0x3

    if-eqz v7, :cond_0

    iget v7, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    move-object/from16 v9, p2

    invoke-virtual {v9, v7}, Lcom/android/launcher3/util/IntSet;->add(I)V

    iget v7, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-ne v7, v8, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {v3, v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v7

    const/4 v9, 0x6

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-eqz v7, :cond_9

    if-eqz p3, :cond_9

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v12, "."

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v10

    iget v12, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v12, v9, :cond_2

    new-instance v12, Lcom/android/launcher3/shortcuts/ShortcutRequest;

    iget-object v13, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v12, v1, v13}, Lcom/android/launcher3/shortcuts/ShortcutRequest;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v4, v13}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->forPackage(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v12, v11}, Lcom/android/launcher3/shortcuts/ShortcutRequest;->query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    move v4, v5

    move v7, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v3, v1, v4}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->updateFromDeepShortcutInfo(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V

    move v4, v10

    goto :goto_0

    :cond_2
    if-eqz v7, :cond_3

    const-class v7, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/LauncherApps;

    iget-object v12, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v12}, Landroid/content/pm/LauncherApps;->isActivityEnabled(Landroid/content/ComponentName;Landroid/os/UserHandle;)Z

    move-result v7

    :cond_3
    move v4, v5

    :goto_0
    if-nez v7, :cond_7

    invoke-virtual {v3, v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasStatusFlag(I)Z

    move-result v8

    if-eqz v8, :cond_7

    iget v7, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v7, v9, :cond_5

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    new-instance v7, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v7, v1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v7, v6, v1}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    iput-object v1, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iput v5, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    move v1, v10

    :goto_1
    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v1

    if-eqz v1, :cond_d

    iget v0, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    goto/16 :goto_8

    :cond_7
    if-nez v7, :cond_8

    iget v0, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Restored shortcut no longer valid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageUpdatedTask"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_8
    iput v5, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    goto :goto_3

    :cond_9
    if-eqz p3, :cond_c

    move-object/from16 v2, p6

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v2, v9, :cond_b

    :cond_a
    move v1, v5

    goto :goto_2

    :cond_b
    new-instance v2, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v2, v1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v6, v1}, Lcom/android/launcher3/util/PackageManagerHelper;->getAppLaunchIntent(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_a

    iput-object v1, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    iput v5, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->status:I

    move v1, v10

    :goto_2
    if-eqz v1, :cond_c

    :goto_3
    move v4, v10

    goto :goto_4

    :cond_c
    move v4, v5

    :cond_d
    :goto_4
    if-eqz p3, :cond_10

    move-object/from16 v1, p7

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_5

    :cond_e
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-static {v1}, Lcom/android/launcher3/util/PackageManagerHelper;->getLoadingProgress(Landroid/content/pm/LauncherActivityInfo;)I

    move-result v1

    goto :goto_6

    :cond_f
    :goto_5
    const/16 v1, 0x64

    :goto_6
    invoke-virtual {v3, v1, v11}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->setProgressLevel(II)V

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v1, :cond_10

    invoke-virtual/range {p11 .. p11}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v1

    move-object/from16 v2, p8

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/icons/IconCache;->getTitleAndIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)V

    move v4, v10

    :cond_10
    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    move-object/from16 v2, p9

    invoke-interface {v2, v1}, Lcom/android/launcher3/util/FlagOp;->apply(I)I

    move-result v2

    iput v2, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    if-eq v2, v1, :cond_11

    move v5, v10

    :cond_11
    move v1, v5

    move v5, v4

    goto :goto_7

    :cond_12
    move v1, v5

    :goto_7
    if-nez v5, :cond_13

    if-eqz v1, :cond_14

    :cond_13
    invoke-virtual/range {p10 .. p11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    if-eqz v5, :cond_15

    iget v1, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    invoke-virtual {p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_15
    :goto_8
    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/model/BgDataModel;Lcom/android/launcher3/model/AllAppsList;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v13, p2

    move-object/from16 v1, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v10

    iget-object v15, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mPackages:[Ljava/lang/String;

    array-length v12, v15

    new-instance v11, Ljava/util/HashSet;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v3, 0x7

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    sget v3, Lcom/android/launcher3/util/ItemInfoMatcher;->a:I

    new-instance v3, Lcom/android/launcher3/util/n;

    invoke-direct {v3, v9, v2}, Lcom/android/launcher3/util/n;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    sget v3, Lcom/android/launcher3/util/ItemInfoMatcher;->a:I

    new-instance v3, Lcom/android/launcher3/util/o;

    invoke-direct {v3, v2, v11, v8}, Lcom/android/launcher3/util/o;-><init>(Landroid/os/UserHandle;Ljava/util/Set;I)V

    :goto_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget v2, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v4, 0x2

    packed-switch v2, :pswitch_data_0

    move-object/from16 v20, v7

    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/i;

    goto/16 :goto_a

    :pswitch_0
    new-instance v2, Lcom/android/launcher3/model/UserManagerState;

    invoke-direct {v2}, Lcom/android/launcher3/model/UserManagerState;-><init>()V

    sget-object v9, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v9, v14}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/pm/UserCache;

    const-class v8, Landroid/os/UserManager;

    invoke-virtual {v14, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    invoke-virtual {v2, v9, v8}, Lcom/android/launcher3/model/UserManagerState;->init(Lcom/android/launcher3/pm/UserCache;Landroid/os/UserManager;)V

    sget-object v8, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/i;

    iget-object v9, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v9}, Lcom/android/launcher3/model/UserManagerState;->isUserQuiet(Landroid/os/UserHandle;)Z

    move-result v9

    const/16 v5, 0x8

    invoke-interface {v8, v5, v9}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/android/launcher3/model/AllAppsList;->updateDisabledFlags(Ljava/util/function/Predicate;Lcom/android/launcher3/util/FlagOp;)V

    invoke-virtual {v2}, Lcom/android/launcher3/model/UserManagerState;->isAnyProfileQuietModeEnabled()Z

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/android/launcher3/model/AllAppsList;->setFlags(IZ)V

    move-object v9, v5

    :goto_1
    move-object/from16 v20, v7

    goto/16 :goto_b

    :pswitch_1
    sget-object v5, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/i;

    const/4 v8, 0x5

    if-ne v2, v8, :cond_1

    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    const/4 v8, 0x4

    invoke-interface {v5, v8, v2}, Lcom/android/launcher3/util/FlagOp;->setFlag(IZ)Lcom/android/launcher3/util/FlagOp;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/model/AllAppsList;->updateDisabledFlags(Ljava/util/function/Predicate;Lcom/android/launcher3/util/FlagOp;)V

    move-object v9, v2

    goto :goto_1

    :pswitch_2
    const/4 v8, 0x4

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v12, :cond_2

    const-string v5, "PackageUpdatedTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v8, "Removing app icon"

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v8, v15, v2

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v15, v2

    iget-object v8, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v10, v5, v8}, Lcom/android/launcher3/icons/cache/BaseIconCache;->removeIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x4

    goto :goto_3

    :cond_2
    :pswitch_3
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v12, :cond_3

    aget-object v5, v15, v2

    iget-object v8, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v8}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/i;

    invoke-interface {v1, v4}, Lcom/android/launcher3/util/FlagOp;->addFlag(I)Lcom/android/launcher3/util/j;

    move-result-object v1

    move-object/from16 v20, v7

    goto/16 :goto_a

    :pswitch_4
    new-instance v2, Lcom/android/launcher3/model/F0;

    invoke-direct {v2, v7}, Lcom/android/launcher3/model/F0;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/AllAppsList;->trackRemoves(Lcom/android/launcher3/model/F0;)Lcom/android/launcher3/model/a;

    move-result-object v2

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v12, :cond_5

    :try_start_0
    aget-object v8, v15, v5

    iget-object v9, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v10, v8, v9}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    aget-object v8, v15, v5

    iget-object v9, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v14, v9, v8}, Lcom/android/launcher3/model/AllAppsList;->updatePackage(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v8, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v8}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/Launcher;

    if-eqz v8, :cond_4

    new-instance v9, Lcom/android/launcher3/util/PackageUserKey;

    aget-object v4, v15, v5

    move-object/from16 v20, v7

    iget-object v7, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v9, v4, v7}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v8, v9}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_4
    move-object/from16 v20, v7

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v7, v20

    const/4 v4, 0x2

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v2}, Lcom/android/launcher3/model/a;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v1

    :cond_5
    move-object/from16 v20, v7

    invoke-virtual {v2}, Lcom/android/launcher3/model/a;->close()V

    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/i;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/j;

    move-result-object v1

    goto :goto_a

    :pswitch_5
    move-object/from16 v20, v7

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v12, :cond_8

    aget-object v4, v15, v2

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v5}, Lcom/android/launcher3/icons/IconCache;->updateIconsForPkg(Ljava/lang/String;Landroid/os/UserHandle;)V

    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->PROMISE_APPS_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_6

    aget-object v4, v15, v2

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/model/AllAppsList;->removePackage(Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_6
    aget-object v4, v15, v2

    iget-object v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v7, Landroid/content/pm/LauncherApps;

    invoke-virtual {v14, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/LauncherApps;

    invoke-virtual {v7, v4, v5}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/LauncherActivityInfo;

    move-object/from16 v21, v8

    new-instance v8, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {v8, v14, v9, v5}, Lcom/android/launcher3/model/data/AppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    move-object/from16 v22, v5

    const/4 v5, 0x1

    invoke-virtual {v1, v8, v9, v5}, Lcom/android/launcher3/model/AllAppsList;->add(Lcom/android/launcher3/model/data/AppInfo;Landroid/content/pm/LauncherActivityInfo;Z)V

    move-object/from16 v8, v21

    move-object/from16 v5, v22

    goto :goto_9

    :cond_7
    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_8
    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/i;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/launcher3/util/FlagOp;->removeFlag(I)Lcom/android/launcher3/util/j;

    move-result-object v1

    :goto_a
    move-object v9, v1

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindApplicationsIfNeeded()V

    new-instance v8, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v8}, Lcom/android/launcher3/util/IntSet;-><init>()V

    new-instance v7, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v7}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iget v1, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_a

    sget-object v1, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/i;

    if-eq v9, v1, :cond_9

    goto :goto_c

    :cond_9
    move-object v2, v0

    move-object/from16 v24, v7

    move/from16 v25, v12

    move-object/from16 v17, v14

    move-object/from16 v19, v15

    move-object/from16 p3, v20

    const/4 v3, 0x2

    const/4 v5, 0x3

    goto/16 :goto_12

    :cond_a
    :goto_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget v5, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-eq v5, v4, :cond_c

    const/4 v4, 0x2

    if-ne v5, v4, :cond_b

    goto :goto_d

    :cond_b
    const/4 v5, 0x0

    goto :goto_e

    :cond_c
    const/4 v4, 0x2

    :goto_d
    const/4 v5, 0x1

    :goto_e
    monitor-enter p2

    move-object/from16 v19, v15

    :try_start_2
    iget-object v15, v0, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    new-instance v0, Lcom/android/launcher3/model/G0;

    move-object/from16 v23, v1

    move-object v1, v0

    move-object/from16 v21, v2

    move-object/from16 v2, p0

    const/16 v17, 0x1

    move-object v4, v7

    const/16 v18, 0x4

    move-object/from16 v22, v6

    move-object v6, v14

    move-object/from16 v24, v7

    move-object/from16 p3, v20

    move-object v7, v8

    move-object/from16 v20, v8

    move-object/from16 v8, p3

    move-object/from16 v16, v9

    move-object/from16 v9, v22

    move-object/from16 v17, v14

    move-object v14, v11

    move-object/from16 v11, v16

    move/from16 v25, v12

    move-object/from16 v12, v21

    invoke-direct/range {v1 .. v12}, Lcom/android/launcher3/model/G0;-><init>(Lcom/android/launcher3/model/PackageUpdatedTask;Ljava/util/function/Predicate;Lcom/android/launcher3/util/IntSet;ZLandroid/content/Context;Lcom/android/launcher3/util/IntSet;Ljava/util/HashSet;Ljava/util/HashMap;Lcom/android/launcher3/icons/IconCache;Lcom/android/launcher3/util/FlagOp;Ljava/util/ArrayList;)V

    invoke-virtual {v13, v15, v0}, Lcom/android/launcher3/model/BgDataModel;->forAllWorkspaceItemInfos(Landroid/os/UserHandle;Ljava/util/function/Consumer;)V

    iget-object v0, v13, Lcom/android/launcher3/model/BgDataModel;->appWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    iget-object v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget v4, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v4, v4, -0xb

    or-int/lit8 v4, v4, 0x4

    iput v4, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->restoreStatus:I

    move-object/from16 v4, v23

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_10

    :cond_d
    move-object/from16 v4, v23

    goto :goto_10

    :cond_e
    move-object/from16 v4, v23

    const/4 v3, 0x2

    :goto_10
    move-object/from16 v23, v4

    goto :goto_f

    :cond_f
    const/4 v3, 0x2

    move-object/from16 v2, p0

    move-object/from16 v4, v23

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWorkspaceItems(Ljava/util/List;)V

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    sget v0, Lcom/android/launcher3/util/ItemInfoMatcher;->a:I

    new-instance v0, Lcom/android/launcher3/util/n;

    move-object/from16 v1, v20

    const/4 v5, 0x3

    invoke-direct {v0, v5, v1}, Lcom/android/launcher3/util/n;-><init>(ILjava/lang/Object;)V

    const-string v1, "removed because the target component is invalid"

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    goto :goto_11

    :cond_10
    const/4 v5, 0x3

    :goto_11
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    new-instance v0, Lcom/android/launcher3/model/H0;

    invoke-direct {v0, v4}, Lcom/android/launcher3/model/H0;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v2, v0}, Lcom/android/launcher3/model/BaseModelUpdateTask;->scheduleCallbackTask(Lcom/android/launcher3/LauncherModel$CallbackTask;)V

    :cond_11
    :goto_12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget v1, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-ne v1, v5, :cond_12

    move-object/from16 v4, v19

    invoke-static {v0, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_14

    :cond_12
    move-object/from16 v4, v19

    if-ne v1, v3, :cond_14

    const-class v1, Landroid/content/pm/LauncherApps;

    move-object/from16 v3, v17

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    move/from16 v6, v25

    const/4 v9, 0x0

    :goto_13
    if-ge v9, v6, :cond_15

    aget-object v7, v4, v9

    iget-object v8, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/LauncherApps;->isPackageEnabled(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v7

    if-nez v7, :cond_13

    aget-object v7, v4, v9

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_13

    :cond_14
    :goto_14
    move-object/from16 v3, v17

    move/from16 v6, v25

    :cond_15
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-virtual/range {p3 .. p3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_15

    :cond_16
    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_16

    :cond_17
    :goto_15
    iget-object v1, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    sget v7, Lcom/android/launcher3/util/ItemInfoMatcher;->a:I

    new-instance v7, Lcom/android/launcher3/util/o;

    const/4 v8, 0x1

    invoke-direct {v7, v1, v0, v8}, Lcom/android/launcher3/util/o;-><init>(Landroid/os/UserHandle;Ljava/util/Set;I)V

    new-instance v9, Lcom/android/launcher3/util/o;

    move-object/from16 v10, p3

    const/4 v11, 0x0

    invoke-direct {v9, v1, v10, v11}, Lcom/android/launcher3/util/o;-><init>(Landroid/os/UserHandle;Ljava/util/Set;I)V

    invoke-interface {v7, v9}, Ljava/util/function/Predicate;->or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    new-instance v7, Lcom/android/launcher3/util/n;

    move-object/from16 v9, v24

    invoke-direct {v7, v5, v9}, Lcom/android/launcher3/util/n;-><init>(ILjava/lang/Object;)V

    invoke-interface {v7}, Ljava/util/function/Predicate;->negate()Ljava/util/function/Predicate;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "removed because the corresponding package or component is removed. mOp="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " removedPackages="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    const-string v9, ","

    const-string v12, "["

    const-string v14, "]"

    invoke-static {v9, v12, v14}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " removedComponents="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/util/HashSet;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/android/launcher3/model/I0;

    invoke-direct {v9}, Lcom/android/launcher3/model/I0;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v9, Lcom/android/launcher3/model/J0;

    invoke-direct {v9}, Lcom/android/launcher3/model/J0;-><init>()V

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    const-string v9, ","

    const-string v10, "["

    const-string v12, "]"

    invoke-static {v9, v10, v12}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Lcom/android/launcher3/model/BaseModelUpdateTask;->deleteAndBindComponentsRemoved(Ljava/util/function/Predicate;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue;

    iget-object v3, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->removeFromInstallQueue(Landroid/os/UserHandle;Ljava/util/HashSet;)V

    :goto_16
    iget v0, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mOp:I

    if-ne v0, v8, :cond_19

    move v9, v11

    :goto_17
    if-ge v9, v6, :cond_18

    iget-object v0, v13, Lcom/android/launcher3/model/BgDataModel;->widgetsModel:Lcom/android/launcher3/model/WidgetsModel;

    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    aget-object v3, v4, v9

    iget-object v5, v2, Lcom/android/launcher3/model/PackageUpdatedTask;->mUser:Landroid/os/UserHandle;

    invoke-direct {v1, v3, v5}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    move-object/from16 v3, p1

    invoke-virtual {v0, v3, v1}, Lcom/android/launcher3/model/WidgetsModel;->update(Lcom/android/launcher3/LauncherAppState;Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;

    add-int/lit8 v9, v9, 0x1

    goto :goto_17

    :cond_18
    invoke-virtual {v2, v13}, Lcom/android/launcher3/model/BaseModelUpdateTask;->bindUpdatedWidgets(Lcom/android/launcher3/model/BgDataModel;)V

    :cond_19
    return-void

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
