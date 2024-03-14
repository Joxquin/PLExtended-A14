.class public final synthetic LK2/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK2/q;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LK2/o;->a:I

    iput p1, p0, LK2/o;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 0

    iget p2, p0, LK2/o;->a:I

    iget p0, p0, LK2/o;->b:I

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    sget p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->e:I

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :goto_0
    sget p2, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->e:I

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
