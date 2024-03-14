.class public final synthetic LW1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW1/c;->d:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object p0, p0, LW1/c;->d:Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->q:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "omni.AWARE"

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/PackageManager$Property;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->i:Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    monitor-enter v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    const-string v2, "Updated isAware"

    iget-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->i:Z

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;Z)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->i:Z

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    monitor-enter v0

    :try_start_3
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistStateManagerGoogle;->k:Lcom/android/launcher3/util/EventLogArray;

    const-string v1, "Name not found, isAware set to false"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/EventLogArray;->addLog(Ljava/lang/String;)V

    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
