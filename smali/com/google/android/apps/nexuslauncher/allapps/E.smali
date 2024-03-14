.class public final Lcom/google/android/apps/nexuslauncher/allapps/E;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/F;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/F;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/E;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/E;->e:Lcom/google/android/apps/nexuslauncher/allapps/F;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/E;->d:I

    packed-switch p1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/E;->e:Lcom/google/android/apps/nexuslauncher/allapps/F;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->b:Lcom/android/launcher3/anim/AnimatedFloat;

    iget p1, p1, Lcom/android/launcher3/anim/AnimatedFloat;->value:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->c:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->h:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    xor-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->h:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/F;->b()V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/L;

    if-eqz p0, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/L;->a(I)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/D;

    invoke-direct {v1, p1, p0}, Lcom/google/android/apps/nexuslauncher/allapps/D;-><init>(ILjava/lang/Object;)V

    const-wide/16 p0, 0x5dc

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/allapps/L;->a(I)V

    :cond_3
    :goto_2
    return-void

    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "applyFinish fallback listener, mShowKeyboardOnEnd="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/E;->e:Lcom/google/android/apps/nexuslauncher/allapps/F;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/F;->h:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mController="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/E;->e:Lcom/google/android/apps/nexuslauncher/allapps/F;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyboardInsetAnimation"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/E;->e:Lcom/google/android/apps/nexuslauncher/allapps/F;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->g:Lcom/android/launcher3/anim/AnimatedFloat;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->f:Landroid/view/WindowInsetsAnimationController;

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/F;->h:Ljava/lang/Boolean;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-interface {p1, p0}, Landroid/view/WindowInsetsAnimationController;->finish(Z)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
