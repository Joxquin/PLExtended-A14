.class final Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/window/OnBackAnimationCallback;


# instance fields
.field mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

.field final synthetic this$0:Lcom/android/launcher3/uioverrides/QuickstepLauncher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;->this$0:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    return-void
.end method

.method public final onBackInvoked()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;->this$0:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOnBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    invoke-interface {v0}, Landroid/window/OnBackAnimationCallback;->onBackInvoked()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    const-string p0, "Main"

    const-string v0, "onBackInvoked"

    invoke-static {p0, v0}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBackProgressed(Landroid/window/BackEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Landroid/window/OnBackAnimationCallback;->onBackProgressed(Landroid/window/BackEvent;)V

    return-void
.end method

.method public final onBackStarted(Landroid/window/BackEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;->this$0:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOnBackAnimationCallback()Landroid/window/OnBackAnimationCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/QuickstepLauncher$2;->mActiveOnBackAnimationCallback:Landroid/window/OnBackAnimationCallback;

    invoke-interface {v0, p1}, Landroid/window/OnBackAnimationCallback;->onBackStarted(Landroid/window/BackEvent;)V

    return-void
.end method
