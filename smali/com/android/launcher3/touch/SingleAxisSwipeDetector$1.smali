.class final Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;
.super Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;->a:I

    invoke-direct {p0}, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$Direction;-><init>()V

    return-void
.end method


# virtual methods
.method public final extractDirection(Landroid/graphics/PointF;)F
    .locals 0

    iget p0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget p0, p1, Landroid/graphics/PointF;->y:F

    return p0

    :goto_0
    iget p0, p1, Landroid/graphics/PointF;->x:F

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isPositive(F)Z
    .locals 3

    iget p0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;->a:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    cmpg-float p0, p1, v2

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :goto_1
    cmpl-float p0, p1, v2

    if-lez p0, :cond_1

    goto :goto_2

    :cond_1
    move v0, v1

    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/touch/SingleAxisSwipeDetector$1;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "HORIZONTAL"

    return-object p0

    :pswitch_0
    const-string p0, "VERTICAL"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
