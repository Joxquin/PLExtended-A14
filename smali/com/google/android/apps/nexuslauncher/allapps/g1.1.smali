.class public Lcom/google/android/apps/nexuslauncher/allapps/g1;
.super Lcom/android/launcher3/widget/PendingAddShortcutInfo;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/ItemClickHandler$ItemClickProxy;


# instance fields
.field public d:Ljava/lang/String;

.field public e:I

.field public f:Landroid/graphics/drawable/Icon;

.field public g:Z

.field public h:Landroid/content/Intent;

.field public i:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/CharSequence;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->e:I

    .line 3
    iput-boolean p5, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->g:Z

    const/16 p5, 0x9

    .line 4
    iput p5, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 5
    iput p6, p0, Lcom/android/launcher3/model/data/ItemInfo;->animationType:I

    if-nez p3, :cond_0

    .line 6
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 7
    iput-object p4, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const/16 p3, -0xc8

    .line 8
    iput p3, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 9
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->d:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->f:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/allapps/g1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/widget/PendingAddShortcutInfo;)V

    const/4 p1, 0x0

    .line 12
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->e:I

    return-void
.end method

.method public static t(Landroid/content/Intent;Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/allapps/g1;
    .locals 8

    new-instance v7, Lcom/google/android/apps/nexuslauncher/allapps/g1;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    move-object v2, p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/nexuslauncher/allapps/g1;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/CharSequence;ZZ)V

    const/4 p0, 0x2

    iput p0, v7, Lcom/android/launcher3/model/data/ItemInfo;->animationType:I

    return-object v7
.end method


# virtual methods
.method public final buildProto(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->setPackageName$1(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;->setTitle$1(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getDefaultItemInfoBuilder()Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setSearchActionItem(Lcom/android/launcher3/logger/LauncherAtom$SearchActionItem$Builder;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getContainerInfo()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$Builder;->setContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)V

    invoke-virtual {v0}, Lcom/google/protobuf/E;->build()Lcom/google/protobuf/J;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo;

    return-object p0
.end method

.method public final clone()Lcom/android/launcher3/PendingAddItemInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/g1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/g1;)V

    return-object v0
.end method

.method public final clone()Lcom/android/launcher3/model/data/ItemInfoWithIcon;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/g1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/g1;)V

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/g1;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/g1;)V

    return-object v0
.end method

.method public final copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    check-cast p1, Lcom/google/android/apps/nexuslauncher/allapps/g1;

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/g1;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->d:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/g1;->f:Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->f:Landroid/graphics/drawable/Icon;

    iget v0, p1, Lcom/google/android/apps/nexuslauncher/allapps/g1;->e:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->e:I

    iget-boolean p1, p1, Lcom/google/android/apps/nexuslauncher/allapps/g1;->g:Z

    iput-boolean p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->g:Z

    return-void
.end method

