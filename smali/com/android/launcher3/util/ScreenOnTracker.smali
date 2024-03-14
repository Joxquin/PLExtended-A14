.class public final Lcom/android/launcher3/util/ScreenOnTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;


# instance fields
.field private mIsScreenOn:Z

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/A;

    invoke-direct {v1}, Lcom/android/launcher3/util/A;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/launcher3/util/B;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/util/B;-><init>(Lcom/android/launcher3/util/ScreenOnTracker;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mIsScreenOn:Z

    const-string p0, "android.intent.action.USER_PRESENT"

    const-string v1, "android.intent.action.SCREEN_ON"

    const-string v2, "android.intent.action.SCREEN_OFF"

    filled-new-array {v1, v2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/ScreenOnTracker;Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mIsScreenOn:Z

    invoke-interface {p1, p0}, Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;->onScreenOnChanged(Z)V

    return-void
.end method

.method public static b(Lcom/android/launcher3/util/ScreenOnTracker;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mIsScreenOn:Z

    new-instance p1, Lcom/android/launcher3/util/B;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher3/util/B;-><init>(Lcom/android/launcher3/util/ScreenOnTracker;I)V

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mIsScreenOn:Z

    new-instance p1, Lcom/android/launcher3/util/B;

    invoke-direct {p1, p0, v1}, Lcom/android/launcher3/util/B;-><init>(Lcom/android/launcher3/util/ScreenOnTracker;I)V

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    const-string p0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/android/launcher3/util/C;

    invoke-direct {p0}, Lcom/android/launcher3/util/C;-><init>()V

    invoke-virtual {v2, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic c(Landroid/content/Context;)Lcom/android/launcher3/util/ScreenOnTracker;
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/ScreenOnTracker;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ScreenOnTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public final addListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final isScreenOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mIsScreenOn:Z

    return p0
.end method

.method public final removeListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/util/ScreenOnTracker;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
