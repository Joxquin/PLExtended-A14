.class public final synthetic Lcom/android/launcher3/taskbar/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/taskbar/BaseTaskbarContext;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/taskbar/x0;->d:I

    iput-object p1, p0, Lcom/android/launcher3/taskbar/x0;->e:Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/taskbar/x0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/x0;->e:Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/x0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/taskbar/x0;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/x0;->e:Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->onPopupVisibilityChanged(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
