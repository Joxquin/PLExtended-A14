.class public abstract Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private availableSpace:I

.field private cellSizePx:I

.field private cells:I

.field private endPaddingPx:I

.field private gutterPx:I

.field private spec:Lcom/android/launcher3/responsive/ResponsiveSpec;

.field private startPaddingPx:I


# direct methods
.method public constructor <init>(IILcom/android/launcher3/responsive/ResponsiveSpec;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->availableSpace:I

    .line 23
    iput p2, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cells:I

    .line 24
    iput-object p3, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->spec:Lcom/android/launcher3/responsive/ResponsiveSpec;

    .line 25
    invoke-virtual {p3}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getStartPadding()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/responsive/SizeSpec;->getCalculatedValue(II)I

    move-result v0

    .line 27
    iput v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->startPaddingPx:I

    .line 28
    invoke-virtual {p3}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getEndPadding()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/responsive/SizeSpec;->getCalculatedValue(II)I

    move-result v0

    .line 30
    iput v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->endPaddingPx:I

    .line 31
    invoke-virtual {p3}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getGutter()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    .line 32
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/responsive/SizeSpec;->getCalculatedValue(II)I

    move-result v0

    .line 33
    iput v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->gutterPx:I

    .line 34
    invoke-virtual {p3}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getCellSize()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/responsive/SizeSpec;->getCalculatedValue(II)I

    move-result v0

    .line 36
    iput v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cellSizePx:I

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->updateRemainderSpaces(IILcom/android/launcher3/responsive/ResponsiveSpec;)V

    return-void
.end method

.method public constructor <init>(IILcom/android/launcher3/responsive/ResponsiveSpec;Lcom/android/launcher3/responsive/CalculatedWorkspaceSpec;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->availableSpace:I

    .line 3
    iput p2, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cells:I

    .line 4
    iput-object p3, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->spec:Lcom/android/launcher3/responsive/ResponsiveSpec;

    .line 5
    invoke-virtual {p3}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getStartPadding()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    .line 6
    iget v1, p4, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->startPaddingPx:I

    .line 7
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/responsive/SizeSpec;->getCalculatedValue(II)I

    move-result v0

    .line 8
    iput v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->startPaddingPx:I

    .line 9
    invoke-virtual {p3}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getEndPadding()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    .line 10
    iget v1, p4, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->endPaddingPx:I

    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/responsive/SizeSpec;->getCalculatedValue(II)I

    move-result v0

    .line 12
    iput v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->endPaddingPx:I

    .line 13
    invoke-virtual {p3}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getGutter()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    .line 14
    iget v1, p4, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->gutterPx:I

    .line 15
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/responsive/SizeSpec;->getCalculatedValue(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->gutterPx:I

    .line 16
    invoke-virtual {p3}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getCellSize()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    .line 17
    iget p4, p4, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cellSizePx:I

    .line 18
    invoke-virtual {v0, p1, p4}, Lcom/android/launcher3/responsive/SizeSpec;->getCalculatedValue(II)I

    move-result p4

    .line 19
    iput p4, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cellSizePx:I

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->updateRemainderSpaces(IILcom/android/launcher3/responsive/ResponsiveSpec;)V

    return-void
.end method

.method private final updateRemainderSpaces(IILcom/android/launcher3/responsive/ResponsiveSpec;)V
    .locals 3

    add-int/lit8 v0, p2, -0x1

    iget v1, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->startPaddingPx:I

    iget v2, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->endPaddingPx:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->gutterPx:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cellSizePx:I

    mul-int/2addr v0, p2

    add-int/2addr v0, v2

    sub-int/2addr p1, v0

    invoke-virtual {p3}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getStartPadding()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object p2

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->startPaddingPx:I

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/responsive/SizeSpec;->getRemainderSpaceValue(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->startPaddingPx:I

    invoke-virtual {p3}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getEndPadding()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object p2

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->endPaddingPx:I

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/responsive/SizeSpec;->getRemainderSpaceValue(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->endPaddingPx:I

    invoke-virtual {p3}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getGutter()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object p2

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->gutterPx:I

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/responsive/SizeSpec;->getRemainderSpaceValue(II)I

    move-result p2

    iput p2, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->gutterPx:I

    invoke-virtual {p3}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getCellSize()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object p2

    iget p3, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cellSizePx:I

    invoke-virtual {p2, p1, p3}, Lcom/android/launcher3/responsive/SizeSpec;->getRemainderSpaceValue(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cellSizePx:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->availableSpace:I

    check-cast p1, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;

    iget v1, p1, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->availableSpace:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cells:I

    iget v1, p1, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cells:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->startPaddingPx:I

    iget v1, p1, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->startPaddingPx:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->endPaddingPx:I

    iget v1, p1, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->endPaddingPx:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->gutterPx:I

    iget v1, p1, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->gutterPx:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cellSizePx:I

    iget v1, p1, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cellSizePx:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->spec:Lcom/android/launcher3/responsive/ResponsiveSpec;

    iget-object p1, p1, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->spec:Lcom/android/launcher3/responsive/ResponsiveSpec;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getAvailableSpace()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->availableSpace:I

    return p0
.end method

.method public final getCellSizePx()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cellSizePx:I

    return p0
.end method

.method public final getEndPaddingPx()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->endPaddingPx:I

    return p0
.end method

.method public final getGutterPx()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->gutterPx:I

    return p0
.end method

.method public final getSpec()Lcom/android/launcher3/responsive/ResponsiveSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->spec:Lcom/android/launcher3/responsive/ResponsiveSpec;

    return-object p0
.end method

.method public final getStartPaddingPx()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->startPaddingPx:I

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->availableSpace:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cells:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->startPaddingPx:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->endPaddingPx:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->gutterPx:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cellSizePx:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->spec:Lcom/android/launcher3/responsive/ResponsiveSpec;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/d;->b()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->availableSpace:I

    iget v2, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cells:I

    iget v3, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->startPaddingPx:I

    iget v4, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->endPaddingPx:I

    iget v5, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->gutterPx:I

    iget v6, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->cellSizePx:I

    iget-object v7, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->spec:Lcom/android/launcher3/responsive/ResponsiveSpec;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    move-result-object v7

    invoke-virtual {v7}, Lkotlin/jvm/internal/d;->b()Ljava/lang/String;

    move-result-object v7

    iget-object p0, p0, Lcom/android/launcher3/responsive/CalculatedResponsiveSpec;->spec:Lcom/android/launcher3/responsive/ResponsiveSpec;

    invoke-virtual {p0}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getMaxAvailableSize()I

    move-result p0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(availableSpace="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cells="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", startPaddingPx="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", endPaddingPx="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", gutterPx="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cellSizePx="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".maxAvailableSize="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
