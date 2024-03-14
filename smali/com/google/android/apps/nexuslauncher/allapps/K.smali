.class public final Lcom/google/android/apps/nexuslauncher/allapps/K;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

.field public final synthetic e:Lcom/android/launcher3/ExtendedEditText;

.field public final synthetic f:F

.field public final synthetic g:Lcom/google/android/apps/nexuslauncher/allapps/P;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/P;Lcom/google/android/apps/nexuslauncher/allapps/U;Lcom/android/launcher3/ExtendedEditText;F)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/K;->g:Lcom/google/android/apps/nexuslauncher/allapps/P;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/K;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/K;->e:Lcom/android/launcher3/ExtendedEditText;

    iput p4, p0, Lcom/google/android/apps/nexuslauncher/allapps/K;->f:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/K;->d:Lcom/google/android/apps/nexuslauncher/allapps/y0;

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->m()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/K;->e:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard(Z)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/K;->g:Lcom/google/android/apps/nexuslauncher/allapps/P;

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/K;->f:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/P;->e:Lcom/google/android/apps/nexuslauncher/allapps/L;

    iput p0, p1, Lcom/google/android/apps/nexuslauncher/allapps/L;->a:I

    invoke-virtual {p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/L;->a(I)V

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/L;->a(I)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/J;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/google/android/apps/nexuslauncher/allapps/J;-><init>(ILjava/lang/Object;)V

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
