.class public Lcom/android/systemui/shared/plugins/PluginInstance;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PluginInstance"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mComponentName:Landroid/content/ComponentName;

.field private mIsDebug:Z

.field private final mListener:Ln1/k;

.field private mPlugin:Ln1/j;

.field private mPluginContext:Landroid/content/Context;

.field private final mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln1/k;Landroid/content/ComponentName;Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;Ln1/j;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mIsDebug:Z

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mAppContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mListener:Ln1/k;

    iput-object p3, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mComponentName:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    iput-object p5, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "PluginInstance["

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]@"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mTag:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    if-eqz p1, :cond_0

    invoke-virtual {p4}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->createPluginContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mIsDebug:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mTag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public containsPluginClass(Ljava/lang/Class;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getIsDebug()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mIsDebug:Z

    return p0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPlugin()Ln1/j;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    return-object p0
.end method

.method public getPluginContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    return-object p0
.end method

.method public getVersionInfo()Lcom/android/systemui/shared/plugins/VersionInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->checkVersion(Ln1/j;)Lcom/android/systemui/shared/plugins/VersionInfo;

    move-result-object p0

    return-object p0
.end method

.method public isLoaded()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginInstance;->getPlugin()Ln1/j;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadPlugin()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    if-eqz v0, :cond_0

    const-string v0, "Load request when already loaded"

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/plugins/PluginInstance;->logDebug(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    invoke-virtual {v0}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->createPlugin()Ln1/j;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    invoke-virtual {v0}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->createPluginContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Loaded plugin; running callbacks"

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/plugins/PluginInstance;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->checkVersion(Ln1/j;)Lcom/android/systemui/shared/plugins/VersionInfo;

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    instance-of v1, v0, Lcom/android/systemui/plugins/PluginFragment;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Ln1/j;->k(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mListener:Ln1/k;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Ln1/k;->l(Ln1/j;Landroid/content/Context;)V

    return-void

    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mTag:Ljava/lang/String;

    const-string v0, "Requested load, but failed"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mListener:Ln1/k;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    if-nez v0, :cond_0

    const-string v0, "onCreate auto-load"

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/plugins/PluginInstance;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginInstance;->loadPlugin()V

    return-void

    :cond_0
    const-string v0, "onCreate: load callbacks"

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/plugins/PluginInstance;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginFactory:Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/plugins/PluginInstance$PluginFactory;->checkVersion(Ln1/j;)Lcom/android/systemui/shared/plugins/VersionInfo;

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    instance-of v1, v0, Lcom/android/systemui/plugins/PluginFragment;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Ln1/j;->k(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mListener:Ln1/k;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    invoke-interface {v0, v1, p0}, Ln1/k;->l(Ln1/j;Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    const-string v0, "onDestroy"

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/plugins/PluginInstance;->logDebug(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/shared/plugins/PluginInstance;->unloadPlugin()V

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mListener:Ln1/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public setIsDebug(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mIsDebug:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public unloadPlugin()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    if-nez v0, :cond_0

    const-string v0, "Unload request when already unloaded"

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/plugins/PluginInstance;->logDebug(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Unloading plugin, running callbacks"

    invoke-direct {p0, v0}, Lcom/android/systemui/shared/plugins/PluginInstance;->logDebug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mListener:Ln1/k;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    invoke-interface {v0, v1}, Ln1/k;->o(Ln1/j;)V

    iget-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    instance-of v1, v0, Lcom/android/systemui/plugins/PluginFragment;

    if-nez v1, :cond_1

    invoke-interface {v0}, Ln1/j;->onDestroy()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPlugin:Ln1/j;

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/PluginInstance;->mPluginContext:Landroid/content/Context;

    return-void
.end method
