.class public final synthetic Lcom/android/launcher3/taskbar/bubbles/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

.field public final synthetic e:Lcom/android/wm/shell/common/bubbles/b;

.field public final synthetic f:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/wm/shell/common/bubbles/b;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/a;->d:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/bubbles/a;->e:Lcom/android/wm/shell/common/bubbles/b;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/bubbles/a;->f:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/a;->d:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/bubbles/a;->e:Lcom/android/wm/shell/common/bubbles/b;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/bubbles/a;->f:Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;->c(Lcom/android/launcher3/taskbar/bubbles/BubbleBarController;Lcom/android/wm/shell/common/bubbles/b;Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;)V

    return-void
.end method
