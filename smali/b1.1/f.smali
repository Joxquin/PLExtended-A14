.class public final synthetic Lb1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/uioverrides/QuickstepLauncher;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/QuickstepLauncher;I)V
    .locals 0

    iput p2, p0, Lb1/f;->a:I

    iput-object p1, p0, Lb1/f;->b:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lb1/f;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lb1/f;->b:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    check-cast p1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->t(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lb1/f;->b:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    check-cast p1, Landroid/animation/AnimatorSet;

    invoke-static {p0, p1}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->u(Lcom/android/launcher3/uioverrides/QuickstepLauncher;Landroid/animation/AnimatorSet;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lb1/f;->b:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object p1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/uioverrides/states/OverviewState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StateManager;->moveToRestState()V

    :goto_0
    return-void

    :goto_1
    iget-object p0, p0, Lb1/f;->b:Lcom/android/launcher3/uioverrides/QuickstepLauncher;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0}, Lcom/android/launcher3/uioverrides/QuickstepLauncher;->r(Lcom/android/launcher3/uioverrides/QuickstepLauncher;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
