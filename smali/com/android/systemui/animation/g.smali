.class public Lcom/android/systemui/animation/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/systemui/animation/d;


# instance fields
.field private final delegate:Lcom/android/systemui/animation/d;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/g;->delegate:Lcom/android/systemui/animation/d;

    return-void
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/n;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/g;->delegate:Lcom/android/systemui/animation/d;

    invoke-interface {p0}, Lcom/android/systemui/animation/l;->createAnimatorState()Lcom/android/systemui/animation/n;

    move-result-object p0

    return-object p0
.end method

.method public final getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/g;->delegate:Lcom/android/systemui/animation/d;

    invoke-interface {p0}, Lcom/android/systemui/animation/l;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public final getOpeningWindowSyncView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/g;->delegate:Lcom/android/systemui/animation/d;

    invoke-interface {p0}, Lcom/android/systemui/animation/l;->getOpeningWindowSyncView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final isDialogLaunch()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/g;->delegate:Lcom/android/systemui/animation/d;

    invoke-interface {p0}, Lcom/android/systemui/animation/d;->isDialogLaunch()Z

    move-result p0

    return p0
.end method

.method public final onLaunchAnimationCancelled(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/g;->delegate:Lcom/android/systemui/animation/d;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/d;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final onLaunchAnimationEnd(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/g;->delegate:Lcom/android/systemui/animation/d;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/l;->onLaunchAnimationEnd(Z)V

    return-void
.end method

.method public final onLaunchAnimationProgress(Lcom/android/systemui/animation/n;FF)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/animation/g;->delegate:Lcom/android/systemui/animation/d;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/animation/l;->onLaunchAnimationProgress(Lcom/android/systemui/animation/n;FF)V

    return-void
.end method

.method public final onLaunchAnimationStart(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/animation/g;->delegate:Lcom/android/systemui/animation/d;

    invoke-interface {p0, p1}, Lcom/android/systemui/animation/l;->onLaunchAnimationStart(Z)V

    return-void
.end method
