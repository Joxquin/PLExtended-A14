.class public final LV1/s;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;)V
    .locals 0

    iput-object p1, p0, LV1/s;->d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, LV1/s;->d:Lcom/google/android/apps/nexuslauncher/overview/ShareTargetsView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
