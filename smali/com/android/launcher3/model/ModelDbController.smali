.class public final Lcom/android/launcher3/model/ModelDbController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static a(Lcom/android/launcher3/model/ModelDbController;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1}, [Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherPrefs;->putSync([Lkotlin/Pair;)V

    return-void
.end method

.method private declared-synchronized createDbIfNotExists()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->createDatabaseHelper(Z)Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/launcher3/provider/RestoreDbTask;->restoreIfNeeded(Landroid/content/Context;Lcom/android/launcher3/model/ModelDbController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createWorkspaceLoaderFromAppRestriction(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/AutoInstallsLayout;
    .locals 11

    const-string v0, "Loading layout from "

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "launcher3.layout.provider.blob"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    const-string v5, "LauncherProvider"

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v0, Landroid/app/blob/BlobStoreManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/blob/BlobStoreManager;

    :try_start_0
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    const/4 v2, 0x3

    invoke-static {v3, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "launcher-layout"

    const-string v4, "ignore"

    const-wide/16 v7, 0x0

    invoke-static {v2, v3, v7, v8, v4}, Landroid/app/blob/BlobHandle;->createWithSha256([BLjava/lang/CharSequence;JLjava/lang/String;)Landroid/app/blob/BlobHandle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/blob/BlobStoreManager;->openBlob(Landroid/app/blob/BlobHandle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/android/launcher3/model/ModelDbController$1;

    invoke-direct {v0}, Lcom/android/launcher3/model/ModelDbController$1;-><init>()V

    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher3/model/ModelDbController;->getAutoInstallsLayoutFromIS(Ljava/io/InputStream;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$SourceResources;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Error getting layout from blob handle"

    invoke-static {v5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6

    :cond_0
    const-string v3, "launcher3.layout.provider"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v6

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v7

    if-nez v7, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "No provider found for authority "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v6

    :cond_2
    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    const-string v9, "content"

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "launcher_layout"

    invoke-virtual {v8, v9}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "version"

    const-string v10, "1"

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    iget v9, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "gridWidth"

    invoke-virtual {v8, v10, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    iget v9, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "gridHeight"

    invoke-virtual {v8, v10, v9}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numDatabaseHotseatIcons:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v9, "hotseatSize"

    invoke-virtual {v8, v9, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :try_start_5
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/AutoInstallsLayout$SourceResources;->wrap(Landroid/content/res/Resources;)Lcom/android/launcher3/AutoInstallsLayout$SourceResources;

    move-result-object v0

    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher3/model/ModelDbController;->getAutoInstallsLayoutFromIS(Ljava/io/InputStream;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$SourceResources;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_3

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_3
    return-object p0

    :catchall_2
    move-exception p0

    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p1

    :try_start_9
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error getting layout stream from: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v6
.end method

.method private getAutoInstallsLayoutFromIS(Ljava/io/InputStream;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/AutoInstallsLayout$SourceResources;)Lcom/android/launcher3/AutoInstallsLayout;
    .locals 9

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p1, v1}, Lcom/android/launcher3/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    new-instance v0, Lcom/android/launcher3/AutoInstallsLayout;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    new-instance v7, Lcom/android/launcher3/model/m0;

    invoke-direct {v7, p1}, Lcom/android/launcher3/model/m0;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    const-string v8, "workspace"

    move-object v2, v0

    move-object v4, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/AutoInstallsLayout;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/model/DatabaseHelper;Lcom/android/launcher3/AutoInstallsLayout$SourceResources;Ljava/util/function/Supplier;Ljava/lang/String;)V

    return-object v0
.end method

.method private getDefaultLayoutParser(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/DefaultLayoutParser;
    .locals 7

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    if-eqz v2, :cond_0

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->demoModeLayoutId:I

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->defaultLayoutId:I

    :goto_0
    move v5, v0

    new-instance v6, Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/model/DatabaseHelper;Landroid/content/res/Resources;I)V

    return-object v6
.end method

.method private getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    instance-of p0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    const/4 v0, 0x0

    const-string v1, "EMPTY_DATABASE_CREATED"

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, p0, v0}, Lcom/android/launcher3/LauncherPrefs;->nonRestorableItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "launcher.db"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "EMPTY_DATABASE_CREATED@"

    invoke-static {p0, p1}, Landroidx/constraintlayout/widget/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, p0, v0}, Lcom/android/launcher3/LauncherPrefs;->backedUpItem(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final clearEmptyDbFlag()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    filled-new-array {p0}, [Lcom/android/launcher3/Item;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherPrefs;->removeSync([Lcom/android/launcher3/Item;)V

    return-void
.end method

.method public final createDatabaseHelper(Z)Lcom/android/launcher3/model/DatabaseHelper;
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_1

    new-instance p1, LM0/b;

    invoke-direct {p1}, LM0/b;-><init>()V

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/android/launcher3/model/k0;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher3/model/k0;-><init>(Lcom/android/launcher3/model/ModelDbController;Ljava/lang/String;)V

    :goto_1
    new-instance v2, Lcom/android/launcher3/model/DatabaseHelper;

    new-instance v3, Lcom/android/launcher3/model/l0;

    invoke-direct {v3, p0}, Lcom/android/launcher3/model/l0;-><init>(Lcom/android/launcher3/model/ModelDbController;)V

    invoke-direct {v2, v0, v1, v3, p1}, Lcom/android/launcher3/model/DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/model/l0;Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "favorites"

    invoke-static {p1, v0}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "LauncherProvider"

    const-string v1, "Tables are missing after onCreate has been called. Trying to recreate"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/model/ModelDbController;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v3

    const/4 p0, 0x1

    invoke-static {p1, v3, v4, p0, v0}, Lcom/android/launcher3/LauncherSettings$Favorites;->addTableToDb(Landroid/database/sqlite/SQLiteDatabase;JZLjava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    const-string p1, "hotseat_restore_backup"

    invoke-static {p0, p1}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v2, Lcom/android/launcher3/model/DatabaseHelper;->mHotseatRestoreTableExists:Z

    invoke-virtual {v2}, Lcom/android/launcher3/model/DatabaseHelper;->initIds()V

    return-object v2
.end method

.method public final createEmptyDB()V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, p0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2}, [Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherPrefs;->putSync([Lkotlin/Pair;)V

    return-void
.end method

.method public final delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    iget-boolean p2, p0, Lcom/android/launcher3/model/DatabaseHelper;->mHotseatRestoreTableExists:Z

    if-eqz p2, :cond_0

    const-string p2, "hotseat_restore_backup"

    invoke-static {v0, p2}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/model/DatabaseHelper;->mHotseatRestoreTableExists:Z

    :cond_0
    return p1
.end method

.method public final deleteEmptyFolders()Lcom/android/launcher3/util/IntArray;
    .locals 7

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    :try_start_0
    new-instance v6, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    invoke-direct {v6, p0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "itemType = 2 AND _id NOT IN (SELECT container FROM favorites)"

    const/4 v0, 0x0

    const-string v2, "favorites"

    const-string v3, "_id"

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/provider/LauncherDbUtils;->queryIntArray(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "favorites"

    const-string v2, "_id"

    invoke-static {v2, v0}, Lcom/android/launcher3/Utilities;->createDbSelectionQuery(Ljava/lang/String;Lcom/android/launcher3/util/IntArray;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v6}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->commit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v6}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "LauncherProvider"

    invoke-virtual {p0}, Landroid/database/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {p0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    return-object p0
.end method

.method public final generateNewItemId()I
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/model/DatabaseHelper;->generateNewItemId()I

    move-result p0

    return p0
.end method

.method public final getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public final getNewScreenId()I
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/model/DatabaseHelper;->getNewScreenId()I

    move-result p0

    return p0
.end method

.method public final getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 1

    sget-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final insert(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "modified"

    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/launcher3/model/DatabaseHelper;->dbInsertAndCheck(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    iget-boolean p2, p0, Lcom/android/launcher3/model/DatabaseHelper;->mHotseatRestoreTableExists:Z

    if-eqz p2, :cond_0

    const-string p2, "hotseat_restore_backup"

    invoke-static {v0, p2}, Lcom/android/launcher3/provider/LauncherDbUtils;->dropTable(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/model/DatabaseHelper;->mHotseatRestoreTableExists:Z

    :cond_0
    return p1
.end method

.method public final declared-synchronized loadDefaultFavoritesIfNecessary()V
    .locals 8

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "LauncherProvider"

    const-string v1, "loading default workspace"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/model/DatabaseHelper;->newLauncherWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->createWorkspaceLoaderFromAppRestriction(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/AutoInstallsLayout;->get(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/model/DatabaseHelper;)Lcom/android/launcher3/AutoInstallsLayout;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.launcher3.action.PARTNER_CUSTOMIZATION"

    invoke-static {v2, v3}, Lcom/android/launcher3/util/Partner;->get(Landroid/content/pm/PackageManager;Ljava/lang/String;)Lcom/android/launcher3/util/Partner;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "partner_default_layout"

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/Partner;->getXmlResId(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    new-instance v7, Lcom/android/launcher3/DefaultLayoutParser;

    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/Partner;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v1, v7

    move-object v2, v3

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/DefaultLayoutParser;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/LauncherWidgetHolder;Lcom/android/launcher3/model/DatabaseHelper;Landroid/content/res/Resources;I)V

    move-object v1, v7

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->getDefaultLayoutParser(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v1

    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/model/DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/launcher3/model/DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    move-result v1

    if-gtz v1, :cond_4

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/model/DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/ModelDbController;->getDefaultLayoutParser(Lcom/android/launcher3/widget/LauncherWidgetHolder;)Lcom/android/launcher3/DefaultLayoutParser;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/model/DatabaseHelper;->loadFavorites(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/launcher3/AutoInstallsLayout;)I

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;

    move-result-object v2

    filled-new-array {v2}, [Lcom/android/launcher3/Item;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherPrefs;->removeSync([Lcom/android/launcher3/Item;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final newTransaction()Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    new-instance v0, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/launcher3/provider/LauncherDbUtils$SQLiteTransaction;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    return-object v0
.end method

.method public final query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object p0

    const-string p3, "db_name"

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Landroid/database/Cursor;->setExtras(Landroid/os/Bundle;)V

    return-object p1
.end method

.method public final refreshHotseatRestoreTable()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "hotseat_restore_backup"

    invoke-static {v0, v1}, Lcom/android/launcher3/provider/LauncherDbUtils;->tableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/model/DatabaseHelper;->mHotseatRestoreTableExists:Z

    return-void
.end method

.method public final removeGhostWidgets()V
    .locals 15

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "]"

    const-string v8, "["

    const-string v9, ","

    const-string v10, "DatabaseHelper"

    invoke-virtual {p0}, Lcom/android/launcher3/model/DatabaseHelper;->newLauncherWidgetHolder()Lcom/android/launcher3/widget/LauncherWidgetHolder;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->getAppWidgetIds()[I

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    const-string v2, "favorites"

    const-string v3, "appWidgetId"

    const-string v4, "itemType=4"

    const/4 v5, 0x0

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/provider/LauncherDbUtils;->queryIntArray(ZLandroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/IntSet;->wrap(Lcom/android/launcher3/util/IntArray;)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    array-length v1, v11

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    aget v12, v11, v3

    invoke-virtual {v0, v12}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v13, :cond_0

    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Deleting invalid widget "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->deleteAppWidgetId(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v4, v5

    :catch_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    :try_start_3
    invoke-static {v11}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/model/L;

    invoke-direct {v3, v2}, Lcom/android/launcher3/model/L;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v9, v8, v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->getArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->toArray()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v2, Lcom/android/launcher3/model/L;

    invoke-direct {v2, v5}, Lcom/android/launcher3/model/L;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v9, v8, v7}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "One or more widgets was removed. db_path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " allWidgetsIds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", validWidgetsIds="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "getAppWidgetIds not supported"

    invoke-static {v10, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    return-void

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherWidgetHolder;->destroy()V

    throw v0
.end method

.method public final tryMigrateDB()V
    .locals 6

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    iget-object v0, p0, Lcom/android/launcher3/model/ModelDbController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "LauncherProvider"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->needsToMigrate(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v3, Lcom/android/launcher3/model/DeviceGridState;

    invoke-direct {v3, v1}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {v3}, Lcom/android/launcher3/model/DeviceGridState;->getDbFile()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "migrateGridIfNeeded - target db is same as current: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    instance-of v5, v0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    if-eqz v5, :cond_3

    move-object v4, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/launcher3/model/ModelDbController;->createDatabaseHelper(Z)Lcom/android/launcher3/model/DatabaseHelper;

    move-result-object v4

    :goto_1
    iput-object v4, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    :try_start_0
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lcom/android/launcher3/model/GridSizeMigrationUtil;->migrateGridIfNeeded(Landroid/content/Context;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/model/DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    if-eq v1, v3, :cond_4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :cond_4
    :goto_2
    if-nez v4, :cond_5

    const-string v1, "Migration failed: resetting launcher database"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelDbController;->createEmptyDB()V

    invoke-static {v0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/model/ModelDbController;->getEmptyDbCreatedKey(Ljava/lang/String;)Lcom/android/launcher3/ConstantItem;

    move-result-object p0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lkotlin/Pair;

    invoke-direct {v3, p0, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3}, [Lkotlin/Pair;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherPrefs;->putSync([Lkotlin/Pair;)V

    new-instance p0, Lcom/android/launcher3/model/DeviceGridState;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/model/DeviceGridState;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/model/DeviceGridState;->writeToPrefs(Landroid/content/Context;)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    if-eq p0, v3, :cond_6

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :cond_6
    throw v0
.end method

.method public final update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/model/ModelDbController;->createDbIfNotExists()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "modified"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object p0, p0, Lcom/android/launcher3/model/ModelDbController;->mOpenHelper:Lcom/android/launcher3/model/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method
