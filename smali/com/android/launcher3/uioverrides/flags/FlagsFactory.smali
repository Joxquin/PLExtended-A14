.class public final Lcom/android/launcher3/uioverrides/flags/FlagsFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lcom/android/launcher3/uioverrides/flags/FlagsFactory;

.field public static final synthetic a:I


# instance fields
.field private final mKeySet:Ljava/util/Set;

.field private mRestartRequested:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;

    invoke-direct {v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;-><init>()V

    sput-object v0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->INSTANCE:Lcom/android/launcher3/uioverrides/flags/FlagsFactory;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags$FlagState;->DISABLED:Lcom/android/launcher3/config/FeatureFlags$FlagState;

    const-string v1, "LAUNCHER_TEAMFOOD"

    invoke-static {v1, v0}, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mKeySet:Ljava/util/Set;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mRestartRequested:Z

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lc1/i;

    invoke-direct {v1, p0}, Lc1/i;-><init>(Lcom/android/launcher3/uioverrides/flags/FlagsFactory;)V

    const-string p0, "launcher"

    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public static a(Lcom/android/launcher3/uioverrides/flags/FlagsFactory;Z)V
    .locals 0

    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mRestartRequested:Z

    if-eqz p0, :cond_0

    if-nez p1, :cond_0

    const-string p0, "FlagsFactory"

    const-string p1, "Restart requested, killing process"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_0
    return-void
.end method

.method public static b(Lcom/android/launcher3/uioverrides/flags/FlagsFactory;Landroid/provider/DeviceConfig$Properties;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mKeySet:Ljava/util/Set;

    invoke-static {p1, v0}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mRestartRequested:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Flag changed, scheduling restart"

    const-string v0, "FlagsFactory"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mRestartRequested:Z

    sget-object p1, Lcom/android/launcher3/util/ScreenOnTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/util/ScreenOnTracker;

    invoke-virtual {p1}, Lcom/android/launcher3/util/ScreenOnTracker;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lc1/j;

    invoke-direct {v0, p0}, Lc1/j;-><init>(Lcom/android/launcher3/uioverrides/flags/FlagsFactory;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/ScreenOnTracker;->addListener(Lcom/android/launcher3/util/ScreenOnTracker$ScreenOnListener;)V

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mRestartRequested:Z

    if-eqz p0, :cond_2

    const-string p0, "Restart requested, killing process"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static getDebugFlag(Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;
    .locals 2

    new-instance v0, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags$FlagState;->ENABLED:Lcom/android/launcher3/config/FeatureFlags$FlagState;

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-direct {v0, p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;-><init>(Z)V

    return-object v0
.end method

.method public static getIntFlag()Lcom/android/launcher3/config/FeatureFlags$IntFlag;
    .locals 4

    sget-object v0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->INSTANCE:Lcom/android/launcher3/uioverrides/flags/FlagsFactory;

    iget-object v0, v0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mKeySet:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    const-string v1, "qsb_voice_icon_type"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/android/launcher3/config/FeatureFlags$IntFlag;

    const-string v2, "launcher"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/config/FeatureFlags$IntFlag;-><init>(I)V

    return-object v0
.end method

.method public static getReleaseFlag(Ljava/lang/String;Lcom/android/launcher3/config/FeatureFlags$FlagState;)Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;
    .locals 1

    sget-object v0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->INSTANCE:Lcom/android/launcher3/uioverrides/flags/FlagsFactory;

    iget-object v0, v0, Lcom/android/launcher3/uioverrides/flags/FlagsFactory;->mKeySet:Ljava/util/Set;

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags$FlagState;->ENABLED:Lcom/android/launcher3/config/FeatureFlags$FlagState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "launcher"

    invoke-static {v0, p0, p1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    new-instance p1, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-direct {p1, p0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;-><init>(Z)V

    return-object p1
.end method
