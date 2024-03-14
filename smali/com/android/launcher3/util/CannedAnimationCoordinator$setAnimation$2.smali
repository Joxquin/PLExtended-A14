.class final Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field final synthetic $controller:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field final synthetic this$0:Lcom/android/launcher3/util/CannedAnimationCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/CannedAnimationCoordinator;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$2;->this$0:Lcom/android/launcher3/util/CannedAnimationCoordinator;

    iput-object p2, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$2;->$controller:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$2;->this$0:Lcom/android/launcher3/util/CannedAnimationCoordinator;

    invoke-static {v0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->access$getAnimationController$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$2;->$controller:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$2;->this$0:Lcom/android/launcher3/util/CannedAnimationCoordinator;

    const-string v1, "success"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->access$endCurrentAnimation(Lcom/android/launcher3/util/CannedAnimationCoordinator;Z)V

    iget-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$2;->this$0:Lcom/android/launcher3/util/CannedAnimationCoordinator;

    invoke-static {p1}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->access$setAnimationController$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V

    iget-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$2;->this$0:Lcom/android/launcher3/util/CannedAnimationCoordinator;

    invoke-static {p1}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->access$setAnimationFactory$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V

    iget-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$2;->this$0:Lcom/android/launcher3/util/CannedAnimationCoordinator;

    invoke-static {p1}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->access$setAnimationProvider$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)V

    iget-object p1, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$2;->this$0:Lcom/android/launcher3/util/CannedAnimationCoordinator;

    invoke-static {p1}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->access$getActivity$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/util/CannedAnimationCoordinator$setAnimation$2;->this$0:Lcom/android/launcher3/util/CannedAnimationCoordinator;

    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/launcher3/util/CannedAnimationCoordinator;->access$getLauncherLayoutListener$p(Lcom/android/launcher3/util/CannedAnimationCoordinator;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    :goto_0
    return-void
.end method
