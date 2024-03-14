.class public final synthetic Lcom/android/launcher3/taskbar/bubbles/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lcom/android/launcher3/taskbar/bubbles/b;->d:I

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/b;->e:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/b;->f:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/taskbar/bubbles/b;->d:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/b;->e:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/b;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->f(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/b;->e:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/b;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->b(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/b;->e:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/b;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->e(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    return-void

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/b;->e:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/b;->f:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;

    invoke-static {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->a(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/launcher3/taskbar/bubbles/BubbleBarOverflow;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
