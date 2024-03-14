.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/j1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/nexuslauncher/allapps/t1;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/t1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/j1;->a:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 4

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/j1;->a:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getNamespace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->g:Ljava/util/Set;

    invoke-static {p1, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->g:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object p1

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/o1;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/o1;-><init>(Landroid/provider/DeviceConfig$Properties;I)V

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/o1;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Lcom/google/android/apps/nexuslauncher/allapps/o1;-><init>(Landroid/provider/DeviceConfig$Properties;I)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/apps/nexuslauncher/allapps/s1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/t1;Lcom/google/android/apps/nexuslauncher/allapps/r1;Lcom/google/android/apps/nexuslauncher/allapps/r1;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/p1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/p1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/t1;Lcom/google/android/apps/nexuslauncher/allapps/s1;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
