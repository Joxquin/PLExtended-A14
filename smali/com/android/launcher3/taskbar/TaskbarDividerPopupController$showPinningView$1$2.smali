.class final Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lm3/a;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->access$getLauncherPrefs$p(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherPrefs;->TASKBAR_PINNING:Lcom/android/launcher3/ConstantItem;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController$showPinningView$1$2;->this$0:Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;->access$getLauncherPrefs$p(Lcom/android/launcher3/taskbar/TaskbarDividerPopupController;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/ConstantItem;Ljava/lang/Object;)V

    sget-object p0, Le3/f;->a:Le3/f;

    return-object p0
.end method
