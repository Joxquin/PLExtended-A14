.class public abstract Lcom/android/launcher3/responsive/ResponsiveSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cellSize:Lcom/android/launcher3/responsive/SizeSpec;

.field private final endPadding:Lcom/android/launcher3/responsive/SizeSpec;

.field private final gutter:Lcom/android/launcher3/responsive/SizeSpec;

.field private final maxAvailableSize:I

.field private final specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

.field private final startPadding:Lcom/android/launcher3/responsive/SizeSpec;


# direct methods
.method public constructor <init>(ILcom/android/launcher3/responsive/ResponsiveSpec$SpecType;Lcom/android/launcher3/responsive/SizeSpec;Lcom/android/launcher3/responsive/SizeSpec;Lcom/android/launcher3/responsive/SizeSpec;Lcom/android/launcher3/responsive/SizeSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/responsive/ResponsiveSpec;->maxAvailableSize:I

    iput-object p2, p0, Lcom/android/launcher3/responsive/ResponsiveSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    iput-object p3, p0, Lcom/android/launcher3/responsive/ResponsiveSpec;->startPadding:Lcom/android/launcher3/responsive/SizeSpec;

    iput-object p4, p0, Lcom/android/launcher3/responsive/ResponsiveSpec;->endPadding:Lcom/android/launcher3/responsive/SizeSpec;

    iput-object p5, p0, Lcom/android/launcher3/responsive/ResponsiveSpec;->gutter:Lcom/android/launcher3/responsive/SizeSpec;

    iput-object p6, p0, Lcom/android/launcher3/responsive/ResponsiveSpec;->cellSize:Lcom/android/launcher3/responsive/SizeSpec;

    return-void
.end method


# virtual methods
.method public getCellSize()Lcom/android/launcher3/responsive/SizeSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/responsive/ResponsiveSpec;->cellSize:Lcom/android/launcher3/responsive/SizeSpec;

    return-object p0
.end method

.method public getEndPadding()Lcom/android/launcher3/responsive/SizeSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/responsive/ResponsiveSpec;->endPadding:Lcom/android/launcher3/responsive/SizeSpec;

    return-object p0
.end method

.method public getGutter()Lcom/android/launcher3/responsive/SizeSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/responsive/ResponsiveSpec;->gutter:Lcom/android/launcher3/responsive/SizeSpec;

    return-object p0
.end method

.method public getMaxAvailableSize()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/responsive/ResponsiveSpec;->maxAvailableSize:I

    return p0
.end method

.method public getSpecType()Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/responsive/ResponsiveSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    return-object p0
.end method

.method public getStartPadding()Lcom/android/launcher3/responsive/SizeSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/responsive/ResponsiveSpec;->startPadding:Lcom/android/launcher3/responsive/SizeSpec;

    return-object p0
.end method

.method public isValid()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getMaxAvailableSize()I

    move-result v0

    const-string v1, "ResponsiveSpec"

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/d;->b()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#isValid - maxAvailableSize <= 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getStartPadding()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/SizeSpec;->isValid()Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getEndPadding()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/SizeSpec;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getGutter()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/SizeSpec;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/responsive/ResponsiveSpec;->getCellSize()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/responsive/SizeSpec;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/d;->b()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#isValid - !allSpecsAreValid()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    return v3
.end method
