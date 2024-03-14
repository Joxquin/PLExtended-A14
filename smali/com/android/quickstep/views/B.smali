.class public final synthetic Lcom/android/quickstep/views/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;I)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/views/B;->d:I

    iput-object p1, p0, Lcom/android/quickstep/views/B;->e:Lcom/android/quickstep/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/views/B;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/views/B;->e:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0}, Lcom/android/quickstep/views/RecentsView;->H(Lcom/android/quickstep/views/RecentsView;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/quickstep/views/B;->e:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0}, Lcom/android/quickstep/views/RecentsView;->X(Lcom/android/quickstep/views/RecentsView;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/quickstep/views/B;->e:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0}, Lcom/android/quickstep/views/RecentsView;->L(Lcom/android/quickstep/views/RecentsView;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/quickstep/views/B;->e:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateCurveProperties()V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/android/quickstep/views/B;->e:Lcom/android/quickstep/views/RecentsView;

    invoke-static {p0}, Lcom/android/quickstep/views/RecentsView;->r(Lcom/android/quickstep/views/RecentsView;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/views/B;->e:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
