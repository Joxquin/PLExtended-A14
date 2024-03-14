.class public final LW1/q;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;)V
    .locals 0

    iput-object p1, p0, LW1/q;->d:Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p0, p0, LW1/q;->d:Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;->e:Landroid/animation/AnimatorSet;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/QsbTransitionManager;->e:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method
