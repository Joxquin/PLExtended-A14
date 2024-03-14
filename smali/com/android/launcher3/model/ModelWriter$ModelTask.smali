.class abstract Lcom/android/launcher3/model/ModelWriter$ModelTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mLoadId:I

.field final synthetic this$0:Lcom/android/launcher3/model/ModelWriter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/ModelWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$ModelTask;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/launcher3/model/ModelWriter;->h(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/model/BgDataModel;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/model/BgDataModel;->lastLoadId:I

    iput p1, p0, Lcom/android/launcher3/model/ModelWriter$ModelTask;->mLoadId:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/model/ModelWriter$ModelTask;->mLoadId:I

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$ModelTask;->this$0:Lcom/android/launcher3/model/ModelWriter;

    invoke-static {v1}, Lcom/android/launcher3/model/ModelWriter;->j(Lcom/android/launcher3/model/ModelWriter;)Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getLastLoadId()I

    move-result v1

    if-eq v0, v1, :cond_0

    const-string p0, "ModelWriter"

    const-string v0, "Model changed before the task could execute"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/model/ModelWriter$ModelTask;->runImpl()V

    return-void
.end method

.method public abstract runImpl()V
.end method
