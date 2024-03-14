.class public final Lcom/android/launcher3/pm/UserCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field public static final ACTION_PROFILE_ADDED:Ljava/lang/String;

.field public static final ACTION_PROFILE_LOCKED:Ljava/lang/String;

.field public static final ACTION_PROFILE_REMOVED:Ljava/lang/String;

.field public static final ACTION_PROFILE_UNLOCKED:Ljava/lang/String;

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUserChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private final mUserEventListeners:Ljava/util/List;

.field private mUserToSerialMap:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_U:Z

    if-eqz v0, :cond_0

    const-string v1, "android.intent.action.PROFILE_ADDED"

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    :goto_0
    sput-object v1, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_ADDED:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.PROFILE_REMOVED"

    goto :goto_1

    :cond_1
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    :goto_1
    sput-object v1, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_REMOVED:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v1, "android.intent.action.PROFILE_ACCESSIBLE"

    goto :goto_2

    :cond_2
    const-string v1, "android.intent.action.MANAGED_PROFILE_UNLOCKED"

    :goto_2
    sput-object v1, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_UNLOCKED:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v0, "android.intent.action.PROFILE_INACCESSIBLE"

    goto :goto_3

    :cond_3
    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    :goto_3
    sput-object v0, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_LOCKED:Ljava/lang/String;

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, LR0/d;

    invoke-direct {v1}, LR0/d;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserEventListeners:Ljava/util/List;

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, LR0/f;

    invoke-direct {v1, p0}, LR0/f;-><init>(Lcom/android/launcher3/pm/UserCache;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iput-object p1, p0, Lcom/android/launcher3/pm/UserCache;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Ljava/util/Map;

    sget-object p1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, LR0/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LR0/e;-><init>(Lcom/android/launcher3/pm/UserCache;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/pm/UserCache;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/pm/UserCache;->updateCache()V

    return-void
.end method

.method public static b(Lcom/android/launcher3/pm/UserCache;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object p0, p0, Lcom/android/launcher3/pm/UserCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)Lcom/android/launcher3/pm/UserCache;
    .locals 1

    new-instance v0, Lcom/android/launcher3/pm/UserCache;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pm/UserCache;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static d(Lcom/android/launcher3/pm/UserCache;)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserChangeReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/launcher3/pm/UserCache;->mContext:Landroid/content/Context;

    const-string v2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    const-string v3, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    sget-object v4, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_ADDED:Ljava/lang/String;

    sget-object v5, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_REMOVED:Ljava/lang/String;

    sget-object v6, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_UNLOCKED:Ljava/lang/String;

    sget-object v7, Lcom/android/launcher3/pm/UserCache;->ACTION_PROFILE_LOCKED:Ljava/lang/String;

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/pm/UserCache;->updateCache()V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/pm/UserCache;Ljava/util/function/BiConsumer;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pm/UserCache;->mUserEventListeners:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static h(Lcom/android/launcher3/pm/UserCache;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, LR0/e;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, LR0/e;-><init>(Lcom/android/launcher3/pm/UserCache;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const-string v0, "android.intent.extra.USER"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/pm/UserCache;->mUserEventListeners:Ljava/util/List;

    new-instance v1, LR0/g;

    invoke-direct {v1, p1, v0}, LR0/g;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :goto_0
    return-void
.end method

.method private updateCache()V
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addUserEventListener(Lcom/android/launcher3/e0;)LR0/h;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/pm/UserCache;->mUserEventListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, LR0/h;

    invoke-direct {v0, p0, p1}, LR0/h;-><init>(Lcom/android/launcher3/pm/UserCache;Lcom/android/launcher3/e0;)V

    return-object v0
.end method

.method public final close()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, LR0/e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LR0/e;-><init>(Lcom/android/launcher3/pm/UserCache;I)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getSerialNumberForUser(Landroid/os/UserHandle;)J
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public final getUserForSerialNumber(J)Landroid/os/UserHandle;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, LR0/i;

    invoke-direct {p2, p1}, LR0/i;-><init>(Ljava/lang/Long;)V

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, LR0/j;

    invoke-direct {p1}, LR0/j;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0
.end method

.method public final getUserProfiles()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/pm/UserCache;->mUserToSerialMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
