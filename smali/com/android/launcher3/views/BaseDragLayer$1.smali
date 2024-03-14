.class final Lcom/android/launcher3/views/BaseDragLayer$1;
.super Landroid/util/Property;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/views/BaseDragLayer$1;->a:I

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/BaseDragLayer$1;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget p0, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_1

    :goto_0
    iget p0, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_1
    return-object p0

    :goto_2
    check-cast p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    packed-switch p0, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    iget p0, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_4

    :goto_3
    iget p0, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_4
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public final set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/launcher3/views/BaseDragLayer$1;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    check-cast p2, Ljava/lang/Integer;

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    goto :goto_1

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    :goto_1
    return-void

    :goto_2
    check-cast p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    check-cast p2, Ljava/lang/Integer;

    packed-switch p0, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    goto :goto_4

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
