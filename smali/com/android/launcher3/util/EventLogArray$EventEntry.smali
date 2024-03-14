.class final Lcom/android/launcher3/util/EventLogArray$EventEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private duplicateCount:I

.field private event:Ljava/lang/String;

.field private extras:F

.field private time:J

.field private type:I


# virtual methods
.method public final getDuplicateCount()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->duplicateCount:I

    return p0
.end method

.method public final getEvent()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->event:Ljava/lang/String;

    return-object p0
.end method

.method public final getExtras()F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->extras:F

    return p0
.end method

.method public final getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->time:J

    return-wide v0
.end method

.method public final getType()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->type:I

    return p0
.end method

.method public final setDuplicateCount(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->duplicateCount:I

    return-void
.end method

.method public final update(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->type:I

    iput-object p1, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->event:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->extras:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->time:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/util/EventLogArray$EventEntry;->duplicateCount:I

    return-void
.end method
