.class final Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public baseDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

.field public defaultHour:I

.field public defaultMinute:I

.field public defaultSecond:I

.field public hourLayerIndex:I

.field public minuteLayerIndex:I

.field public secondLayerIndex:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyTime(Ljava/util/Calendar;Landroid/graphics/drawable/LayerDrawable;)Z
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultHour:I

    const/16 v3, 0xc

    rsub-int/lit8 v2, v2, 0xc

    add-int/2addr v2, v1

    rem-int/2addr v2, v3

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v4, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultMinute:I

    rsub-int/lit8 v4, v4, 0x3c

    add-int/2addr v4, v1

    rem-int/lit8 v4, v4, 0x3c

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget v5, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultSecond:I

    rsub-int/lit8 v5, v5, 0x3c

    add-int/2addr v5, v1

    rem-int/lit8 v5, v5, 0x3c

    iget v1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_0

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    mul-int/lit8 v2, v2, 0x3c

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    if-eq v2, v7, :cond_1

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    mul-int/lit8 p1, p1, 0x3c

    add-int/2addr p1, v4

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p1

    if-eqz p1, :cond_1

    move v1, v6

    :cond_1
    iget p0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    if-eq p0, v7, :cond_2

    invoke-virtual {p2, p0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    mul-int/2addr v5, v0

    invoke-virtual {p0, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    return v6
.end method

.method public final copyForIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;
    .locals 1

    new-instance v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;

    invoke-direct {v0}, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;-><init>()V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    iput-object p1, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->baseDrawableState:Landroid/graphics/drawable/Drawable$ConstantState;

    iget p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultHour:I

    iput p1, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultHour:I

    iget p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultMinute:I

    iput p1, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultMinute:I

    iget p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultSecond:I

    iput p1, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->defaultSecond:I

    iget p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    iput p1, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->hourLayerIndex:I

    iget p1, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    iput p1, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->minuteLayerIndex:I

    iget p0, p0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    iput p0, v0, Lcom/android/launcher3/icons/ClockDrawableWrapper$AnimationInfo;->secondLayerIndex:I

    return-object v0
.end method
