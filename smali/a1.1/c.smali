.class public final synthetic La1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;I)V
    .locals 0

    iput p2, p0, La1/c;->a:I

    iput-object p1, p0, La1/c;->b:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, La1/c;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, La1/c;->b:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->a(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;Landroid/view/WindowManager;)V

    return-void

    :goto_0
    iget-object p0, p0, La1/c;->b:Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;

    check-cast p1, Landroid/view/WindowManager;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;->b(Lcom/android/launcher3/taskbar/overlay/TaskbarOverlayController;Landroid/view/WindowManager;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
