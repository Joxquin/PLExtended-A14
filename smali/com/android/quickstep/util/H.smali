.class public final synthetic Lcom/android/quickstep/util/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

.field public final synthetic e:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic f:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic g:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic h:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/H;->d:Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

    iput-object p2, p0, Lcom/android/quickstep/util/H;->e:[Landroid/view/RemoteAnimationTarget;

    iput-object p3, p0, Lcom/android/quickstep/util/H;->f:[Landroid/view/RemoteAnimationTarget;

    iput-object p4, p0, Lcom/android/quickstep/util/H;->g:[Landroid/view/RemoteAnimationTarget;

    iput-object p5, p0, Lcom/android/quickstep/util/H;->h:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/quickstep/util/H;->d:Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

    iget-object v1, p0, Lcom/android/quickstep/util/H;->e:[Landroid/view/RemoteAnimationTarget;

    iget-object v2, p0, Lcom/android/quickstep/util/H;->f:[Landroid/view/RemoteAnimationTarget;

    iget-object v3, p0, Lcom/android/quickstep/util/H;->g:[Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/quickstep/util/H;->h:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->c(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V

    return-void
.end method
