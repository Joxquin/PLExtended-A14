.class public final synthetic Lcom/android/quickstep/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/f0;->a:I

    iput-object p2, p0, Lcom/android/quickstep/f0;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/f0;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/f0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/QuickstepTestInformationHandler;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->w(Lcom/android/quickstep/QuickstepTestInformationHandler;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/quickstep/f0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/QuickstepTestInformationHandler;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->v(Lcom/android/quickstep/QuickstepTestInformationHandler;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/quickstep/f0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/QuickstepTestInformationHandler;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->t(Lcom/android/quickstep/QuickstepTestInformationHandler;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/quickstep/f0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/QuickstepTestInformationHandler;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->C(Lcom/android/quickstep/QuickstepTestInformationHandler;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/android/quickstep/f0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/QuickstepTestInformationHandler;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->B(Lcom/android/quickstep/QuickstepTestInformationHandler;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/f0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/os/Bundle;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {p0, p1}, Lcom/android/quickstep/QuickstepTestInformationHandler;->y(Landroid/os/Bundle;Lcom/android/quickstep/TouchInteractionService$TISBinder;)V

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
