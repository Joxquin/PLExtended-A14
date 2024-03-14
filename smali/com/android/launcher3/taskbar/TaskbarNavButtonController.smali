.class public final Lcom/android/launcher3/taskbar/TaskbarNavButtonController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# instance fields
.field private final mAssistUtils:Lcom/android/quickstep/util/AssistUtils;

.field private mAssistantLongPressEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLastScreenPinLongPress:J

.field private mLongPressedButtons:I

.field private final mResetLongPress:Lcom/android/launcher3/taskbar/s0;

.field private mScreenPinned:Z

.field private final mService:Lcom/android/quickstep/TouchInteractionService;

.field private mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private final mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/TouchInteractionService;Lcom/android/quickstep/SystemUiProxy;Landroid/os/Handler;Lcom/android/quickstep/util/AssistUtils;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLongPressedButtons:I

    new-instance v0, Lcom/android/launcher3/taskbar/s0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/s0;-><init>(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mResetLongPress:Lcom/android/launcher3/taskbar/s0;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mService:Lcom/android/quickstep/TouchInteractionService;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mAssistUtils:Lcom/android/quickstep/util/AssistUtils;

    return-void
.end method

.method public static a(Lcom/android/launcher3/taskbar/TaskbarNavButtonController;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLongPressedButtons:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLastScreenPinLongPress:J

    return-void
.end method

.method private backRecentsLongpress(I)Z
    .locals 9

    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLongPressedButtons:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLongPressedButtons:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mScreenPinned:Z

    const/4 v2, 0x0

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v3, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLastScreenPinLongPress:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mResetLongPress:Lcom/android/launcher3/taskbar/s0;

    iget-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mHandler:Landroid/os/Handler;

    if-nez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLastScreenPinLongPress:J

    const-wide/16 p0, 0x12c

    invoke-virtual {v8, v7, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    sub-long/2addr v0, v3

    const-wide/16 v3, 0xc8

    cmp-long p1, v0, v3

    if-lez p1, :cond_2

    iput v2, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLongPressedButtons:I

    iput-wide v5, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLastScreenPinLongPress:J

    goto :goto_1

    :cond_2
    iget p1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLongPressedButtons:I

    const/4 v0, 0x5

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {p1}, Lcom/android/quickstep/SystemUiProxy;->stopScreenPinning()V

    invoke-virtual {v8, v7}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput v2, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLongPressedButtons:I

    iput-wide v5, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLastScreenPinLongPress:J

    :cond_3
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    if-nez p0, :cond_0

    const-string p0, "TaskbarNavButtonController"

    const-string p1, "No stats log manager to log taskbar button event"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method


# virtual methods
.method public final dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TaskbarNavButtonController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmLastScreenPinLongPress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mLastScreenPinLongPress:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tmScreenPinned="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mScreenPinned:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarControllers;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-void
.end method

.method public final onButtonClick(Landroid/view/View;I)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    if-eq p2, v0, :cond_8

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mService:Lcom/android/quickstep/TouchInteractionService;

    if-eq p2, v0, :cond_6

    const/4 v0, 0x4

    if-eq p2, v0, :cond_4

    const/16 v0, 0x8

    if-eq p2, v0, :cond_3

    const/16 v0, 0x10

    if-eq p2, v0, :cond_2

    const/16 p0, 0x20

    if-eq p2, p0, :cond_1

    const/16 p0, 0x40

    if-eq p2, p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/SystemUiProxy;->toggleNotificationPanel()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/quickstep/SystemUiProxy;->toggleNotificationPanel()V

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_A11Y_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    invoke-virtual {v1}, Landroid/app/Service;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/SystemUiProxy;->notifyAccessibilityButtonClicked(I)V

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_IME_SWITCHER_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    invoke-virtual {p1}, Lcom/android/quickstep/SystemUiProxy;->onImeSwitcherPressed()V

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_OVERVIEW_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mScreenPinned:Z

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    const-string p0, "Main"

    const-string p1, "onOverviewToggle"

    invoke-static {p0, p1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "recentapps"

    invoke-static {p0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/quickstep/TouchInteractionService;->getOverviewCommandHelper()Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_HOME_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    const-string p0, "homekey"

    invoke-static {p0}, Lcom/android/quickstep/TaskUtils;->closeSystemWindowsAsync(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/quickstep/views/DesktopTaskView;->DESKTOP_IS_PROTO2_ENABLED:Z

    if-eqz p0, :cond_7

    sget-object p0, Lcom/android/quickstep/LauncherActivityInterface;->INSTANCE:Lcom/android/quickstep/LauncherActivityInterface;

    invoke-virtual {p0}, Lcom/android/quickstep/LauncherActivityInterface;->getDesktopVisibilityController()Lcom/android/launcher3/statehandlers/DesktopVisibilityController;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/statehandlers/DesktopVisibilityController;->onHomeActionTriggered()V

    :cond_7
    invoke-virtual {v1}, Lcom/android/quickstep/TouchInteractionService;->getOverviewCommandHelper()Lcom/android/quickstep/OverviewCommandHelper;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/quickstep/OverviewCommandHelper;->addCommand(I)V

    goto :goto_0

    :cond_8
    sget-object p2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_BACK_BUTTON_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    invoke-virtual {p1}, Lcom/android/quickstep/SystemUiProxy;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public final onButtonLongClick(Landroid/view/View;I)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    if-eq p2, v0, :cond_5

    const/4 p1, 0x2

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mSystemUiProxy:Lcom/android/quickstep/SystemUiProxy;

    if-eq p2, p1, :cond_2

    const/4 p1, 0x4

    if-eq p2, p1, :cond_1

    const/16 p1, 0x10

    if-eq p2, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_A11Y_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    invoke-virtual {v1}, Lcom/android/quickstep/SystemUiProxy;->notifyAccessibilityButtonLongClicked()V

    return v0

    :cond_1
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_OVERVIEW_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->backRecentsLongpress(I)Z

    move-result p0

    return p0

    :cond_2
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_HOME_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mScreenPinned:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mAssistantLongPressEnabled:Z

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mAssistUtils:Lcom/android/quickstep/util/AssistUtils;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/AssistUtils;->tryStartAssistOverride(I)Z

    move-result p0

    if-nez p0, :cond_4

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string p2, "invocation_type"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, p0}, Lcom/android/quickstep/SystemUiProxy;->startAssistant(Landroid/os/Bundle;)V

    :cond_4
    :goto_0
    return v0

    :cond_5
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASKBAR_BACK_BUTTON_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->logEvent(Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;)V

    invoke-direct {p0, p2}, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->backRecentsLongpress(I)Z

    move-result p0

    return p0
.end method

.method public final onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-void
.end method

.method public final setAssistantLongPressEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mAssistantLongPressEnabled:Z

    return-void
.end method

.method public final updateSysuiFlags(I)V
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarNavButtonController;->mScreenPinned:Z

    return-void
.end method
