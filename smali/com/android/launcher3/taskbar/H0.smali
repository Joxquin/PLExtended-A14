.class public final synthetic Lcom/android/launcher3/taskbar/H0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/taskbar/TaskbarStashController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/taskbar/H0;->d:I

    iput-object p1, p0, Lcom/android/launcher3/taskbar/H0;->e:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/taskbar/H0;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/H0;->e:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->e(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/android/launcher3/taskbar/H0;->e:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->j(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/H0;->e:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->i(Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
