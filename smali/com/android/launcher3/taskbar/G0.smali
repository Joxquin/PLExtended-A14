.class public final synthetic Lcom/android/launcher3/taskbar/G0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/taskbar/TaskbarStashController;

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;ZI)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/taskbar/G0;->d:I

    iput-object p1, p0, Lcom/android/launcher3/taskbar/G0;->e:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/G0;->f:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/taskbar/G0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/G0;->e:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/G0;->f:Z

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->f(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/G0;->e:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/G0;->f:Z

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->b(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/G0;->e:Lcom/android/launcher3/taskbar/TaskbarStashController;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/G0;->f:Z

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->g(Lcom/android/launcher3/taskbar/TaskbarStashController;Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
