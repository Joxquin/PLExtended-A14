.class public final synthetic Lcom/android/quickstep/Q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/quickstep/TouchInteractionService;


# direct methods
.method public synthetic constructor <init>(ILcom/android/quickstep/TouchInteractionService;)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/Q1;->d:I

    iput-object p2, p0, Lcom/android/quickstep/Q1;->e:Lcom/android/quickstep/TouchInteractionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/Q1;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/Q1;->e:Lcom/android/quickstep/TouchInteractionService;

    invoke-virtual {p0}, Lcom/android/quickstep/TouchInteractionService;->onUserUnlocked()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/Q1;->e:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->e(Lcom/android/quickstep/TouchInteractionService;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
