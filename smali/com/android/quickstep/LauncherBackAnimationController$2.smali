.class Lcom/android/quickstep/LauncherBackAnimationController$2;
.super Landroid/view/IRemoteAnimationRunner$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/LauncherBackAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController$2;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-direct {p0}, Landroid/view/IRemoteAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancelled()V
    .locals 0

    return-void
.end method

.method public onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 2

    array-length p1, p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    aget-object p4, p2, p3

    iget v0, p4, Landroid/view/RemoteAnimationTarget;->mode:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object p1, p0, Lcom/android/quickstep/LauncherBackAnimationController$2;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {p1, p4}, Lcom/android/quickstep/LauncherBackAnimationController;->h(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/view/RemoteAnimationTarget;)V

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/quickstep/LauncherBackAnimationController$2;->this$0:Lcom/android/quickstep/LauncherBackAnimationController;

    invoke-static {p0, p5}, Lcom/android/quickstep/LauncherBackAnimationController;->e(Lcom/android/quickstep/LauncherBackAnimationController;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
