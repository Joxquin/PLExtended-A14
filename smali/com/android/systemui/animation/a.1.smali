.class public final Lcom/android/systemui/animation/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/animation/a;->d:I

    iput-object p2, p0, Lcom/android/systemui/animation/a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/animation/a;->d:I

    const-string v1, "ActivityLaunchAnimator"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/animation/a;->e:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/animation/c;

    if-nez v0, :cond_0

    const-string v0, "onAnimationCancelled called after completion"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/animation/a;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/animation/c;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/animation/c;->onAnimationCancelled()V

    :cond_1
    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/animation/a;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/animation/c;

    iget-boolean v0, p0, Lcom/android/systemui/animation/c;->n:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "Remote animation timed out"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/animation/c;->m:Z

    sget-boolean v0, Lcom/android/systemui/animation/f;->c:Z

    if-eqz v0, :cond_3

    const-string v0, "Calling controller.onLaunchAnimationCancelled() [animation timed out]"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/animation/c;->a:Lcom/android/systemui/animation/d;

    invoke-interface {v1, v0}, Lcom/android/systemui/animation/d;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/android/systemui/animation/c;->c:Lcom/android/systemui/animation/e;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lcom/android/systemui/animation/e;->b()V

    :cond_4
    :goto_0
    return-void

    :goto_1
    iget-object p0, p0, Lcom/android/systemui/animation/a;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    invoke-virtual {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->setDelegate()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
