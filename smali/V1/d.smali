.class public final LV1/d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;)V
    .locals 0

    iput-object p1, p0, LV1/d;->d:Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, LV1/d;->d:Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/overview/NexusOverviewActionsView;->e:Landroid/view/View;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
