.class public final synthetic Lcom/android/quickstep/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/quickstep/RecentsAnimationCallbacks;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationCallbacks;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/quickstep/u0;->d:I

    iput-object p1, p0, Lcom/android/quickstep/u0;->e:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iput-object p2, p0, Lcom/android/quickstep/u0;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/u0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/u0;->e:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object p0, p0, Lcom/android/quickstep/u0;->f:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->c(Lcom/android/quickstep/RecentsAnimationCallbacks;Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/quickstep/u0;->e:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object p0, p0, Lcom/android/quickstep/u0;->f:Ljava/lang/Object;

    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->b(Lcom/android/quickstep/RecentsAnimationCallbacks;[Landroid/view/RemoteAnimationTarget;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/quickstep/u0;->e:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object p0, p0, Lcom/android/quickstep/u0;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsAnimationController;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->f(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationController;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/android/quickstep/u0;->e:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object p0, p0, Lcom/android/quickstep/u0;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->d(Lcom/android/quickstep/RecentsAnimationCallbacks;Ljava/util/HashMap;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/u0;->e:Lcom/android/quickstep/RecentsAnimationCallbacks;

    iget-object p0, p0, Lcom/android/quickstep/u0;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsAnimationTargets;

    invoke-static {v0, p0}, Lcom/android/quickstep/RecentsAnimationCallbacks;->e(Lcom/android/quickstep/RecentsAnimationCallbacks;Lcom/android/quickstep/RecentsAnimationTargets;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
