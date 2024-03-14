.class final Lcom/android/launcher3/QuickstepTransitionManager$14$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# instance fields
.field mHandled:Z

.field final synthetic this$1:Lcom/android/launcher3/QuickstepTransitionManager$14;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager$14;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$14$1;->this$1:Lcom/android/launcher3/QuickstepTransitionManager$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$14$1;->mHandled:Z

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$14$1;->mHandled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$14$1;->mHandled:Z

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$14$1;->this$1:Lcom/android/launcher3/QuickstepTransitionManager$14;

    iget-object v2, v1, Lcom/android/launcher3/QuickstepTransitionManager$14;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v2, v2, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget v1, v1, Lcom/android/launcher3/QuickstepTransitionManager$14;->val$cuj:I

    invoke-static {v2, v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$14$1;->this$1:Lcom/android/launcher3/QuickstepTransitionManager$14;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager$14;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, v1, Lcom/android/launcher3/QuickstepTransitionManager;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    new-instance v2, Lcom/android/launcher3/I0;

    invoke-direct {v2, v0, p0}, Lcom/android/launcher3/I0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
