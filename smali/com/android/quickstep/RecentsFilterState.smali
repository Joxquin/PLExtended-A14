.class public Lcom/android/quickstep/RecentsFilterState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_FILTER:Ljava/util/function/Predicate;

.field public static final MIN_FILTERING_TASK_COUNT:I = 0x2


# instance fields
.field private mInstanceCountMap:Ljava/util/Map;

.field private mOnFilterUpdatedListener:Ljava/lang/Runnable;

.field private mPackageNameToFilter:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/L0;

    invoke-direct {v0}, Lcom/android/quickstep/L0;-><init>()V

    sput-object v0, Lcom/android/quickstep/RecentsFilterState;->DEFAULT_FILTER:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/RecentsFilterState;->mPackageNameToFilter:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/quickstep/RecentsFilterState;->mOnFilterUpdatedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/android/quickstep/util/GroupTask;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsFilterState;->lambda$getFilter$1(Ljava/lang/String;Lcom/android/quickstep/util/GroupTask;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/android/quickstep/util/GroupTask;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/quickstep/RecentsFilterState;->lambda$static$0(Lcom/android/quickstep/util/GroupTask;)Z

    move-result p0

    return p0
.end method

.method public static getFilter(Ljava/lang/String;)Ljava/util/function/Predicate;
    .locals 1

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/quickstep/RecentsFilterState;->DEFAULT_FILTER:Ljava/util/function/Predicate;

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/quickstep/K0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/K0;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstanceCountMap(Ljava/util/List;)Ljava/util/Map;
    .locals 3

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/util/GroupTask;

    .line 4
    iget-object v2, v1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 5
    iget-object v1, v1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_1
    invoke-static {v0, v2}, Lcom/android/quickstep/RecentsFilterState;->incrementOrAddIfNotExists(Ljava/util/Map;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v0, v1}, Lcom/android/quickstep/RecentsFilterState;->incrementOrAddIfNotExists(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static incrementOrAddIfNotExists(Ljava/util/Map;Ljava/lang/String;)V
    .locals 1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$getFilter$1(Ljava/lang/String;Lcom/android/quickstep/util/GroupTask;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$static$0(Lcom/android/quickstep/util/GroupTask;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getInstanceCountMap()Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/quickstep/RecentsFilterState;->mInstanceCountMap:Ljava/util/Map;

    return-object p0
.end method

.method public getPackageNameToFilter()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsFilterState;->mPackageNameToFilter:Ljava/lang/String;

    return-object p0
.end method

.method public isFiltered()Z
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/RecentsFilterState;->mPackageNameToFilter:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setFilterBy(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/RecentsFilterState;->mPackageNameToFilter:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/quickstep/RecentsFilterState;->mPackageNameToFilter:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/quickstep/RecentsFilterState;->mOnFilterUpdatedListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public setOnFilterUpdatedListener(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/RecentsFilterState;->mOnFilterUpdatedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public shouldShowFilterUI(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsFilterState;->getInstanceCountMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsFilterState;->isFiltered()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateInstanceCountMap(Ljava/util/List;)V
    .locals 0

    invoke-static {p1}, Lcom/android/quickstep/RecentsFilterState;->getInstanceCountMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/RecentsFilterState;->mInstanceCountMap:Ljava/util/Map;

    return-void
.end method
