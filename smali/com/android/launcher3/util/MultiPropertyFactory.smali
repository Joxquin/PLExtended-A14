.class public Lcom/android/launcher3/util/MultiPropertyFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;


# instance fields
.field private mAggregationOfOthers:F

.field private final mAggregator:Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

.field private mLastIndexSet:I

.field private final mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

.field private final mProperty:Landroid/util/FloatProperty;

.field protected final mTarget:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/MultiPropertyFactory$1;

    invoke-direct {v0}, Lcom/android/launcher3/util/MultiPropertyFactory$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/MultiPropertyFactory;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;ILcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;F)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mAggregationOfOthers:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mLastIndexSet:I

    .line 5
    iput-object p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mTarget:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperty:Landroid/util/FloatProperty;

    .line 7
    iput-object p4, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mAggregator:Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

    .line 8
    new-array p1, p3, [Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    iput-object p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p3, :cond_0

    .line 9
    iget-object p2, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    new-instance p4, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-direct {p4, p0, p1, p5}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;-><init>(Lcom/android/launcher3/util/MultiPropertyFactory;IF)V

    aput-object p4, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/util/MultiPropertyFactory;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mAggregationOfOthers:F

    return p0
.end method

.method public static bridge synthetic b(Lcom/android/launcher3/util/MultiPropertyFactory;)Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mAggregator:Lcom/android/launcher3/util/MultiPropertyFactory$FloatBiFunction;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/android/launcher3/util/MultiPropertyFactory;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mLastIndexSet:I

    return p0
.end method

.method public static bridge synthetic d(Lcom/android/launcher3/util/MultiPropertyFactory;)[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/android/launcher3/util/MultiPropertyFactory;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mAggregationOfOthers:F

    return-void
.end method

.method public static bridge synthetic f(Lcom/android/launcher3/util/MultiPropertyFactory;I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mLastIndexSet:I

    return-void
.end method


# virtual methods
.method public apply(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mTarget:Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperty:Landroid/util/FloatProperty;

    invoke-virtual {p0, v0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public final varargs dump(Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    :goto_0
    array-length v0, p4

    if-ge p3, v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    array-length v1, v0

    if-lt p3, v1, :cond_0

    invoke-static {p1}, Lt/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p4, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " given for alpha index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " however there are only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " alpha channels."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    invoke-static {p1}, Lt/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p4, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;->getValue()F

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final get(I)Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/MultiPropertyFactory;->mProperties:[Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
