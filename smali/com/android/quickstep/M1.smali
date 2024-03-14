.class public final synthetic Lcom/android/quickstep/M1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/TouchInteractionService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/M1;->a:I

    iput-object p2, p0, Lcom/android/quickstep/M1;->b:Lcom/android/quickstep/TouchInteractionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/M1;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/M1;->b:Lcom/android/quickstep/TouchInteractionService;

    check-cast p1, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;

    invoke-static {p0, p1}, Lcom/android/quickstep/TouchInteractionService;->g(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/InputConsumer;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/M1;->b:Lcom/android/quickstep/TouchInteractionService;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p1, p0}, Lcom/android/quickstep/TouchInteractionService;->f(ZLcom/android/quickstep/TouchInteractionService;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
