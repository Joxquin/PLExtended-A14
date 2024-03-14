.class public final Lcom/android/launcher3/responsive/CalculatedHotseatSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final availableSpace:I

.field private hotseatQsbSpace:I

.field private final spec:Lcom/android/launcher3/responsive/HotseatSpec;


# direct methods
.method public constructor <init>(ILcom/android/launcher3/responsive/HotseatSpec;)V
    .locals 1

    const-string v0, "spec"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->availableSpace:I

    iput-object p2, p0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->spec:Lcom/android/launcher3/responsive/HotseatSpec;

    invoke-virtual {p2}, Lcom/android/launcher3/responsive/HotseatSpec;->getHotseatQsbSpace()Lcom/android/launcher3/responsive/SizeSpec;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/responsive/SizeSpec;->getCalculatedValue(II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->hotseatQsbSpace:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;

    iget v0, p1, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->availableSpace:I

    iget v1, p0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->availableSpace:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->hotseatQsbSpace:I

    iget v1, p1, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->hotseatQsbSpace:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->spec:Lcom/android/launcher3/responsive/HotseatSpec;

    iget-object p1, p1, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->spec:Lcom/android/launcher3/responsive/HotseatSpec;

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

.method public final getHotseatQsbSpace()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->hotseatQsbSpace:I

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->availableSpace:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->hotseatQsbSpace:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->spec:Lcom/android/launcher3/responsive/HotseatSpec;

    invoke-virtual {p0}, Lcom/android/launcher3/responsive/HotseatSpec;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;

    invoke-static {v0}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/jvm/internal/d;->b()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->hotseatQsbSpace:I

    iget-object v2, p0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->spec:Lcom/android/launcher3/responsive/HotseatSpec;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Class;)Lkotlin/jvm/internal/d;

    move-result-object v3

    invoke-virtual {v3}, Lkotlin/jvm/internal/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher3/responsive/HotseatSpec;->getMaxAvailableSize()I

    move-result v2

    const-string v4, "(availableSpace="

    invoke-static {v0, v4}, Lt/j;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/android/launcher3/responsive/CalculatedHotseatSpec;->availableSpace:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", hotseatQsbSpace="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".maxAvailableSize="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
