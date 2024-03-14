.class final Lcom/android/launcher3/anim/PropertySetter$1;
.super Lcom/android/launcher3/anim/PropertySetter;
.source "SourceFile"


# virtual methods
.method public final add(Landroid/animation/Animator;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    invoke-virtual {p1}, Landroid/animation/Animator;->end()V

    return-void
.end method
