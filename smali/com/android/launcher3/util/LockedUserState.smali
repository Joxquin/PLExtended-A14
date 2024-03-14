.class public final Lcom/android/launcher3/util/LockedUserState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;


# instance fields
.field private isUserUnlocked:Z

.field private final isUserUnlockedAtLauncherStartup:Z

.field private final mContext:Landroid/content/Context;

.field private final mUserUnlockedActions:Lcom/android/launcher3/util/RunnableList;

.field private final mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/util/LockedUserState$Companion$INSTANCE$1;->INSTANCE:Lcom/android/launcher3/util/LockedUserState$Companion$INSTANCE$1;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/LockedUserState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/util/LockedUserState;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedActions:Lcom/android/launcher3/util/RunnableList;

    new-instance v1, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v2, Lcom/android/launcher3/util/LockedUserState$mUserUnlockedReceiver$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/util/LockedUserState$mUserUnlockedReceiver$1;-><init>(Lcom/android/launcher3/util/LockedUserState;)V

    invoke-direct {v1, v2}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v1, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/h;->b(Ljava/lang/Object;)V

    check-cast v2, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlocked:Z

    iput-boolean v2, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlockedAtLauncherStartup:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string p0, "android.intent.action.USER_UNLOCKED"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1, p0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    :catch_0
    :goto_0
    return-void
.end method

.method public static final access$notifyUserUnlocked(Lcom/android/launcher3/util/LockedUserState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedActions:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    iget-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object p0, p0, Lcom/android/launcher3/util/LockedUserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final synthetic access$setUserUnlocked$p(Lcom/android/launcher3/util/LockedUserState;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlocked:Z

    return-void
.end method

.method public static synthetic getMUserUnlockedReceiver$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object p0, p0, Lcom/android/launcher3/util/LockedUserState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final isUserUnlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlocked:Z

    return p0
.end method

.method public final isUserUnlockedAtLauncherStartup()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/util/LockedUserState;->isUserUnlockedAtLauncherStartup:Z

    return p0
.end method

.method public final runOnUserUnlocked(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/LockedUserState;->mUserUnlockedActions:Lcom/android/launcher3/util/RunnableList;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method
