.class public final synthetic Lcom/android/launcher3/model/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/util/IntSet;

.field public final synthetic b:Lcom/android/launcher3/util/RunnableList;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/v;->a:Lcom/android/launcher3/util/IntSet;

    iput-object p2, p0, Lcom/android/launcher3/model/v;->b:Lcom/android/launcher3/util/RunnableList;

    iput p3, p0, Lcom/android/launcher3/model/v;->c:I

    iput-boolean p4, p0, Lcom/android/launcher3/model/v;->d:Z

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->setThreadPriority(I)V

    iget v0, p0, Lcom/android/launcher3/model/v;->c:I

    iget-boolean v1, p0, Lcom/android/launcher3/model/v;->d:Z

    iget-object v2, p0, Lcom/android/launcher3/model/v;->a:Lcom/android/launcher3/util/IntSet;

    iget-object p0, p0, Lcom/android/launcher3/model/v;->b:Lcom/android/launcher3/util/RunnableList;

    invoke-interface {p1, v2, p0, v0, v1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onInitialBindComplete(Lcom/android/launcher3/util/IntSet;Lcom/android/launcher3/util/RunnableList;IZ)V

    return-void
.end method
