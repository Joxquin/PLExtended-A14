.class public Lcom/android/launcher3/taskbar/allapps/TaskbarSearchSessionController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/ResourceBasedOverride;
.implements Lcom/android/launcher3/allapps/AllAppsTransitionListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPreDragConditionForSearch(Landroid/view/View;)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
    .locals 0

    const-string p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleBackInvoked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onAllAppsAnimationPending(Lcom/android/launcher3/anim/PendingAnimation;Z)V
    .locals 0

    return-void
.end method

.method public onAllAppsTransitionEnd(Z)V
    .locals 0

    return-void
.end method

.method public onAllAppsTransitionStart(Z)V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public setZeroStatePredictedItems(Ljava/util/List;)V
    .locals 0

    const-string p0, "items"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setZeroStateSearchSuggestions(Ljava/util/List;)V
    .locals 0

    const-string p0, "items"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public startLifecycle()V
    .locals 0

    return-void
.end method
