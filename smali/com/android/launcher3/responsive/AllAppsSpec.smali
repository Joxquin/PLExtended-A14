.class public final Lcom/android/launcher3/responsive/AllAppsSpec;
.super Lcom/android/launcher3/responsive/ResponsiveSpec;
.source "SourceFile"


# instance fields
.field private final cellSize:Lcom/android/launcher3/responsive/SizeSpec;

.field private final endPadding:Lcom/android/launcher3/responsive/SizeSpec;

.field private final gutter:Lcom/android/launcher3/responsive/SizeSpec;

.field private final maxAvailableSize:I

.field private final specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

.field private final startPadding:Lcom/android/launcher3/responsive/SizeSpec;


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;Ljava/util/Map;)V
    .locals 11

    const-string v0, "attrs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-static {}, Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;->values()[Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    aget-object p1, v1, p1

    const-string v0, "startPadding"

    invoke-static {p2, v0}, Lcom/android/launcher3/responsive/ResponsiveSpecsParserKt;->getOrError(Ljava/util/Map;Ljava/lang/String;)Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    const-string v1, "endPadding"

    invoke-static {p2, v1}, Lcom/android/launcher3/responsive/ResponsiveSpecsParserKt;->getOrError(Ljava/util/Map;Ljava/lang/String;)Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v9

    const-string v1, "gutter"

    invoke-static {p2, v1}, Lcom/android/launcher3/responsive/ResponsiveSpecsParserKt;->getOrError(Ljava/util/Map;Ljava/lang/String;)Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v10

    const-string v1, "cellSize"

    invoke-static {p2, v1}, Lcom/android/launcher3/responsive/ResponsiveSpecsParserKt;->getOrError(Ljava/util/Map;Ljava/lang/String;)Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object p2

    const-string v1, "specType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    move v2, v8

    move-object v3, p1

    move-object v4, v0

    move-object v5, v9

    move-object v6, v10

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/responsive/ResponsiveSpec;-><init>(ILcom/android/launcher3/responsive/ResponsiveSpec$SpecType;Lcom/android/launcher3/responsive/SizeSpec;Lcom/android/launcher3/responsive/SizeSpec;Lcom/android/launcher3/responsive/SizeSpec;Lcom/android/launcher3/responsive/SizeSpec;)V

    iput v8, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->maxAvailableSize:I

    iput-object p1, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    iput-object v0, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->startPadding:Lcom/android/launcher3/responsive/SizeSpec;

    iput-object v9, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->endPadding:Lcom/android/launcher3/responsive/SizeSpec;

    iput-object v10, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->gutter:Lcom/android/launcher3/responsive/SizeSpec;

    iput-object p2, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->cellSize:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {p0}, Lcom/android/launcher3/responsive/ResponsiveSpec;->isValid()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid AllAppsSpec found."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/responsive/AllAppsSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/launcher3/responsive/AllAppsSpec;

    iget v1, p1, Lcom/android/launcher3/responsive/AllAppsSpec;->maxAvailableSize:I

    iget v3, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->maxAvailableSize:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    iget-object v3, p1, Lcom/android/launcher3/responsive/AllAppsSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->startPadding:Lcom/android/launcher3/responsive/SizeSpec;

    iget-object v3, p1, Lcom/android/launcher3/responsive/AllAppsSpec;->startPadding:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->endPadding:Lcom/android/launcher3/responsive/SizeSpec;

    iget-object v3, p1, Lcom/android/launcher3/responsive/AllAppsSpec;->endPadding:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->gutter:Lcom/android/launcher3/responsive/SizeSpec;

    iget-object v3, p1, Lcom/android/launcher3/responsive/AllAppsSpec;->gutter:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->cellSize:Lcom/android/launcher3/responsive/SizeSpec;

    iget-object p1, p1, Lcom/android/launcher3/responsive/AllAppsSpec;->cellSize:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCellSize()Lcom/android/launcher3/responsive/SizeSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->cellSize:Lcom/android/launcher3/responsive/SizeSpec;

    return-object p0
.end method

.method public final getEndPadding()Lcom/android/launcher3/responsive/SizeSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->endPadding:Lcom/android/launcher3/responsive/SizeSpec;

    return-object p0
.end method

.method public final getGutter()Lcom/android/launcher3/responsive/SizeSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->gutter:Lcom/android/launcher3/responsive/SizeSpec;

    return-object p0
.end method

.method public final getMaxAvailableSize()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->maxAvailableSize:I

    return p0
.end method

.method public final getSpecType()Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    return-object p0
.end method

.method public final getStartPadding()Lcom/android/launcher3/responsive/SizeSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->startPadding:Lcom/android/launcher3/responsive/SizeSpec;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->maxAvailableSize:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->startPadding:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/SizeSpec;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->endPadding:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v1}, Lcom/android/launcher3/responsive/SizeSpec;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->gutter:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/SizeSpec;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->cellSize:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {p0}, Lcom/android/launcher3/responsive/SizeSpec;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AllAppsSpec(maxAvailableSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->maxAvailableSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", specType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->startPadding:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", endPadding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->endPadding:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gutter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->gutter:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cellSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/responsive/AllAppsSpec;->cellSize:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
