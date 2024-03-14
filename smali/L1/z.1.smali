.class public final LL1/z;
.super Landroid/util/FloatProperty;
.source "SourceFile"


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    iput p2, p0, LL1/z;->a:I

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget p0, p0, LL1/z;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p1, LL1/B;

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget p0, p1, LL1/B;->n:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_1

    :goto_0
    iget p0, p1, LL1/B;->o:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_1
    return-object p0

    :goto_2
    check-cast p1, LL1/B;

    packed-switch p0, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    iget p0, p1, LL1/B;->n:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_4

    :goto_3
    iget p0, p1, LL1/B;->o:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

.method public final setValue(Ljava/lang/Object;F)V
    .locals 0

    iget p0, p0, LL1/z;->a:I

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    check-cast p1, LL1/B;

    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput p2, p1, LL1/B;->n:F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_1

    :goto_0
    iput p2, p1, LL1/B;->o:F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_1
    return-void

    :goto_2
    check-cast p1, LL1/B;

    packed-switch p0, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    iput p2, p1, LL1/B;->n:F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_4

    :goto_3
    iput p2, p1, LL1/B;->o:F

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

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
