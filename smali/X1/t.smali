.class public final LX1/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LV1/i;

.field public final synthetic b:LX1/u;


# direct methods
.method public constructor <init>(LX1/u;)V
    .locals 0

    iput-object p1, p0, LX1/t;->b:LX1/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 11

    iget-object p0, p0, LX1/t;->b:LX1/u;

    invoke-virtual {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->getActionsView()Lcom/android/quickstep/views/OverviewActionsView;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->f:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x78

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-wide/16 v5, 0x11b

    const/4 v7, 0x0

    const v8, 0x3f4ccccd    # 0.8f

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->e:Landroid/view/View;

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->e:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->e:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->e:Landroid/view/View;

    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleY(F)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->e:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    aput v0, v4, v7

    invoke-static {p1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->e()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/quickstep/views/OverviewActionsView;->getShareTargetAlpha()Lcom/android/launcher3/util/MultiPropertyFactory$MultiProperty;

    move-result-object p1

    sget-object v9, Lcom/android/launcher3/util/MultiPropertyFactory;->MULTI_PROPERTY_VALUE:Landroid/util/FloatProperty;

    new-array v10, v4, [F

    aput v0, v10, v7

    invoke-static {p1, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->h:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->e:Landroid/view/View;

    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    aput v3, v4, v7

    invoke-static {p1, v0, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    new-instance v0, LV1/d;

    invoke-direct {v0, p0}, LV1/d;-><init>(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-void
.end method

.method public final b()V
    .locals 3

    iget-object p0, p0, LX1/t;->b:LX1/u;

    iget-object v0, p0, LX1/u;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStringCache()Lcom/android/launcher3/model/StringCache;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/model/StringCache;->disabledByAdminMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, LX1/u;->d:Landroid/content/Context;

    const v1, 0x7f13007e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, LX1/u;->o:Lcom/android/launcher3/BaseDraggingActivity;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-static {p0, v0, v2, v1, v1}, Lcom/android/launcher3/views/Snackbar;->show(Landroid/content/Context;Ljava/lang/String;ILjava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
