.class public final Lcom/android/launcher3/shortcuts/ShortcutRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mFailed:Z

.field private final mQuery:Landroid/content/pm/LauncherApps$ShortcutQuery;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mQuery:Landroid/content/pm/LauncherApps$ShortcutQuery;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mFailed:Z

    iput-object p1, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method


# virtual methods
.method public final forPackage(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mQuery:Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {p0, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    :cond_0
    return-void
.end method

.method public final query(I)Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mFailed:Z

    if-eqz v0, :cond_0

    sget-object p0, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->DEFAULT:Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mQuery:Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    :try_start_0
    new-instance p1, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    iget-object v1, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mContext:Landroid/content/Context;

    const-class v2, Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    iget-object p0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, p0}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    const-string p1, "ShortcutRequest"

    const-string v0, "Failed to query for shortcuts"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p0, Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;->DEFAULT:Lcom/android/launcher3/shortcuts/ShortcutRequest$QueryResult;

    return-object p0
.end method

.method public final withContainer(Landroid/content/ComponentName;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mFailed:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/shortcuts/ShortcutRequest;->mQuery:Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {p0, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    :goto_0
    return-void
.end method
