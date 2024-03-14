.class public final synthetic Lcom/android/quickstep/util/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Landroid/os/IInterface;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IInterface;I)V
    .locals 0

    iput p2, p0, Lcom/android/quickstep/util/I;->d:I

    iput-object p1, p0, Lcom/android/quickstep/util/I;->e:Landroid/os/IInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/quickstep/util/I;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/quickstep/util/I;->e:Landroid/os/IInterface;

    check-cast p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

    invoke-static {p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->d(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/quickstep/util/I;->e:Landroid/os/IInterface;

    check-cast p0, Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-static {p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->a(Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
