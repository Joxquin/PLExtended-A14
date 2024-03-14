.class public final synthetic LW1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic d:Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW1/i;->d:Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p0, p0, LW1/i;->d:Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;

    sget p1, Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;->g:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/google/android/apps/nexuslauncher/c;->w:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/u;->m:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/nexuslauncher/u;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/u;->i:Lcom/google/android/apps/nexuslauncher/p;

    iget-boolean v0, p1, Lcom/google/android/apps/nexuslauncher/p;->c:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/p;->b:Lcom/google/android/apps/nexuslauncher/n;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/n;->b:Lcom/google/android/apps/nexuslauncher/o;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;->d:Lcom/android/launcher3/views/ActivityContext;

    new-instance v1, Landroid/content/Intent;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/o;->b:Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 p1, 0x0

    invoke-interface {v0, p0, v1, p1}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;->d:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->g:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    new-instance p1, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AssistantIconView;->e:Landroid/content/SharedPreferences;

    const-string v0, "opa_enabled"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v1

    if-nez p0, :cond_1

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;->tryStartAssistOverride(I)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const-string p0, "android.intent.action.VOICE_ASSIST"

    invoke-virtual {p1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/AssistUtilsGoogle;->d(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
