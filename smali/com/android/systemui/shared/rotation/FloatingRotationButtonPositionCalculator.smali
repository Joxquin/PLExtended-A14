.class public final Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final defaultMargin:I

.field private final floatingRotationButtonPositionLeft:Z

.field private final taskbarMarginBottom:I

.field private final taskbarMarginLeft:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->defaultMargin:I

    iput p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginLeft:I

    iput p3, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginBottom:I

    iput-boolean p4, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->floatingRotationButtonPositionLeft:Z

    return-void
.end method

.method private final resolveGravity(I)I
    .locals 8

    iget-boolean p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->floatingRotationButtonPositionLeft:Z

    const-string v0, "Invalid rotation "

    const/16 v1, 0x53

    const/16 v2, 0x33

    const/16 v3, 0x35

    const/16 v4, 0x55

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_6

    if-eq p1, v7, :cond_5

    if-eq p1, v6, :cond_4

    if-ne p1, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0, p1}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p1, :cond_5

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_3

    if-ne p1, v5, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {v0, p1}, Lj/K;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_1

    :cond_5
    move v1, v4

    :cond_6
    :goto_1
    return v1
.end method


# virtual methods
.method public final calculatePosition(IZZ)Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    move v0, v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->resolveGravity(I)I

    move-result p1

    if-eqz v0, :cond_3

    iget p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginLeft:I

    goto :goto_2

    :cond_3
    iget p2, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->defaultMargin:I

    :goto_2
    if-eqz v0, :cond_4

    iget p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->taskbarMarginBottom:I

    goto :goto_3

    :cond_4
    iget p0, p0, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator;->defaultMargin:I

    :goto_3
    and-int/lit8 p3, p1, 0x5

    const/4 v0, 0x5

    if-ne p3, v0, :cond_5

    neg-int p2, p2

    :cond_5
    and-int/lit8 p3, p1, 0x50

    const/16 v0, 0x50

    if-ne p3, v0, :cond_6

    neg-int p0, p0

    :cond_6
    new-instance p3, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;

    invoke-direct {p3, p1, p2, p0}, Lcom/android/systemui/shared/rotation/FloatingRotationButtonPositionCalculator$Position;-><init>(III)V

    return-object p3
.end method
