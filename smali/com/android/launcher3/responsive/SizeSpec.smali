.class public final Lcom/android/launcher3/responsive/SizeSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final fixedSize:F

.field private final matchWorkspace:Z

.field private final maxSize:I

.field private final ofAvailableSpace:F

.field private final ofRemainderSpace:F


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7fffffff

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/responsive/SizeSpec;-><init>(FFFZI)V

    return-void
.end method

.method public constructor <init>(FFFZI)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    .line 4
    iput p2, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    .line 5
    iput p3, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    .line 6
    iput-boolean p4, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    .line 7
    iput p5, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/responsive/SizeSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/launcher3/responsive/SizeSpec;

    iget v1, p1, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    iget v3, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    invoke-static {v3, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    iget v3, p1, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    iget v3, p1, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    iget-boolean v3, p1, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget p0, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    iget p1, p1, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getCalculatedValue(II)I
    .locals 3

    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    invoke-static {v0}, Ln3/a;->a(F)I

    move-result p2

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    cmpl-float v0, p2, v1

    if-lez v0, :cond_2

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-static {p2}, Ln3/a;->a(F)I

    move-result p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iget p0, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    if-le p2, p0, :cond_3

    move p2, p0

    :cond_3
    return p2
.end method

.method public final getMatchWorkspace()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    return p0
.end method

.method public final getRemainderSpaceValue(II)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_0

    int-to-float p1, p1

    mul-float/2addr v1, p1

    invoke-static {v1}, Ln3/a;->a(F)I

    move-result p2

    :cond_0
    iget p0, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    if-le p2, p0, :cond_1

    move p2, p0

    :cond_1
    return p2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final isValid()Z
    .locals 10

    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    iget-boolean v3, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    iget v4, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    iget v5, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    const-string v6, "SizeSpec"

    const/4 v7, 0x0

    if-gez v2, :cond_0

    cmpg-float v2, v5, v1

    if-gtz v2, :cond_0

    cmpg-float v2, v4, v1

    if-gtz v2, :cond_0

    if-nez v3, :cond_0

    const-string p0, "SizeSpec#isValid - all attributes are empty"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_0
    cmpl-float v2, v0, v1

    const/4 v8, 0x1

    if-lez v2, :cond_1

    move v2, v8

    goto :goto_0

    :cond_1
    move v2, v7

    :goto_0
    cmpl-float v9, v5, v1

    if-lez v9, :cond_2

    move v9, v8

    goto :goto_1

    :cond_2
    move v9, v7

    :goto_1
    add-int/2addr v2, v9

    cmpl-float v9, v4, v1

    if-lez v9, :cond_3

    move v9, v8

    goto :goto_2

    :cond_3
    move v9, v7

    :goto_2
    add-int/2addr v2, v9

    add-int/2addr v2, v3

    if-le v2, v8, :cond_4

    const-string p0, "SizeSpec#isValid - more than one attribute is filled"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_4
    cmpg-float v2, v1, v5

    const/high16 v3, 0x3f800000    # 1.0f

    if-gtz v2, :cond_5

    cmpg-float v2, v5, v3

    if-gtz v2, :cond_5

    move v2, v8

    goto :goto_3

    :cond_5
    move v2, v7

    :goto_3
    if-eqz v2, :cond_b

    cmpg-float v2, v1, v4

    if-gtz v2, :cond_6

    cmpg-float v2, v4, v3

    if-gtz v2, :cond_6

    move v2, v8

    goto :goto_4

    :cond_6
    move v2, v7

    :goto_4
    if-nez v2, :cond_7

    goto :goto_6

    :cond_7
    cmpg-float v2, v0, v1

    if-ltz v2, :cond_a

    iget p0, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    int-to-float v2, p0

    cmpg-float v2, v2, v1

    if-gez v2, :cond_8

    goto :goto_5

    :cond_8
    cmpl-float v1, v0, v1

    if-lez v1, :cond_9

    int-to-float p0, p0

    cmpl-float p0, v0, p0

    if-lez p0, :cond_9

    const-string p0, "SizeSpec#isValid - fixed size should be smaller than the max size."

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_9
    return v8

    :cond_a
    :goto_5
    const-string p0, "SizeSpec#isValid - values should be bigger or equal to zero."

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_b
    :goto_6
    const-string p0, "SizeSpec#isValid - values should be between 0 and 1"

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public final onlyFixedSize()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "SizeSpec"

    const-string v0, "SizeSpec#onlyFixedSize - only fixed size allowed for this tag"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SizeSpec(fixedSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/responsive/SizeSpec;->fixedSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ofAvailableSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofAvailableSpace:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", ofRemainderSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/responsive/SizeSpec;->ofRemainderSpace:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", matchWorkspace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/responsive/SizeSpec;->matchWorkspace:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/launcher3/responsive/SizeSpec;->maxSize:I

    const-string v1, ")"

    invoke-static {v0, p0, v1}, Lv/e;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
