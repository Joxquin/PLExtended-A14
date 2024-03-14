.class public final Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field final synthetic $onAttachedToWindow:Lm3/a;

.field final synthetic $this_runWhenAttachedToWindow:Landroid/view/View;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;


# direct methods
.method public constructor <init>(Lm3/a;Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$init$1;Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;->$onAttachedToWindow:Lm3/a;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;->$this_runWhenAttachedToWindow:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;->$onAttachedToWindow:Lm3/a;

    invoke-interface {p1}, Lm3/a;->invoke()Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;->$this_runWhenAttachedToWindow:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$runWhenAttachedToWindow$1;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->access$setPendingAttachedToWindowListener$p(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
