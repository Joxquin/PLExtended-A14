.class public final synthetic Lcom/android/launcher3/anim/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/anim/d;->a:I

    iput-object p2, p0, Lcom/android/launcher3/anim/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/anim/d;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/anim/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/animation/TimeInterpolator;

    check-cast p1, Landroid/animation/Animator;

    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/anim/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/BiConsumer;

    check-cast p1, Landroid/animation/Animator;

    invoke-static {p1, p0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->a(Landroid/animation/Animator;Ljava/util/function/BiConsumer;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
