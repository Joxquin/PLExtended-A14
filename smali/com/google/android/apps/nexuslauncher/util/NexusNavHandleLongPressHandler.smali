.class public Lcom/google/android/apps/nexuslauncher/util/NexusNavHandleLongPressHandler;
.super Lcom/android/quickstep/inputconsumers/NavHandleLongPressHandler;
.source "SourceFile"


# instance fields
.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/inputconsumers/NavHandleLongPressHandler;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/util/NexusNavHandleLongPressHandler;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getLongPressRunnable()Ljava/lang/Runnable;
    .locals 4

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_LONG_PRESS_NAV_HANDLE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/util/NexusNavHandleLongPressHandler;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/quickstep/util/AssistStateManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/util/AssistStateManager;

    invoke-virtual {v0}, Lcom/android/quickstep/util/AssistStateManager;->isSettingsNavHandleEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    const-string v3, "NexusNavHandleLongPressHandler"

    if-nez v0, :cond_1

    const-string p0, "Omni invocation failed: entry point disabled"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;->c()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "Omni invocation failed: precondition not satisfied"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    new-instance v1, Lc2/b;

    invoke-direct {v1, p0, v0}, Lc2/b;-><init>(Lcom/google/android/apps/nexuslauncher/util/NexusNavHandleLongPressHandler;Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;)V

    return-object v1
.end method
