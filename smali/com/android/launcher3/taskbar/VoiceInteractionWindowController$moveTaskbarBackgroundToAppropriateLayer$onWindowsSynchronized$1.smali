.class final Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$1;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$onWindowsSynchronized$1;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->access$getControllers$p(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)Lcom/android/launcher3/taskbar/TaskbarControllers;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarDragLayerController:Lcom/android/launcher3/taskbar/TaskbarDragLayerController;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarDragLayerController;->setIsBackgroundDrawnElsewhere(Z)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0

    :cond_0
    const-string p0, "controllers"

    invoke-static {p0}, Lkotlin/jvm/internal/h;->g(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
