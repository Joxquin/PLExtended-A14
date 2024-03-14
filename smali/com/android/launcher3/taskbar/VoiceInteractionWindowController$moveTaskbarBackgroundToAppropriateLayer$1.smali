.class final Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# instance fields
.field final synthetic $onWindowsSynchronized:Lm3/a;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;Lm3/a;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;->$onWindowsSynchronized:Lm3/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->access$getSeparateWindowForTaskbarBackground$p(Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;)Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;->this$0:Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController;->getContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object v1

    const-string v2, "context.dragLayer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/h;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/VoiceInteractionWindowController$moveTaskbarBackgroundToAppropriateLayer$1;->$onWindowsSynchronized:Lm3/a;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/animation/C;->a(Landroid/view/View;Landroid/view/View;Lm3/a;)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
