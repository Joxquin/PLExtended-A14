.class public final synthetic Lcom/android/launcher3/I0;
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

    iput p1, p0, Lcom/android/launcher3/I0;->d:I

    iput-object p2, p0, Lcom/android/launcher3/I0;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/I0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/I0;->e:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/I0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/TaskRestartedDuringLaunchListener;

    invoke-virtual {p0}, Lcom/android/quickstep/util/TaskRestartedDuringLaunchListener;->unregister()V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/launcher3/I0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/QuickstepTransitionManager$14$1;

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$14$1;->this$1:Lcom/android/launcher3/QuickstepTransitionManager$14;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager$14;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/launcher3/I0;->e:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/QuickstepTransitionManager$LaunchDepthController;

    invoke-virtual {p0}, Lcom/android/launcher3/statehandlers/DepthController;->dispose()V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/I0;->e:Ljava/lang/Object;

    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->end()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
