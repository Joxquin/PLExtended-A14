.class public final LP1/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public d:Z

.field public final synthetic e:Z

.field public final synthetic f:Landroid/animation/ObjectAnimator;

.field public final synthetic g:LP1/f;


# direct methods
.method public constructor <init>(LP1/f;ZLandroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, LP1/e;->g:LP1/f;

    iput-boolean p2, p0, LP1/e;->e:Z

    iput-object p3, p0, LP1/e;->f:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, LP1/e;->d:Z

    return-void
.end method


# virtual methods
.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, LP1/e;->g:LP1/f;

    iget-object p1, p1, LP1/f;->f:Lz3/c;

    invoke-virtual {p1}, Lz3/c;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, LP1/e;->d:Z

    if-nez p1, :cond_0

    iget-object v0, p0, LP1/e;->g:LP1/f;

    iget v1, v0, LP1/f;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, LP1/f;->h:I

    :cond_0
    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, LP1/e;->d:Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, LP1/e;->g:LP1/f;

    iget v0, p1, LP1/f;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, LP1/f;->h:I

    :goto_0
    iget-object p1, p0, LP1/e;->g:LP1/f;

    iget-boolean v0, p1, LP1/f;->w:Z

    const-string v1, "DoodleView"

    if-eqz v0, :cond_3

    iget p1, p1, LP1/f;->h:I

    iget-object v0, p0, LP1/e;->f:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->getRepeatCount()I

    move-result v0

    if-ge p1, v0, :cond_3

    sget-boolean p1, LP1/f;->y:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Pausing doodle on loop="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, LP1/e;->g:LP1/f;

    iget v0, v0, LP1/f;->h:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p1, p0, LP1/e;->g:LP1/f;

    iget-object p1, p1, LP1/f;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->pause()V

    iget-object p1, p0, LP1/e;->g:LP1/f;

    const/4 v0, 0x0

    iput-boolean v0, p1, LP1/f;->w:Z

    :cond_3
    sget-boolean p1, LP1/f;->y:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "mCurrentLoop="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LP1/e;->g:LP1/f;

    iget p0, p0, LP1/f;->h:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean p1, p0, LP1/e;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, LP1/e;->g:LP1/f;

    const/4 v0, 0x1

    iput v0, p1, LP1/f;->h:I

    iget-object p0, p0, LP1/e;->f:Landroid/animation/ObjectAnimator;

    iget-object p1, p1, LP1/f;->f:Lz3/c;

    invoke-virtual {p1}, Lz3/c;->g()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    :cond_0
    return-void
.end method
