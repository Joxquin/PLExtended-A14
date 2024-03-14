.class public Lcom/android/quickstep/util/DesktopTask;
.super Lcom/android/quickstep/util/GroupTask;
.source "SourceFile"


# instance fields
.field public final tasks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v1, v2}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;I)V

    iput-object p1, p0, Lcom/android/quickstep/util/DesktopTask;->tasks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public containsTask(I)Z
    .locals 1

    iget-object p0, p0, Lcom/android/quickstep/util/DesktopTask;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public copy()Lcom/android/quickstep/util/DesktopTask;
    .locals 1

    .line 2
    new-instance v0, Lcom/android/quickstep/util/DesktopTask;

    iget-object p0, p0, Lcom/android/quickstep/util/DesktopTask;->tasks:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/DesktopTask;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public bridge synthetic copy()Lcom/android/quickstep/util/GroupTask;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/quickstep/util/DesktopTask;->copy()Lcom/android/quickstep/util/DesktopTask;

    move-result-object p0

    return-object p0
.end method

.method public hasMultipleTasks()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
