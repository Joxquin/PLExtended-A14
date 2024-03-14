.class public final synthetic Lcom/android/launcher3/taskbar/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/taskbar/d0;->d:I

    iput-object p1, p0, Lcom/android/launcher3/taskbar/d0;->e:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/taskbar/d0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/d0;->e:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->b(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/d0;->e:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->c(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/android/launcher3/taskbar/d0;->e:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->c(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    return-void

    :pswitch_3
    iget-object p0, p0, Lcom/android/launcher3/taskbar/d0;->e:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->c(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/android/launcher3/taskbar/d0;->e:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->c(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    return-void

    :pswitch_5
    iget-object p0, p0, Lcom/android/launcher3/taskbar/d0;->e:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->c(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    return-void

    :pswitch_6
    iget-object p0, p0, Lcom/android/launcher3/taskbar/d0;->e:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->c(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    return-void

    :pswitch_7
    iget-object p0, p0, Lcom/android/launcher3/taskbar/d0;->e:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->c(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/d0;->e:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->a(Lcom/android/launcher3/taskbar/TaskbarDragLayerController;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
