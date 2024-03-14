.class public final synthetic Lcom/android/launcher3/taskbar/bubbles/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;Landroid/view/View;I)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/taskbar/bubbles/c;->d:I

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/c;->e:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/c;->f:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/taskbar/bubbles/c;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/c;->e:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/c;->f:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->b(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;Landroid/view/View;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/c;->e:Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/c;->f:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;->a(Lcom/android/launcher3/taskbar/bubbles/BubbleDragController$BubbleTouchListener;Landroid/view/View;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
