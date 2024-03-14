.class public final synthetic Lk0/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/E;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 0

    iput p2, p0, Lk0/f;->a:I

    iput-object p1, p0, Lk0/f;->b:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lk0/f;->a:I

    iget-object p0, p0, Lk0/f;->b:Lcom/airbnb/lottie/LottieAnimationView;

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    check-cast p1, Lk0/m;

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lk0/m;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
