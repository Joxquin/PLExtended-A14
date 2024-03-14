.class public final Lcom/android/quickstep/BootAwarePreloader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/BootAwarePreloader;

.field private static final TAG:Ljava/lang/String; = "BootAwarePreloader"


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/quickstep/BootAwarePreloader;

    invoke-direct {v0}, Lcom/android/quickstep/BootAwarePreloader;-><init>()V

    sput-object v0, Lcom/android/quickstep/BootAwarePreloader;->INSTANCE:Lcom/android/quickstep/BootAwarePreloader;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final start(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherPrefs;->Companion:Lcom/android/launcher3/LauncherPrefs$Companion;

    invoke-static {p0}, Lcom/android/launcher3/LauncherPrefs$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/LauncherPrefs;

    sget-object v0, Lcom/android/launcher3/util/LockedUserState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {p0}, Lcom/android/launcher3/util/LockedUserState$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/util/LockedUserState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/util/LockedUserState;->isUserUnlocked()Z

    move-result p0

    if-nez p0, :cond_0

    sget p0, Lcom/android/launcher3/LauncherPrefsKt;->a:I

    :cond_0
    return-void
.end method
