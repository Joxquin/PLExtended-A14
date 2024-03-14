.class final Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public end:I

.field public start:I


# virtual methods
.method public final applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    :goto_0
    iput p1, p4, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iget p0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    if-eqz p2, :cond_1

    add-int/2addr p0, p3

    :cond_1
    iput p0, p4, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    return-void
.end method

.method public final applyDeltaAndBound(ZZIIIILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3, p7}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V

    iget p3, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    if-gez p3, :cond_0

    const/4 p3, 0x0

    iput p3, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    :cond_0
    iget p3, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    if-le p3, p6, :cond_1

    iput p6, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    :cond_1
    iget p3, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    iget p6, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    sub-int v0, p3, p6

    if-ge v0, p4, :cond_3

    if-eqz p1, :cond_2

    sub-int/2addr p3, p4

    iput p3, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    add-int/2addr p6, p4

    iput p6, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    :cond_3
    :goto_0
    iget p3, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    iget p4, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    sub-int p6, p3, p4

    if-le p6, p5, :cond_5

    if-eqz p1, :cond_4

    sub-int/2addr p3, p5

    iput p3, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    add-int/2addr p4, p5

    iput p4, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    iget p1, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    iget p2, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    sub-int/2addr p1, p2

    iget p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    iget p0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    sub-int/2addr p2, p0

    sub-int/2addr p1, p2

    goto :goto_2

    :cond_6
    iget p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    iget p0, p0, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    sub-int/2addr p1, p0

    iget p0, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->end:I

    iget p2, p7, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    sub-int/2addr p0, p2

    sub-int/2addr p1, p0

    :goto_2
    return p1
.end method
