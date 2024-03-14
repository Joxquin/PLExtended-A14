.class public final synthetic LK2/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK2/q;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, LK2/p;->a:I

    iput-object p2, p0, LK2/p;->b:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 1

    iget v0, p0, LK2/p;->a:I

    iget-object p0, p0, LK2/p;->b:[Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, [Ljava/lang/String;

    sget v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->e:I

    check-cast p1, Landroid/widget/TextView;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_1
    check-cast p0, [Ljava/lang/String;

    sget v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->e:I

    check-cast p1, Landroid/widget/TextView;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :goto_0
    check-cast p0, [Landroid/graphics/Bitmap;

    sget v0, Lcom/google/android/systemui/smartspace/BcSmartspaceCardWeatherForecast;->e:I

    check-cast p1, Landroid/widget/ImageView;

    aget-object p0, p0, p2

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
