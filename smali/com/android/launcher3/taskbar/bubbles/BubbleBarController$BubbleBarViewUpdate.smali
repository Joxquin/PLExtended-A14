.class final Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field addedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;

.field bubbleKeysInOrder:Ljava/util/List;

.field currentBubbles:Ljava/util/List;

.field expanded:Z

.field expandedChanged:Z

.field removedBubbles:Ljava/util/List;

.field selectedBubbleKey:Ljava/lang/String;

.field updatedBubble:Lcom/android/launcher3/taskbar/bubbles/BubbleBarBubble;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/bubbles/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/android/wm/shell/common/bubbles/b;->d:Z

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expandedChanged:Z

    iget-boolean v0, p1, Lcom/android/wm/shell/common/bubbles/b;->e:Z

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->expanded:Z

    iget-object v0, p1, Lcom/android/wm/shell/common/bubbles/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->selectedBubbleKey:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/wm/shell/common/bubbles/b;->k:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->removedBubbles:Ljava/util/List;

    iget-object p1, p1, Lcom/android/wm/shell/common/bubbles/b;->l:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/bubbles/BubbleBarController$BubbleBarViewUpdate;->bubbleKeysInOrder:Ljava/util/List;

    return-void
.end method
