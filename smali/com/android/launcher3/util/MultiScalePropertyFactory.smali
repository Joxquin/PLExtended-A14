.class public final Lcom/android/launcher3/util/MultiScalePropertyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mLastAggregatedValue:F

.field private mLastIndexSet:Ljava/lang/Integer;

.field private mMaxOfOthers:F

.field private mMinOfOthers:F

.field private mMultiplicationOfOthers:F

.field private final mName:Ljava/lang/String;

.field private final mProperties:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMinOfOthers:F

    iput v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMaxOfOthers:F

    iput v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMultiplicationOfOthers:F

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastAggregatedValue:F

    iput-object p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/MultiScalePropertyFactory;Ljava/lang/Integer;)Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;-><init>(Lcom/android/launcher3/util/MultiScalePropertyFactory;ILjava/lang/String;)V

    return-object v0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastAggregatedValue:F

    return p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/util/MultiScalePropertyFactory;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMaxOfOthers:F

    return p0
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMinOfOthers:F

    return p0
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMultiplicationOfOthers:F

    return p0
.end method

.method public static bridge synthetic g(Lcom/android/launcher3/util/MultiScalePropertyFactory;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic h(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastAggregatedValue:F

    return-void
.end method

.method public static bridge synthetic i(Lcom/android/launcher3/util/MultiScalePropertyFactory;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mLastIndexSet:Ljava/lang/Integer;

    return-void
.end method

.method public static bridge synthetic j(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMaxOfOthers:F

    return-void
.end method

.method public static bridge synthetic k(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMinOfOthers:F

    return-void
.end method

.method public static bridge synthetic l(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mMultiplicationOfOthers:F

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Integer;)Landroid/util/FloatProperty;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/v;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/v;-><init>(Lcom/android/launcher3/util/MultiScalePropertyFactory;Ljava/lang/Integer;)V

    iget-object p0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory;->mProperties:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/FloatProperty;

    return-object p0
.end method
