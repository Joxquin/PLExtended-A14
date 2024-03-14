.class public final synthetic Lk0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk0/C;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/airbnb/lottie/a;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/a;Ljava/lang/String;I)V
    .locals 0

    iput p3, p0, Lk0/x;->a:I

    iput-object p1, p0, Lk0/x;->b:Lcom/airbnb/lottie/a;

    iput-object p2, p0, Lk0/x;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lk0/x;->a:I

    iget-object v1, p0, Lk0/x;->c:Ljava/lang/String;

    iget-object p0, p0, Lk0/x;->b:Lcom/airbnb/lottie/a;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/a;->x(Ljava/lang/String;)V

    return-void

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/a;->q(Ljava/lang/String;)V

    return-void

    :goto_0
    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/a;->t(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
