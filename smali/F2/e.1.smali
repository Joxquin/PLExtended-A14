.class public final LF2/e;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LF2/f;


# direct methods
.method public synthetic constructor <init>(LF2/f;I)V
    .locals 0

    iput p2, p0, LF2/e;->d:I

    iput-object p1, p0, LF2/e;->e:LF2/f;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, LF2/e;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LF2/e;->e:LF2/f;

    iget-object p0, p0, LF2/w;->b:LF2/v;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LF2/v;->h(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget v0, p0, LF2/e;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LF2/e;->e:LF2/f;

    iget-object p0, p0, LF2/w;->b:LF2/v;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LF2/v;->h(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
