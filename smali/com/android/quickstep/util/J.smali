.class public final synthetic Lcom/android/quickstep/util/J;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/util/J;->d:I

    iput-object p2, p0, Lcom/android/quickstep/util/J;->f:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/quickstep/util/J;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/util/J;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/quickstep/util/J;->f:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;

    iget-object p0, p0, Lcom/android/quickstep/util/J;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->c(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/quickstep/util/J;->f:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

    iget-object p0, p0, Lcom/android/quickstep/util/J;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->b(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;Ljava/lang/Runnable;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/util/J;->f:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;

    iget-object p0, p0, Lcom/android/quickstep/util/J;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsAnimationCallbacks;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;->a(Lcom/android/quickstep/util/SplitSelectStateController$SplitFromDesktopController;Lcom/android/quickstep/RecentsAnimationCallbacks;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
