.class public final Lcom/android/launcher3/popup/PopupDataProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;


# instance fields
.field private mAllWidgets:Ljava/util/List;

.field private mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

.field private mDeepShortcutMap:Ljava/util/HashMap;

.field private final mNotificationDotsChangeListener:Ljava/util/function/Consumer;

.field private mPackageUserToDotInfos:Ljava/util/Map;

.field private mRecommendedWidgets:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mRecommendedWidgets:Ljava/util/List;

    sget-object v0, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->INSTANCE:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    iput-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mNotificationDotsChangeListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public static getNotificationsForItem(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)Ljava/util/List;
    .locals 2

    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutUtil;->getShortcutIdIfPinnedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/util/ShortcutUtil;->getPersonKeysIfPinnedShortcut(Lcom/android/launcher3/model/data/ItemInfo;)[Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lcom/android/launcher3/popup/l;

    invoke-direct {v1, v0, p0}, Lcom/android/launcher3/popup/l;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PopupDataProvider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tmPackageUserToDotInfos:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getAllWidgets()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    return-object p0
.end method

.method public final getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .locals 2

    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dot/DotInfo;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher3/popup/PopupDataProvider;->getNotificationsForItem(Lcom/android/launcher3/model/data/ItemInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v1

    :cond_2
    return-object p0
.end method

.method public final getRecommendedWidgets()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/g;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/launcher3/popup/g;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/h;

    invoke-direct {v2, v0, v3}, Lcom/android/launcher3/popup/h;-><init>(Ljava/util/HashMap;I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mRecommendedWidgets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/launcher3/popup/i;

    invoke-direct {v1, v0}, Lcom/android/launcher3/popup/i;-><init>(Ljava/util/HashMap;)V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/popup/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/g;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getSelectedAppWidgets(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/widget/model/WidgetsListContentEntry;
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/popup/j;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/popup/j;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    return-object p0
.end method

.method public final getShortcutCountForItem(Lcom/android/launcher3/model/data/ItemInfo;)I
    .locals 3

    invoke-static {p1}, Lcom/android/launcher3/util/ShortcutUtil;->supportsDeepShortcuts(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v0, p1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public final getWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 2

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/popup/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/popup/j;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/popup/k;

    invoke-direct {v0}, Lcom/android/launcher3/popup/k;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/launcher3/popup/j;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/popup/j;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final onNotificationFullRefresh(Ljava/util/List;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    new-instance v2, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/dot/DotInfo;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/launcher3/dot/DotInfo;

    invoke-direct {v3}, Lcom/android/launcher3/dot/DotInfo;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {v1}, Lcom/android/launcher3/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/notification/NotificationKeyData;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/launcher3/dot/DotInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dot/DotInfo;

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/dot/DotInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->getNotificationCount()I

    move-result v2

    invoke-virtual {v3}, Lcom/android/launcher3/dot/DotInfo;->getNotificationCount()I

    move-result v4

    if-eq v2, v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Lcom/android/launcher3/popup/j;

    const/4 v1, 0x5

    invoke-direct {p1, v1, v0}, Lcom/android/launcher3/popup/j;-><init>(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mNotificationDotsChangeListener:Ljava/util/function/Consumer;

    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {v1, p1}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->onNotificationDotsUpdated(Lcom/android/launcher3/popup/j;)V

    :cond_6
    iget-object p0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {p0, v0}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->trimNotifications(Ljava/util/Map;)V

    return-void
.end method

.method public final onNotificationPosted(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dot/DotInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/dot/DotInfo;

    invoke-direct {v0}, Lcom/android/launcher3/dot/DotInfo;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/launcher3/dot/DotInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/launcher3/popup/j;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p1}, Lcom/android/launcher3/popup/j;-><init>(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mNotificationDotsChangeListener:Ljava/util/function/Consumer;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {p0, p2}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->onNotificationDotsUpdated(Lcom/android/launcher3/popup/j;)V

    :cond_1
    return-void
.end method

.method public final onNotificationRemoved(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dot/DotInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/launcher3/dot/DotInfo;->removeNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/android/launcher3/popup/j;

    const/4 v0, 0x3

    invoke-direct {p2, v0, p1}, Lcom/android/launcher3/popup/j;-><init>(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mNotificationDotsChangeListener:Ljava/util/function/Consumer;

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {p1, p2}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->onNotificationDotsUpdated(Lcom/android/launcher3/popup/j;)V

    iget-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mPackageUserToDotInfos:Ljava/util/Map;

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {p0, p1}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->trimNotifications(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public final setAllWidgets(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mAllWidgets:Ljava/util/List;

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {p0}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->onWidgetsBound()V

    return-void
.end method

.method public final setChangeListener(Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;)V
    .locals 0

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->INSTANCE:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    return-void
.end method

.method public final setDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mDeepShortcutMap:Ljava/util/HashMap;

    return-void
.end method

.method public final setRecommendedWidgets(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mRecommendedWidgets:Ljava/util/List;

    iget-object p0, p0, Lcom/android/launcher3/popup/PopupDataProvider;->mChangeListener:Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;

    invoke-interface {p0}, Lcom/android/launcher3/popup/PopupDataProvider$PopupDataChangeListener;->onRecommendedWidgetsBound()V

    return-void
.end method
