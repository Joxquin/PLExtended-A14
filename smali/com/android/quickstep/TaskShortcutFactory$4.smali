.class Lcom/android/quickstep/TaskShortcutFactory$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/quickstep/TaskShortcutFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isAvailable(Lcom/android/launcher3/BaseDraggingActivity;I)Z
    .locals 0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->supportsFreeformMultiWindow(Landroid/content/Context;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string p0, "persist.wm.debug.desktop_mode"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "persist.wm.debug.desktop_mode_2"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method


# virtual methods
.method public getShortcuts(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;
    .locals 9

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/TaskShortcutFactory$4;->isAvailable(Lcom/android/launcher3/BaseDraggingActivity;I)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    new-instance p0, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;

    const v4, 0x7f080279

    const v5, 0x7f13019e

    sget-object v8, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SYSTEM_SHORTCUT_FREE_FORM_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/quickstep/TaskShortcutFactory$FreeformSystemShortcut;-><init>(IILcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