.method public final getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mActivityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    if-nez v0, :cond_6

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->u(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->h:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->h:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->h:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "extra_shortcut_badge_override_package"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->h:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->f:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const/high16 v2, 0x10d0000

    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/b1;

    invoke-direct {v2, p1, v0}, Lcom/google/android/apps/nexuslauncher/allapps/b1;-><init>(Landroid/content/Context;Landroid/content/pm/ShortcutInfo;)V

    invoke-direct {v1, v0, v2, p1}, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;-><init>(Landroid/content/pm/ShortcutInfo;Ljava/util/function/Supplier;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mActivityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAddItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-string v1, "."

    if-nez v0, :cond_4

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->d:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez v0, :cond_5

    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/d1;

    iget-object v2, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/google/android/apps/nexuslauncher/allapps/d1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/g1;Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->mActivityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    :cond_6
    :goto_3
    invoke-super {p0, p1}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->getActivityInfo(Landroid/content/Context;)Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getIntent()Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->h:Landroid/content/Intent;

    return-object p0
.end method

.method public final onItemClicked(Landroid/view/View;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->shouldUseBackgroundAnimation()Z

    move-result v9

    const/16 v10, 0x47

    if-eqz v9, :cond_0

    invoke-static {p1, v10}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->h:Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/nexuslauncher/c;->k:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_SEARCH_UNINSTALLED_APPS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "market://details"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "search_result_alleyoop"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v7}, Lcom/google/android/apps/nexuslauncher/allapps/y0;->f(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/allapps/y0;

    move-result-object v2

    iput-boolean v1, v2, Lcom/google/android/apps/nexuslauncher/allapps/y0;->J:Z

    new-instance v1, Landroid/app/PendingIntent;

    new-instance v3, Lcom/google/android/apps/nexuslauncher/allapps/f1;

    invoke-direct {v3, v2}, Lcom/google/android/apps/nexuslauncher/allapps/f1;-><init>(Lcom/google/android/apps/nexuslauncher/allapps/y0;)V

    invoke-direct {v1, v3}, Landroid/app/PendingIntent;-><init>(Landroid/content/IIntentSender;)V

    new-instance v2, Lcom/android/launcher3/util/StartActivityParams;

    invoke-direct {v2, v1, v11}, Lcom/android/launcher3/util/StartActivityParams;-><init>(Landroid/app/PendingIntent;I)V

    iput-object v0, v2, Lcom/android/launcher3/util/StartActivityParams;->intent:Landroid/content/Intent;

    invoke-static {v7, v2}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/util/StartActivityParams;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->u(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/launcher3/util/StartActivityParams;

    invoke-direct {v1, v12, v11}, Lcom/android/launcher3/util/StartActivityParams;-><init>(Landroid/app/PendingIntent;I)V

    iput-object v0, v1, Lcom/android/launcher3/util/StartActivityParams;->intent:Landroid/content/Intent;

    invoke-static {v7, v1}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/util/StartActivityParams;)Landroid/content/Intent;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v8, p1, v0, p0}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    move-result-object v12

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->i:Landroid/app/PendingIntent;

    if-eqz v0, :cond_6

    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->u(I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v8, p1, v0, p0}, Lcom/android/launcher3/views/ActivityContext;->sendPendingIntentWithAnimation(Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    :goto_1
    move-object v12, p0

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v2}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->u(I)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/android/launcher3/util/StartActivityParams;

    invoke-direct {v1, v12, v11}, Lcom/android/launcher3/util/StartActivityParams;-><init>(Landroid/app/PendingIntent;I)V

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/util/StartActivityParams;->intentSender:Landroid/content/IntentSender;

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Lcom/android/launcher3/util/StartActivityParams;->options:Landroid/os/Bundle;

    invoke-static {v7, v1}, Lcom/android/launcher3/proxy/ProxyActivityStarter;->getLaunchIntent(Landroid/content/Context;Lcom/android/launcher3/util/StartActivityParams;)Landroid/content/Intent;

    move-result-object v0

    invoke-interface {v8, p1, v0, p0}, Lcom/android/launcher3/views/ActivityContext;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/RunnableList;

    move-result-object p0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/4 p1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    move-object v0, v7

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;IIILandroid/os/Bundle;)V

    invoke-interface {v8}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    sget-object p1, Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;->S:Lcom/google/android/apps/nexuslauncher/logging/NexusLauncherEvent;

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1301f9

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v7, p0, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_6
    :goto_2
    if-eqz v9, :cond_8

    if-eqz v12, :cond_7

    new-instance p0, Lcom/google/android/apps/nexuslauncher/allapps/c1;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/allapps/c1;-><init>()V

    invoke-virtual {v12, p0}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_7
    invoke-static {v10}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    :cond_8
    :goto_3
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    return-void
.end method

.method public final shouldUseBackgroundAnimation()Z
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->shouldUseBackgroundAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->h:Landroid/content/Intent;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->i:Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->u(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/allapps/g1;->u(I)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    move v1, v2

    :cond_4
    return v1
.end method

.method public final u(I)Z
    .locals 0

    iget p0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->e:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final v(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->e:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->e:I

    return-void
.end method

.method public final w(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->i:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "SearchActionItemInfo can only have either an Intent or a PendingIntent"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/allapps/g1;->h:Landroid/content/Intent;

    return-void
.end method
