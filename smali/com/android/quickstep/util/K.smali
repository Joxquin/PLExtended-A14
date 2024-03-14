.class public final synthetic Lcom/android/quickstep/util/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;

.field public final synthetic e:Landroid/window/TransitionInfo;

.field public final synthetic f:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic g:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/quickstep/util/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/K;->d:Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;

    iput-object p2, p0, Lcom/android/quickstep/util/K;->e:Landroid/window/TransitionInfo;

    iput-object p3, p0, Lcom/android/quickstep/util/K;->f:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/quickstep/util/K;->g:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/util/K;->d:Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;

    iget-object v1, p0, Lcom/android/quickstep/util/K;->e:Landroid/window/TransitionInfo;

    iget-object v2, p0, Lcom/android/quickstep/util/K;->f:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/quickstep/util/K;->g:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->b(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    return-void
.end method
