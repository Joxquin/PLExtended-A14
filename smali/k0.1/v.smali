.class public final synthetic Lk0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/C;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/airbnb/lottie/a;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/a;II)V
    .locals 0

    iput p3, p0, Lk0/v;->a:I

    iput-object p1, p0, Lk0/v;->b:Lcom/airbnb/lottie/a;

    iput p2, p0, Lk0/v;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lk0/v;->a:I

    iget v1, p0, Lk0/v;->c:I

    iget-object p0, p0, Lk0/v;->b:Lcom/airbnb/lottie/a;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/a;->p(I)V

    return-void

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/a;->w(I)V

    return-void

    :goto_0
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/a;->o(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
