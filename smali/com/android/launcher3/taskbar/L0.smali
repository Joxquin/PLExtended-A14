.class public final synthetic Lcom/android/launcher3/taskbar/L0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:F


# direct methods
.method public synthetic constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/taskbar/L0;->a:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget p0, p0, Lcom/android/launcher3/taskbar/L0;->a:F

    check-cast p1, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;

    iget-object v0, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleBarViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleBarViewController;->setTranslationYForSwipe(F)V

    iget-object p1, p1, Lcom/android/launcher3/taskbar/bubbles/BubbleControllers;->bubbleStashedHandleViewController:Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/taskbar/bubbles/BubbleStashedHandleViewController;->setTranslationYForSwipe(F)V

    return-void
.end method
