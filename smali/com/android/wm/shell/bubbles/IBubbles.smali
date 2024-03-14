.class public interface abstract Lcom/android/wm/shell/bubbles/IBubbles;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract collapseBubbles()V
.end method

.method public abstract onBubbleDrag(Ljava/lang/String;Z)V
.end method

.method public abstract registerBubbleListener(Lcom/android/wm/shell/bubbles/IBubblesListener;)V
.end method

.method public abstract removeAllBubbles()V
.end method

.method public abstract removeBubble(Ljava/lang/String;)V
.end method

.method public abstract showBubble(Ljava/lang/String;II)V
.end method

.method public abstract unregisterBubbleListener(Lcom/android/wm/shell/bubbles/IBubblesListener;)V
.end method
