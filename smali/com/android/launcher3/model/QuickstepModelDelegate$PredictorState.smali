.class final Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final containerId:I

.field private mLastTargets:Ljava/util/List;

.field public predictor:Landroid/app/prediction/AppPredictor;

.field public final storage:Lcom/android/launcher3/util/PersistedItemArray;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->containerId:I

    new-instance p1, Lcom/android/launcher3/util/PersistedItemArray;

    invoke-direct {p1, p2}, Lcom/android/launcher3/util/PersistedItemArray;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->storage:Lcom/android/launcher3/util/PersistedItemArray;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->mLastTargets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final setTargets(Ljava/util/List;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->mLastTargets:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;->mLastTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_0

    invoke-static {v2, p0}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance v1, Lcom/android/launcher3/model/Z0;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/model/Z0;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {p0, v1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
