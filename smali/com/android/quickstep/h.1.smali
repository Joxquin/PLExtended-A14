.class public final synthetic Lcom/android/quickstep/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;I)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/h;->d:I

    iput-object p1, p0, Lcom/android/quickstep/h;->e:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/h;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/h;->e:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->d(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/quickstep/h;->e:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->r(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/quickstep/h;->e:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->x(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/quickstep/h;->e:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->P(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/android/quickstep/h;->e:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->S(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/android/quickstep/h;->e:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->H(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/android/quickstep/h;->e:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->o(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/android/quickstep/h;->e:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->Q(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_8
    iget-object p0, p0, Lcom/android/quickstep/h;->e:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->F(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_9
    iget-object p0, p0, Lcom/android/quickstep/h;->e:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->W(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/h;->e:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {p0}, Lcom/android/quickstep/AbsSwipeUpHandler;->C(Lcom/android/quickstep/AbsSwipeUpHandler;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
