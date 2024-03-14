.class public final Lcom/android/launcher3/notification/NotificationInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final autoCancel:Z

.field public final dismissable:Z

.field public final intent:Landroid/app/PendingIntent;

.field private mIconColor:I

.field private mIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsIconLarge:Z

.field private final mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field public final notificationKey:Ljava/lang/String;

.field public final text:Ljava/lang/CharSequence;

.field public final title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->title:Ljava/lang/CharSequence;

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/app/Notification;->getBadgeIconType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    :goto_0
    const/4 v4, 0x0

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->color:I

    iput v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    iput-boolean v4, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    goto :goto_2

    :cond_2
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    iput-boolean v3, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    :goto_2
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/launcher3/icons/cache/BaseIconCache;->getDefaultIcon(Landroid/os/UserHandle;)Lcom/android/launcher3/icons/BitmapInfo;

    move-result-object p2

    invoke-virtual {p2, v4, p1}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(ILandroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    iget p1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_4

    move p2, v3

    goto :goto_3

    :cond_4
    move p2, v4

    :goto_3
    iput-boolean p2, p0, Lcom/android/launcher3/notification/NotificationInfo;->autoCancel:Z

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    :goto_4
    iput-boolean v3, p0, Lcom/android/launcher3/notification/NotificationInfo;->dismissable:Z

    iput-object p3, p0, Lcom/android/launcher3/notification/NotificationInfo;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final getIconForBackground(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lcom/android/launcher3/notification/NotificationInfo;->mIsIconLarge:Z

    if-eqz v2, :cond_0

    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_0
    iget v2, v0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    if-nez v2, :cond_1

    const v2, 0x7f0602e4

    move-object/from16 v3, p2

    invoke-virtual {v3, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    :cond_1
    invoke-static {v2, v1}, LE/a;->e(II)D

    move-result-wide v3

    const-wide/high16 v5, 0x4012000000000000L    # 4.5

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v3, 0x3

    new-array v3, v3, [D

    invoke-static {v1, v3}, LE/a;->g(I[D)V

    const/4 v4, 0x0

    aget-wide v7, v3, v4

    invoke-static {v2, v3}, LE/a;->g(I[D)V

    aget-wide v9, v3, v4

    const-wide/high16 v11, 0x4049000000000000L    # 50.0

    cmpg-double v2, v7, v11

    const/4 v7, 0x1

    if-gez v2, :cond_3

    move v2, v7

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    if-eqz v2, :cond_4

    move-wide v11, v9

    goto :goto_1

    :cond_4
    const-wide/16 v11, 0x0

    :goto_1
    if-eqz v2, :cond_5

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    :cond_5
    aget-wide v7, v3, v7

    const/4 v13, 0x2

    aget-wide v19, v3, v13

    :goto_2
    const/16 v3, 0xf

    if-ge v4, v3, :cond_9

    sub-double v13, v9, v11

    const-wide v15, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v3, v13, v15

    if-lez v3, :cond_9

    add-double v13, v11, v9

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v21, v13, v15

    move-wide/from16 v13, v21

    move-wide v15, v7

    move-wide/from16 v17, v19

    invoke-static/range {v13 .. v18}, LE/a;->a(DDD)I

    move-result v3

    invoke-static {v3, v1}, LE/a;->e(II)D

    move-result-wide v13

    cmpl-double v3, v13, v5

    if-lez v3, :cond_6

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_8

    :cond_7
    move-wide/from16 v11, v21

    goto :goto_4

    :cond_8
    :goto_3
    move-wide/from16 v9, v21

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    move-wide v13, v11

    move-wide v15, v7

    move-wide/from16 v17, v19

    invoke-static/range {v13 .. v18}, LE/a;->a(DDD)I

    move-result v2

    :goto_5
    iput v2, v0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    iget-object v1, v0, Lcom/android/launcher3/notification/NotificationInfo;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget v0, v0, Lcom/android/launcher3/notification/NotificationInfo;->mIconColor:I

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object v1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v3, v1, v2}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->allowBGLaunch(Landroid/app/ActivityOptions;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationInfo;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_NOTIFICATION_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p1, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :goto_0
    iget-boolean p1, p0, Lcom/android/launcher3/notification/NotificationInfo;->autoCancel:Z

    if-eqz p1, :cond_2

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/launcher3/notification/NotificationListener;->cancelNotificationFromLauncher(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 p0, 0x1

    const p1, 0x40002

    invoke-static {v0, p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    return-void
.end method
