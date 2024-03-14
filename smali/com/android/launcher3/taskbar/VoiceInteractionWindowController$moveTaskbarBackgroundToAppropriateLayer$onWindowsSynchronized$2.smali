.class final Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$2;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$2;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->getContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$2;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->access$getSeparateWindowForTaskbarBackground$p(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->removeWindowView(Lcom/android/launcher3/views/BaseDragLayer;)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
