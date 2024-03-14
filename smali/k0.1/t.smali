.class public final synthetic Lk0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/C;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/airbnb/lottie/a;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/a;FI)V
    .locals 0

    iput p3, p0, Lk0/t;->a:I

    iput-object p1, p0, Lk0/t;->b:Lcom/airbnb/lottie/a;

    iput p2, p0, Lk0/t;->c:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lk0/t;->a:I

    iget v1, p0, Lk0/t;->c:F

    iget-object p0, p0, Lk0/t;->b:Lcom/airbnb/lottie/a;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/a;->y(F)V

    return-void

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/a;->z(F)V

    return-void

    :goto_0
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/a;->r(F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
