.class Lcom/android/quickstep/TouchInteractionService$1;
.super Landroid/content/IIntentSender$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/TouchInteractionService;

.field final synthetic val$homeIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/TouchInteractionService;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    iput-object p2, p0, Lcom/android/quickstep/TouchInteractionService$1;->val$homeIntent:Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/TouchInteractionService$1;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/TouchInteractionService$1;->lambda$send$0(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$send$0(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/TouchInteractionService$1;->this$0:Lcom/android/quickstep/TouchInteractionService;

    invoke-static {p0}, Lcom/android/quickstep/TouchInteractionService;->k(Lcom/android/quickstep/TouchInteractionService;)Lcom/android/launcher3/taskbar/TaskbarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarManager;->toggleAllApps(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-object p2, p0, Lcom/android/quickstep/TouchInteractionService$1;->val$homeIntent:Landroid/content/Intent;

    new-instance p3, Lcom/android/quickstep/T1;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p2, p4}, Lcom/android/quickstep/T1;-><init>(Landroid/os/Binder;Ljava/lang/Object;I)V

    invoke-virtual {p1, p3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
