.class public final synthetic Lcom/google/android/apps/nexuslauncher/allapps/V0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;I)V
    .locals 0

    iput p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/V0;->d:I

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/V0;->e:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/V0;->d:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/V0;->e:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->e:Lcom/android/launcher3/LauncherPrefs;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->K:Lcom/android/launcher3/ConstantItem;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->f:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->closeAction:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/ConstantItem;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/LauncherPrefs;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "pref_search_show_keyboard"

    iget-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->h:Z

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->handleClose(Z)V

    sget-object p1, Lcom/google/android/apps/nexuslauncher/c;->n:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->g:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->a0:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->g:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->q:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :goto_0
    return-void

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/V0;->e:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->e:Lcom/android/launcher3/LauncherPrefs;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->K:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->d:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->closeAction:I

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->e:Lcom/android/launcher3/LauncherPrefs;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->e:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->closeAction:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/ConstantItem;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->g:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->r:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p1, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_2

    :cond_1
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->e:Lcom/android/launcher3/LauncherPrefs;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->g:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->closeAction:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/LauncherPrefs;->put(Lcom/android/launcher3/ConstantItem;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->g:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->b0:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p1, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->handleClose(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
