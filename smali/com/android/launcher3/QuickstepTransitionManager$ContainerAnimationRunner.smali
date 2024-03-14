.class final Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherAnimationRunner$RemoteAnimationFactory;


# instance fields
.field private final mDelegate:Lcom/android/systemui/animation/v;


# direct methods
.method private constructor <init>(Lcom/android/systemui/animation/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;->mDelegate:Lcom/android/systemui/animation/v;

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;Lcom/android/launcher3/util/RunnableList;)Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;
    .locals 9

    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/android/systemui/animation/t;

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-nez v1, :cond_6

    move-object v0, v2

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p0, v0

    :goto_1
    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/android/systemui/animation/t;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Skipping animation as view "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is not attached to a ViewGroup"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "ActivityLaunchAnimator"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/android/systemui/animation/j;

    invoke-direct {v0, p0}, Lcom/android/systemui/animation/j;-><init>(Landroid/view/View;)V

    :goto_2
    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v4, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner$1;

    invoke-direct {v4, v0}, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner$1;-><init>(Lcom/android/systemui/animation/j;)V

    new-instance v5, Lcom/android/launcher3/J0;

    invoke-direct {v5, p1}, Lcom/android/launcher3/J0;-><init>(Lcom/android/launcher3/QuickstepTransitionManager$StartingWindowListener;)V

    new-instance v6, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner$2;

    invoke-direct {v6, p2}, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner$2;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    new-instance v2, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;

    new-instance p0, Lcom/android/systemui/animation/c;

    sget-object v7, Lcom/android/systemui/animation/f;->d:Lcom/android/systemui/animation/s;

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/animation/c;-><init>(Lcom/android/systemui/animation/d;Lcom/android/launcher3/J0;Lcom/android/systemui/animation/e;Lcom/android/systemui/animation/s;Z)V

    invoke-direct {v2, p0}, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;-><init>(Lcom/android/systemui/animation/c;)V

    :goto_3
    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "An ActivityLaunchAnimator.Controller was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method


# virtual methods
.method public final onAnimationCancelled()V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;->mDelegate:Lcom/android/systemui/animation/v;

    invoke-interface {p0}, Lcom/android/systemui/animation/v;->onAnimationCancelled()V

    return-void
.end method

.method public final bridge synthetic onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    .locals 0

    .line 1
    check-cast p5, Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V

    return-void
.end method

.method public final onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/launcher3/LauncherAnimationRunner$AnimationResult;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$ContainerAnimationRunner;->mDelegate:Lcom/android/systemui/animation/v;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/animation/v;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void
.end method
