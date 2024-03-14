.class public final Lcom/google/android/apps/nexuslauncher/allapps/v1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 3

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->IME_STICKY_SNACKBAR_EDU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SHOW_KEYBOARD_OPTION_IN_ALL_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->t:Lcom/android/launcher3/util/MainThreadInitializedObject;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->j:Lcom/google/android/apps/nexuslauncher/allapps/s1;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/s1;->v:Lcom/google/android/apps/nexuslauncher/allapps/t1;

    iget-boolean v0, v0, Lcom/google/android/apps/nexuslauncher/allapps/t1;->m:Z

    if-nez v0, :cond_4

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-static {v1}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    move-result-object v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/y0;->K:Lcom/android/launcher3/ConstantItem;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherPrefs;->get(Lcom/android/launcher3/ConstantItem;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Lcom/google/android/apps/nexuslauncher/c;->n:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->e:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    iget v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->closeAction:I

    if-eq v0, v1, :cond_3

    :cond_2
    sget-object v1, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->d:Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;

    iget v1, v1, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar$CloseAction;->closeAction:I

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-static {p0}, Lcom/google/android/apps/nexuslauncher/allapps/PinKeyboardSnackBar;->a(Lcom/android/launcher3/views/ActivityContext;)V

    :cond_4
    :goto_1
    return-void
.end method
