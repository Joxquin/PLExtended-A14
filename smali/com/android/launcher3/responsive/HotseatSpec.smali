.class public final Lcom/android/launcher3/responsive/HotseatSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

.field private final maxAvailableSize:I

.field private final specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;


# direct methods
.method public constructor <init>(Landroid/content/res/TypedArray;Ljava/util/Map;)V
    .locals 4

    const-string v0, "attrs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "specs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-static {}, Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;->values()[Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    aget-object p1, v2, p1

    const-string v2, "hotseatQsbSpace"

    invoke-static {p2, v2}, Lcom/android/launcher3/responsive/ResponsiveSpecsParserKt;->getOrError(Ljava/util/Map;Ljava/lang/String;)Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object p2

    const-string v2, "specType"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/launcher3/responsive/HotseatSpec;->maxAvailableSize:I

    iput-object p1, p0, Lcom/android/launcher3/responsive/HotseatSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    iput-object p2, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    const-class p0, Lcom/android/launcher3/responsive/HotseatSpec;

    const-string p1, "HotseatSpec"

    if-gtz v1, :cond_0

    invoke-static {p0}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/d;->b()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#isValid - maxAvailableSize <= 0"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/responsive/SizeSpec;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/responsive/SizeSpec;->onlyFixedSize()Z

    move-result p2

    if-eqz p2, :cond_1

    move p2, v3

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    if-nez p2, :cond_2

    invoke-static {p0}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/jvm/internal/d;->b()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "#isValid - !allSpecsAreValid()"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid HotseatSpec found."

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
    instance-of v1, p1, Lcom/android/launcher3/responsive/HotseatSpec;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/launcher3/responsive/HotseatSpec;

    iget v1, p1, Lcom/android/launcher3/responsive/HotseatSpec;->maxAvailableSize:I

    iget v3, p0, Lcom/android/launcher3/responsive/HotseatSpec;->maxAvailableSize:I

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/responsive/HotseatSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    iget-object v3, p1, Lcom/android/launcher3/responsive/HotseatSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    iget-object p1, p1, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getHotseatQsbSpace()Lcom/android/launcher3/responsive/SizeSpec;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    return-object p0
.end method

.method public final getMaxAvailableSize()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->maxAvailableSize:I

    return p0
.end method

.method public final getSpecType()Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->maxAvailableSize:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/responsive/HotseatSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {p0}, Lcom/android/launcher3/responsive/SizeSpec;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HotseatSpec(maxAvailableSize="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/launcher3/responsive/HotseatSpec;->maxAvailableSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", specType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/responsive/HotseatSpec;->specType:Lcom/android/launcher3/responsive/ResponsiveSpec$SpecType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hotseatQsbSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/responsive/HotseatSpec;->hotseatQsbSpace:Lcom/android/launcher3/responsive/SizeSpec;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
