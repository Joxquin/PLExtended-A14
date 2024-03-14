.class final Lcom/android/launcher3/taskbar/TaskbarEduTooltip$createOpenCloseAnimator$fade$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic d:I

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip$createOpenCloseAnimator$fade$1$1;->d:I

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip$createOpenCloseAnimator$fade$1$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip$createOpenCloseAnimator$fade$1$1;->d:I

    const/4 v1, 0x0

    const-string v2, "arrow"

    const-string v3, "null cannot be cast to non-null type kotlin.Float"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip$createOpenCloseAnimator$fade$1$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->getContent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip$createOpenCloseAnimator$fade$1$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->access$getArrow$p(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v1

    :goto_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/h;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip$createOpenCloseAnimator$fade$1$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->getContent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarEduTooltip$createOpenCloseAnimator$fade$1$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduTooltip;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarEduTooltip;->access$getArrow$p(Lcom/android/launcher3/taskbar/TaskbarEduTooltip;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
