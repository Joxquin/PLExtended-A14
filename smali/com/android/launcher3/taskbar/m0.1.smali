.class public final synthetic Lcom/android/launcher3/taskbar/m0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/taskbar/TaskbarManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/launcher3/taskbar/m0;->a:I

    iput-object p1, p0, Lcom/android/launcher3/taskbar/m0;->b:Lcom/android/launcher3/taskbar/TaskbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/taskbar/m0;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/m0;->b:Lcom/android/launcher3/taskbar/TaskbarManager;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarManager;->a(Lcom/android/launcher3/taskbar/TaskbarManager;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/android/launcher3/taskbar/m0;->b:Lcom/android/launcher3/taskbar/TaskbarManager;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->c(Lcom/android/launcher3/taskbar/TaskbarManager;Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
