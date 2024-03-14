.class final Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$1;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$1;->a:I

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;)Ljava/lang/Float;
    .locals 0

    iget p0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$1;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p1}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->a(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :goto_0
    invoke-static {p1}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->b(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$1;->a(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :goto_0
    check-cast p1, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$1;->a(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    iget p0, p0, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper$1;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p1, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p2}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->setAlpha(F)V

    goto :goto_1

    :goto_0
    invoke-static {p1, p2}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->c(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;F)V

    :goto_1
    return-void

    :goto_2
    check-cast p1, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;

    packed-switch p0, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    invoke-virtual {p1, p2}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->setAlpha(F)V

    goto :goto_4

    :goto_3
    invoke-static {p1, p2}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->c(Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;F)V

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
