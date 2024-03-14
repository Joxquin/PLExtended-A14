.class public final synthetic Lcom/android/quickstep/p1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/p1;->d:I

    iput-object p2, p0, Lcom/android/quickstep/p1;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/p1;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/p1;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;

    invoke-static {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->j(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/p1;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-static {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->b(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
