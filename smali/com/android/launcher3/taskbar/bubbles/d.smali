.class public final synthetic Lcom/android/launcher3/taskbar/bubbles/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/d;->d:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/bubbles/d;->e:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/d;->d:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/bubbles/d;->e:Z

    if-eqz p0, :cond_0

    iget-object p0, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->c(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setExpanded(Z)V

    :cond_0
    iget-object p0, v0, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController$2;->this$0:Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;->e(Lcom/android/launcher3/taskbar/bubbles/BubbleStashController;)Lcom/android/launcher3/taskbar/TaskbarInsetsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarInsetsController;->onTaskbarOrBubblebarWindowHeightOrInsetsChanged()V

    return-void
.end method
