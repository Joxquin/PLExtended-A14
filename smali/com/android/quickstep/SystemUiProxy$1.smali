.class Lcom/android/quickstep/SystemUiProxy$1;
.super Landroid/view/IRecentsAnimationRunner$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/SystemUiProxy;

.field final synthetic val$listener:Lcom/android/systemui/shared/system/RecentsAnimationListener;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/SystemUiProxy;Lcom/android/systemui/shared/system/RecentsAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/SystemUiProxy$1;->this$0:Lcom/android/quickstep/SystemUiProxy;

    iput-object p2, p0, Lcom/android/quickstep/SystemUiProxy$1;->val$listener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-direct {p0}, Landroid/view/IRecentsAnimationRunner$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCanceled([I[Landroid/window/TaskSnapshot;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy$1;->val$listener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-static {p1, p2}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->wrap([I[Landroid/window/TaskSnapshot;)Ljava/util/HashMap;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onAnimationCanceled(Ljava/util/HashMap;)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/IRecentsAnimationController;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/android/quickstep/SystemUiProxy$1;->val$listener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    new-instance v1, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;

    invoke-direct {v1, p1}, Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;-><init>(Landroid/view/IRecentsAnimationController;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onAnimationStart(Lcom/android/systemui/shared/system/RecentsAnimationControllerCompat;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method public onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/SystemUiProxy$1;->val$listener:Lcom/android/systemui/shared/system/RecentsAnimationListener;

    invoke-interface {p0, p1}, Lcom/android/systemui/shared/system/RecentsAnimationListener;->onTasksAppeared([Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method
